<?php

namespace App\Controller;

use App\Entity\Product;
use App\Service\UrlBuilder;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Serializer\Encoder\JsonEncoder;
use Symfony\Component\Serializer\Encoder\XmlEncoder;
use Symfony\Component\Serializer\Normalizer\DateTimeNormalizer;
use Symfony\Component\Serializer\Normalizer\ObjectNormalizer;
use Symfony\Component\Serializer\Serializer;
use Symfony\Component\Validator\Validation;
use Symfony\Component\Validator\Validator\ValidatorInterface;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\PropertyInfo\Extractor\ReflectionExtractor;
use Symfony\Component\Serializer\Normalizer\GetSetMethodNormalizer;
use Symfony\Component\Serializer\Normalizer\ArrayDenormalizer;

class ProductController extends AbstractController
{
    /** @var \Doctrine\Persistence\ObjectManager $em */
    private $em;

    /** @var \Doctrine\Persistence\ObjectRepository $productRepository */
    private $productRepository;

    /** @var App\Service\UrlBuilder $urlBuilder */
    private $urlBuilder;

    public function __construct(ManagerRegistry $doctrine, UrlBuilder $urlBuilder)
    {
        $this->em = $doctrine->getManager();
        $this->productRepository = $doctrine->getRepository(Product::class);
        $this->urlBuilder = $urlBuilder;
    }

    #[Route('/product', name: 'app_product')]
    public function index(): Response
    {
/*
        $arData = [
            'name' => 'Test',
            'lastname' => 'Soname',
            'email' => 'none@none.no',
            'age' => 30,
            'tags' => [
                'music',
                'electronic',
                'art'
            ]
        ];

        $validator = Validation::createValidator();

        $constraint = new Assert\Collection([
            'name' => new Assert\Length(['min' => 3]),
            'lastname' => new Assert\Length(['min' => 4]),
            'email' => new Assert\Email(),
            'age' => new Assert\Positive(),
            'tags' => new Assert\NotBlank(),
        ]);

        $errors = $validator->validate($arData, $constraint);

        dd($errors);
*/
        return $this->render('product/index.html.twig', [
            'controller_name' => 'ProductController',
            //'products' => $this->productRepository->findAll(),
            'products' => $this->productRepository->findBy(['status' => 1]),
        ]);
    }

    #[Route('/product/add', name: 'app_product_add')]
    public function add(ValidatorInterface $validator): Response
    {
        $number = (int)rand(1, 100);

        $product = new Product();
        //$product->setName('Test Product ' . $number);
        $product->setDescription('Product description for product ' . $number);
        $product->setPrice(rand(1, 2000));
        $product->setStatus(1);

        $errors = $validator->validate($product);

        if(empty($errors))
        {
            $this->em->persist($product);
            $this->em->flush();
        }

        $form = $this->createFormBuilder()
            ->add('title', TextType::class)
            ->add('description', TextareaType::class)
            ->add('submit', SubmitType::class, ['label' => 'Save new product'])
            ->getForm();

        return $this->render('product/add.html.twig', [
            'controller_name' => 'ProductController',
            'function_name' => 'add',
            'errors' => $errors,
            'form' => $form->createView(),
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

        if($product && $product->getStatus())
        {
            $encoders = [new JsonEncoder(), new XmlEncoder()];
            //$normalizers = [new ObjectNormalizer()];
            $normalizers = [new DateTimeNormalizer([
                //DateTimeNormalizer::FORMAT_KEY => "d/m/Y",
                ]),
                new ObjectNormalizer(
                    null,
                    null,
                    null,
                    new ReflectionExtractor()
                ),
                new GetSetMethodNormalizer(),
                new ArrayDenormalizer(),
            ];
            $serializator = new Serializer($normalizers, $encoders);

            $jsonProduct = $serializator->serialize($product, 'json');
            $xmlProduct = $serializator->serialize($product, 'xml');

            return $this->render('product/item.html.twig', [
                'controller_name' => 'ProductController',
                'function_name' => 'item',
                'product' => $product,
                'jsonProduct' => $jsonProduct,
                'xmlProduct' => $xmlProduct,
                'jsonDeserialize' => $serializator->deserialize($jsonProduct, Product::class, 'json'),
                'xmlDeserialize' => $serializator->deserialize($xmlProduct, Product::class, 'xml'),
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

    /**
     * @Route("/product/{id}/update",
     *     name="app_product_update",
     *     requirements={"id"="\d+"},
     *     methods={"GET","HEAD"})
     */
    public function update(int $id): Response
    {
        /** @var Product $product */
        $product = $this->productRepository->find($id);

        if($product)
        {
            $validator = Validation::createValidator();
            $constraint = new Assert\Email();

            $input = 'example';

            $errors = $validator->validate($input, $constraint);

            if($errors)
            {
                return new Response($errors);
            } else
            {
                $number = (int)rand(1, 100);

                $product->setName('Updated product ' . $number);
                $product->setDescription('Updated description for product ' . $number);
                $product->setPrice(rand(1, 2000));
                $product->setStatus(!$product->getStatus());

                //$this->em->persist($product);
                $this->em->flush();

                return $this->redirectToRoute('app_product_item', ['id' => $id]);
            }
        } else
        {
            //throw $this->createNotFoundException('Product not found');

            return $this->render('product/not_found.html.twig', [
                'controller_name' => 'ProductController',
                'function_name' => 'item',
            ]);
        }
    }

    /**
     * @Route("/product/{id}/remove",
     *     name="app_product_remove",
     *     requirements={"id"="\d+"},
     *     methods={"GET","HEAD"})
     */
    public function remove(int $id): Response
    {
        /** @var Product $product */
        $product = $this->productRepository->find($id);

        if($product)
        {
            $this->em->remove($product);
            $this->em->flush();

            return $this->render('product/remove.html.twig', [
                'controller_name' => 'ProductController',
                'function_name' => 'remove',
                'product' => $product,
                'link' => $this->urlBuilder->getFullUrl($this->generateUrl('app_product'))
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
