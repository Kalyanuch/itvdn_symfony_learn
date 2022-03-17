<?php

namespace App\Controller;

use App\Entity\Product;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ProductController extends AbstractController
{
    private $em;

    private $productRepository;

    public function __construct(ManagerRegistry $doctrine)
    {
        $this->em = $doctrine->getManager();
        $this->productRepository = $doctrine->getRepository(Product::class);
    }

    #[Route('/product', name: 'app_product')]
    public function index(): Response
    {
        return $this->render('product/index.html.twig', [
            'controller_name' => 'ProductController',
            'products' => $this->productRepository->findAll(),
        ]);
    }

    #[Route('/product/add', name: 'app_product_add')]
    public function add(ManagerRegistry $doctrine): Response
    {
        $number = (int)rand(1, 100);

        $product = new Product();
        $product->setName('Test Product ' . $number);
        $product->setDescription('Product description for product ' . $number);
        $product->setPrice(rand(1, 2000));
        $product->setStatus(1);

        $this->em->persist($product);
        $this->em->flush();

        return $this->render('product/add.html.twig', [
            'controller_name' => 'ProductController',
            'function_name' => 'add'
        ]);
    }

    /**
     * @Route("/product/{id}",
     *     name="app_product_item",
     *     requirements={"id"="\d+"},
     *     methods={"GET","HEAD"},
     *     defaults={"id"="1"})
     */
    public function item(int $id): Response
    {
        $product = $this->productRepository->find($id);

        if($product)
        {
            return $this->render('product/item.html.twig', [
                'controller_name' => 'ProductController',
                'function_name' => 'item',
                'product' => $product,
            ]);
        } else
        {
            //throw $this->createNotFoundException('Product not found');

            return $this->render('product/not_found.html.twig', [
                'controller_name' => 'ProductController',
                'function_name' => 'item',
            ]);
        }
    }
}
