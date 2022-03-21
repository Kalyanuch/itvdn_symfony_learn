<?php

namespace App\Tests;

use App\Entity\Product;
use Doctrine\Persistence\ObjectManager;
use PHPUnit\Framework\TestCase;

class ProductTest extends TestCase
{
    public function testSomething(): void
    {
        $a = 1;
        $b = 2;
        $c = $a + $b;

        $this->assertEquals(3, $c);
    }

    public function testEntity(): void
    {
        $em = $this->createMock(ObjectManager::class);

        $product = new Product();
        $product->setStatus(true);
        $product->setPrice(23);
        $product->setName('Unit test product');
        $product->setDescription('Unit test description');

        $em->persist($product);
        $em->flush();

        $this->assertSame('Unit test product', $product->getName());
    }

    /**
     * @dataProvider numbersProvider
     */
    public function testWithDataProvider($a, $b, $result)
    {
        $this->assertSame($result, $a + $b);
    }

    public function numbersProvider()
    {
        return [
            [3, 3, 6],
            [12, 13, 25],
            [9, 6, 15]
        ];
    }
}
