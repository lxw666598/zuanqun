<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:63:"C:\Object\zuanqun\web/../app/index\view\default\help\index.html";i:1518067830;s:59:"C:\Object\zuanqun\app\index\view\default\common\header.html";i:1517531928;s:59:"C:\Object\zuanqun\app\index\view\default\common\footer.html";i:1518137167;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>帮助中心-钻群联盟</title>
    <link rel="stylesheet" href="__CSS__/common.css">
    <link rel="stylesheet" href="__CSS__/header.css">
    <link rel="stylesheet" href="__OPEN_CSS__/source.css">
    <link rel="stylesheet" href="__CSS__/help.css">
    <link rel="stylesheet" href="__CSS__/footer.css">
    <link rel="stylesheet" href="__COM__/layui/css/layui.css">
</head>
<body>

<div class="body">
    <!-- header -->
    <div class="header">
    <div class="header-inner">
        <div class="header-container">
            <div class="nav-logo">
                <img src="__IMG__/logo.png" alt="钻群，一个专业的内容导购联盟" width="212" height="42">
            </div>
            <div class="nav-menu">
                <div class="nav-menu-box">
                    <div class="nav-menu-inner">
                        <ul class="menu">
                            <li class="menu-item"><a href="/">首页</a></li>
                            <li class="menu-item"><a href="<?php echo url('hot/index/index'); ?>" target="_blank">选品库</a></li>
                            <li class="menu-item drop-menu">
                                <a href="javascript:;">导购产品</a>
                            </li>
                            <li class="menu-item"><a href="<?php echo url('open/index/index'); ?>" target="_blank">开放平台</a></li>
                            <li class="menu-item">
                                <a href="<?php echo url('seller/index/index'); ?>" target="_blank">钻群号</a>
                            </li>
                            <li class="menu-item"><a href="<?php echo url('index/help/index'); ?>">帮助中心</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="nav-account">
                <a href="<?php echo url('auth/login/index'); ?>" target="_blank" class="nav-auth">登入</a>
                <a href="<?php echo url('auth/register/index'); ?>" target="_blank" class="nav-auth">注册</a>
            </div>
        </div>
    </div>
</div>
<div class="menu-drop" style="display: none;">
    <div class="drop-list">
        <div class="list-item">
            <dt>网站cms解决方案</dt>
            <dd class="list-item-img"></dd>
            <dd class="list-item-desc">钻群CMS淘客系统</dd>
        </div>
        <div class="list-item">
            <dt>微信公众号解决方案</dt>
            <dd class="list-item-img"></dd>
            <dd class="list-item-desc">公众号淘客系统</dd>
        </div>
        <div class="list-item">
            <dt>小程序解决方案</dt>
            <dd class="list-item-img"></dd>
            <dd class="list-item-desc">小程序淘客系统</dd>
        </div>
        <div class="list-item">
            <dt>浏览器解决方案</dt>
            <dd class="list-item-img"></dd>
            <dd class="list-item-desc">好助手淘客系统</dd>
        </div>
        <div class="list-item">
            <dt>APP解决方案</dt>
            <dd class="list-item-img"></dd>
            <dd class="list-item-desc">钻群app淘客系统</dd>
        </div>
    </div>
</div>

<script src="__COM__/jquery.js"></script>

<script>
    $(document).on('mouseenter','.drop-menu',function () {
        $('.menu-drop').css('display','block');
    });
    $(document).on('mouseleave','.drop-menu',function () {
        $('.menu-drop').hover(function () {
            $('.menu-drop').css('display','block');
        },
        function () {
            $('.menu-drop').css('display','none');
        });
        $('.menu-drop').css('display','none');
    });
