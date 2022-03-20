<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;
use Doctrine\Persistence\ObjectManager;

class BlogPost extends Fixture implements DependentFixtureInterface
{
    public function load(ObjectManager $manager): void
    {
        $post = new \App\Entity\BlogPost();
        $post->setTitle('Linux first steps');
        $post->setDescription('Linux for beginners.');
        $post->setStatus(true);
        $post->setCategory($this->getReference(BlogCategory::CATEGORY_OS));
        $manager->persist($post);

        $post = new \App\Entity\BlogPost();
        $post->setTitle('Ubuntu new release');
        $post->setDescription('Info about Ubuntu20.');
        $post->setStatus(true);
        $post->setCategory($this->getReference(BlogCategory::CATEGORY_OS));
        $manager->persist($post);

        $post = new \App\Entity\BlogPost();
        $post->setTitle('C# new features');
        $post->setDescription('About new features in C#.');
        $post->setStatus(true);
        $post->setCategory($this->getReference(BlogCategory::CATEGORY_PL));
        $manager->persist($post);

        $post = new \App\Entity\BlogPost();
        $post->setTitle('Symfony 5 first steps');
        $post->setDescription('Here is a new version of Symfony PHP framework.');
        $post->setStatus(true);
        $post->setCategory($this->getReference(BlogCategory::CATEGORY_PL));
        $manager->persist($post);

        $post = new \App\Entity\BlogPost();
        $post->setTitle('PostgreSQL for beginners');
        $post->setDescription('Let\'s start with PostgreSQL relation database.');
        $post->setStatus(true);
        $manager->persist($post);

        $manager->flush();
    }

    public function getDependencies()
    {
        // TODO: Implement getDependencies() method.
        return [
            BlogCategory::class
        ];
    }
}
