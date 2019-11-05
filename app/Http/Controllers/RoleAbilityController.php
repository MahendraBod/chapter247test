<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Bouncer;

class RoleAbilityController extends Controller
{
    public function allowAdminEverything(){
        Bouncer::allow('administrator')->everything();
        $user = \App\User::find(1);
        $user->assign('administrator');
    }

    public function allowUserManagerAbility(){
        Bouncer::allow('user-manager')->to('manage-users');
        $user = \App\User::find(2);
        $user->assign('user-manager');
    }

    public function allowShopManagerAbility(){
        Bouncer::allow('shop-manager')->to('manage-shops');
        $user = \App\User::find(3);
        $user->assign('shop-manager');
    }
}
