<?php
namespace App\Twig;

use Twig\Extension\AbstractExtension;
use Twig\TwigFilter;

class AppExtension extends AbstractExtension
{
    public function getFilters()
    {
        return [
            new TwigFilter('ko_customize_string', [$this, 'koCustomizeString']),
        ];
    }

    public function koCustomizeString($message)
    {
        return $message . ' this is customized string using personal Twig filter';
    }
}