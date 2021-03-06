<?php

namespace app\user\controller;

use app\user\container\Component;
use app\user\container\Definition;
use app\user\model\Reset as ResetModel;
use app\user\logic\Reset as ResetLogic;
use app\auth\controller\User;
use liugene\linkrest\Restful;

class Reset
{

    public function __construct()
    {
        Component::getInstance()
            ->bind((new Definition())
                ->setAlias('reset')
                ->setIsSingleton(true)
                ->setCallBack(function(){
                    $team = new ResetLogic();
                    $team->set('reset',function(){
                        return new ResetModel();
                    });
                    $team->set('user',function(){
                        return new User();
                    });
                    return $team;
                })
            );
    }

    public function edit()
    {
        $data = Component::getInstance()->get('reset')->edit();
        Restful::request()
            ->setData(['code' => 1, 'msg' => $data])
            ->send();
    }

}
