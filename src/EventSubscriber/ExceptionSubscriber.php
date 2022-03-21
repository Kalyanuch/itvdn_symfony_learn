<?php

namespace App\EventSubscriber;

use Symfony\Component\EventDispatcher\EventSubscriberInterface;
use Symfony\Component\HttpKernel\Event\ExceptionEvent;
use Symfony\Component\HttpKernel\KernelEvents;

class ExceptionSubscriber implements EventSubscriberInterface
{
    public static function getSubscribedEvents()
    {
        return [
            KernelEvents::EXCEPTION => [
                ['processException', 10],
                ['logException', 0],
                ['notifyException', -10]
            ]
        ];
    }

    public function processException(ExceptionEvent $event)
    {
        var_dump('Process exception');
    }

    public function logException(ExceptionEvent $event)
    {
        var_dump('Log exception');
    }

    public function notifyException(ExceptionEvent $event)
    {
        var_dump('Notify exception');
    }
}