<?php

namespace App\Controller;

use App\Entity\BlogPost;
use App\Form\BlogPostType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\RequestStack;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AboutController extends AbstractController
{
    #[Route('/about', name: 'app_about')]
    public function index(RequestStack $request): Response
    {
        $post = new BlogPost();

        $form = $this->createForm(BlogPostType::class);

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid())
        {
            $post = $form->getData();

            return $this->redirectToRoute('about');
        }

        return $this->render('about/index.html.twig', [
            'controller_name' => 'AboutController',
            //'form' => $form->createView(),
        ]);
    }
}
