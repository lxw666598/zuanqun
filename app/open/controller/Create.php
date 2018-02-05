<?php

namespace app\open\controller;

use app\open\container\Component;
use app\open\container\Definition;
use app\open\model\Create as CreateModel;
use app\open\logic\Create as CreateLogic;
use liugene\linkrest\Restful;
use app\auth\controller\AppKey;

class Create
{

    public function __construct()
    {
        Component::getInstance()
            ->bind((new Definition())
                ->setAlias('create')
                ->setIsSingleton(true)
                ->setCallBack(function(){
                    $create = new CreateLogic();
                    $create->set('create',function(){
                        return new CreateModel();
                    });
                    $create->set('app_key',function(){
                        return new AppKey();
                    });
                    return $create;
                })
            );
    }

    public function web()
    {
        $data = Component::getInstance()->get('create')->put();
        Restful::request()
            ->setData(['code' => 1, 'msg' => $data])
            ->send();
    }

    public function application()
    {
        Restful::request()
            ->setData(['code' => 0, 'msg' => '',  'count' => Component::getInstance()->get('create')->countApplication(), 'data' => Component::getInstance()->get('create')->select()])
            ->send();
    }

}