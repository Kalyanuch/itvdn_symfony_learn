<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class TestController extends AbstractController
{
    /**
     * @Route("/test", name="app_test")
     */
    public function index(): Response
    {
        return $this->render('test/index.html.twig', [
            'controller_name' => 'TestController',
        ]);
    }

    /**
     * @Route("/test/new", name="app_test_new", )
     */
    public function new(): Response
    {
        return $this->render('test/new.html.twig', [
            'controller_name' => 'TestController',
            'action_name' => 'New',
        ]);
    }

    /**
     * @Route("/test/{id}", name="app_test_item", requirements={"id"="\d+"})
     */
    public function item(int $id, Request $request): Response
    {
        return $this->render('test/item.html.twig', [
            'controller_name' => 'TestController',
            'action_name' => 'Item',
            'id' => $id,
            'route_name' => $request->attributes->get('_route'),
            'params' => $request->attributes->get('_route_params'),
            'url' => $this->generateUrl('app_test_item', ['id' => 34, 'filter_name' => 'trust me', 'order' => 'ASC']),
        ]);
    }
}
