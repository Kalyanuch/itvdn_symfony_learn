<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class BlogCategory extends Fixture
{
    const CATEGORY_OS = 'category.OS';
    const CATEGORY_PL = 'category.PL';

    public function load(ObjectManager $manager): void
    {
        $category = new \App\Entity\BlogCategory();
        $category->setName('Operating Systems');
        $category->setDescription('Some info about popular operating systems');
        $manager->persist($category);

        $this->addReference(self::CATEGORY_OS, $category);

        $category = new \App\Entity\BlogCategory();
        $category->setName('Programming Languages');
        $category->setDescription('Some info about popular programming languages');
        $manager->persist($category);

        $this->setReference(self::CATEGORY_PL, $category);

        $manager->flush();
    }
}
