<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/test", name="app_test_")
 */
class TestController extends AbstractController
{
    /**
     * @Route("/", name="index")
     */
    public function index(): Response
    {
        return $this->render('test/index.html.twig', [
            'controller_name' => 'TestController',
        ]);
    }

    /**
     * @Route("/new", name="new")
     */
    public function new(): Response
    {
        return $this->render('test/new.html.twig', [
            'controller_name' => 'TestController',
            'action_name' => 'New',
        ]);
    }

    /**
     * @Route("/{id}",
     *     name="item",
     *     requirements={"id"="\d+"},
     *     methods={"GET","HEAD"},
     *     defaults={"id"="1"})
     */
    public function item(int $id, Request $request): Response
    {
        return $this->render('test/item.html.twig', [
            'controller_name' => 'TestController',
            'action_name' => 'Item',
            'id' => $id,
            'route_name' => $request->attributes->get('_route'),
            'params' => $request->attributes->get('_route_params'),
            'params_all' => $request->attributes->all(),
            'query_all' => $request->query->all(),
            'url' => $request->server->get('REQUEST_SCHEME') . '://' . $request->server->get('HTTP_HOST') . $this->generateUrl('app_test_item', ['id' => 34, 'filter_name' => 'trust me', 'order' => 'ASC']),
        ]);
    }
}
