<?php
namespace App\Service;

use Symfony\Component\HttpFoundation\RequestStack;

class UrlBuilder
{
    private $requestStack;
    private $request;

    public function __construct(RequestStack $requestStack)
    {
        $this->requestStack = $requestStack;
        $this->request = $this->requestStack->getCurrentRequest();
    }

    public function getFullUrl(string $url): string
    {
        if(!empty($url))
            return $this->request->server->get('REQUEST_SCHEME')
                . '://' . $this->request->server->get('HTTP_HOST') . $url;

        return '';
    }
}