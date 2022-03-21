<?php

namespace App\EventListener;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpKernel\Event\ExceptionEvent;

class ExceptionListener
{
    public function onKernelException(ExceptionEvent $event)
    {
/*
        $exception = $event->getThrowable();

        $message = 'Error: ' . $exception->getCode() . ' ' . $exception->getMessage();

        $event->setResponse((new Response())->setContent($message));
*/
    }
}