</script>

    <!-- banner -->
    <div class="banner">
        <div class="banner-bg">
            把常见问题汇总下来，希望对您有帮助<br>
            一起努力，迟早会突破...
        </div>
    </div>

    <!-- center -->
    <div class="center">
        <div class="col-side">
            <div class="side-menu">
                <dl>
                    <dd><img src="http://static.zuanqun.com:8080/index/default/img/help.png"></dd>
                    <?php if(is_array($title) || $title instanceof \think\Collection || $title instanceof \think\Paginator): $i = 0; $__LIST__ = $title;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$t): $mod = ($i % 2 );++$i;?>
                    <a href="<?php echo url('index/help/index',['cid' => $t['id']]); ?>">
                    <dt><?php echo $t['cat_name']; ?></dt>
                    </a>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                </dl>
            </div>
        </div>
        <div class="col-main">
            <?php if(is_array($view) || $view instanceof \think\Collection || $view instanceof \think\Paginator): $i = 0; $__LIST__ = $view;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
            <div class="col-main-container">
                <a href="<?php echo url('index/help/item',['id' => $vo['id']]); ?>" target="_blank">
                <div class="title"><?php echo $vo['help_title']; ?></div>
                </a>
                <p><?php echo $vo['s_content']; ?></p>
            </div>
            <?php endforeach; endif; else: echo "" ;endif; ?>
        </div>
    </div>



    <!-- footer -->
    <div class="footer">
    <div class="footer-container">
        <div class="footer-top">
            <div class="footer-col-3">
                <div class="footer-col-link">
                    <div class="footer-col-item">
                        <dl>
                            <dt>淘客解决方案</dt>
                            <dd><a href="/">网站CMS应用</a></dd>
                            <dd><a href="/">微信公众号系统</a></dd>
                            <dd><a href="/">淘客小程序</a></dd>
                            <dd><a href="/">移动App</a></dd>
                            <dd><a href="/">高级网站CMS应用</a></dd>
                            <dd><a href="/">精品单页</a></dd>
                        </dl>
                    </div>
                    <div class="footer-col-item">
                        <dl>
                            <dt>钻群产品服务</dt>
                            <dd><a href="<?php echo url('open/index/index'); ?>" target="_blank">开放平台</a></dd>
                            <dd><a href="<?php echo url('mp/index/index'); ?>" target="_blank">钻群号</a></dd>
                            <dd><a href="<?php echo url('hot/index/index'); ?>" target="_blank">选品库</a></dd>
                            <dd><a href="/">应用市场</a></dd>
                            <dd><a href="/">开发平台</a></dd>
                            <dd><a href="/">网站联盟</a></dd>
                            <dd><a href="/">黑名单</a></dd>
                            <dd><a href="/">api接口</a></dd>
                            <dd><a href="/">自助转链工具</a></dd>
                            <dd><a href="/">群发机器人</a></dd>
                        </dl>
                    </div>
                    <div class="footer-col-item">
                        <dl>
                            <dt>帮助/教程中心</dt>
                            <dd><a href="/">网站cms设置</a></dd>
                            <dd><a href="/">淘客app生成</a></dd>
                            <dd><a href="/">小程序使用</a></dd>
                            <dd><a href="/">微信公众号教程</a></dd>
                            <dd><a href="/">常见问题</a></dd>
                            <dd><a href="/">入门指南</a></dd>
                            <dd><a href="/">客服中心</a></dd>
                            <dd><a href="/">api使用教程</a></dd>
                        </dl>
                    </div>
                </div>
            </div>
            <div class="footer-col-1">
                <a href="/" class="footer-logo">
                    <img alt="七牛云" src="http://static.zuanqun.com/index/default/img/logo.png">
                </a>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="verify">
                <a target="_blank" rel="noopener" href="http://www.dca.org.cn/" class="verify-logo" title="可信云"></a>
                <a target="_blank" rel="noopener" href="#" class="iso-logo" title="iso"></a>
            </div>
            <div class="links">
                <ul>
                    <li><div class="copyright">© 2018 钻群联盟</div></li>
                    <li><a href="/user-agreement">用户协议</a></li>
                    <li><a href="/sla-kodo">SLA</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
</div>


</body>
</html>