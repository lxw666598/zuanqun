<?php

// +----------------------------------------------------------------------
// |               京东api入口
// +----------------------------------------------------------------------

namespace liugene\jos\auth;
use liugene\jos\auth\request\ProfileRequest;

class Jos extends ProfileRequest
{

    //构造签名类对象
    private $_sign_object;

    //请求类对象
    private $_request_object;

    public function __construct()
    {
        if(!isset($this->_sign_object)){
            $this->_sign_object = new CreateSign();
            $this->_request_object = new Request();
        }
    }

    //执行入口
    public function execute($service)
    {
        $sys_params["app_key"] = $this->_app_key;
        $sys_params["format"] = $this->_format;
        $sys_params["v"] = $this->_v;
        $sys_params["method"] = $service->get_api_method_name();
        $sys_params["timestamp"] = date("Y-m-d H:i:s");
        //获取业务参数
        $api_params = $service->get_api_params();
        $this->_sign = $this->_sign_object->create(array_merge($sys_params,$api_params),$this->_access_token);
        $sys_params['sign'] = $this->_sign;
        $request_url = $this->_server_url . '?';
        $request_url .= $this->generate_url(array_merge($sys_params,$api_params));
        return $this->request($request_url);
    }

    //组装url
    public function generate_url($params)
    {
        $url = '';
        foreach($params as $k => $v)
        {
            $url .= "$k=" . urlencode($v) . '&';
        }
        return $url;
    }

    //请求api地址
    public function request($url)
    {
        return $this->_request_object->get($url);
    }

}
