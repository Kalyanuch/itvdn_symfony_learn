<?php

namespace App\Tests;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class ProductControllerTest extends WebTestCase
{
    public function testSomething(): void
    {
        $client = static::createClient();
        $crawler = $client->request('GET', '/product/1308');

        $this->assertResponseIsSuccessful();
        $this->assertSelectorTextContains('h3', 'Current product info:');
    }
}
