<?php

namespace App\DataFixtures;

use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class UserFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        $user = new User();
        $user->setEmail('none@none.no');
        $user->setPassword('$2y$13$jDi6xaE5WsZVwMGh75xbcubbcjzO8DTDeA0ShSXaxE4Tjmh8Ei6T2');
        $user->setRoles(['ROLE_USER']);
        $manager->persist($user);

        $manager->flush();
    }
}
