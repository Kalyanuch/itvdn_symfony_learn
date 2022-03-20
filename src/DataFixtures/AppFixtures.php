<?php

namespace App\DataFixtures;

use App\Entity\Product;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        for($i = 0; $i < 100; $i++)
        {
            $number = (int)rand(1, 100);

            $product = new Product();
            $product->setStatus(1);
            $product->setPrice(rand(1, 2000));
            $product->setName('Product ' . $number);
            $product->setDescription('Description for product ' . $number);

            $manager->persist($product);
        }

        $manager->flush();
    }
}
