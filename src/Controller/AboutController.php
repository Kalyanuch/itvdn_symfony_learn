<?php

namespace App\Controller;

use App\Form\BlogPostType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AboutController extends AbstractController
{
    #[Route('/about', name: 'app_about')]
    public function index(): Response
    {
        $form = $this->createForm(BlogPostType::class);

        return $this->render('about/index.html.twig', [
            'controller_name' => 'AboutController',
            //'form' => $form->createView(),
        ]);
    }
}
