<?php

namespace App\Tests;

use App\Entity\Product;
use Doctrine\ORM\EntityManager;
use Symfony\Bundle\FrameworkBundle\Test\KernelTestCase;

class FunctionalTest extends KernelTestCase
{
    /**
     * @var EntityManager
     */
    protected $em;

    protected function setUp(): void
    {
        $kernel = self::bootKernel();

        $this->em = $kernel->getContainer()->get('doctrine')->getManager();
    }

    public function testSearch()
    {
        $product = $this->em->getRepository(Product::class)->findOneBy(['price' => 444]);

        $this->assertSame(444.0, $product->getPrice());
    }

    protected function tearDown(): void
    {
        parent::tearDown();

        $this->em->close();
        $this->em = null;
    }
}
