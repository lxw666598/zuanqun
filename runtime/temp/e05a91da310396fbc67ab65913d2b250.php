<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:80:"/Users/liujun/workspace/php/zuanqun/web/../app/open/view/default/auth/login.html";i:1516708550;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登入</title>
    <link rel="stylesheet" href="__OPEN_CSS__/common.css">
    <link rel="stylesheet" href="__OPEN_CSS__/auth.css">
</head>
<body>

<div class="op-login">
    <div class="auth-form">
        <fieldset class="auth-fieldset">
            <div class="auth-input">
                <span class="auth-input-box first">
                    <label class="auth-lable">登入</label>
                    <input type="text" placeholder="请填写登录邮箱" class="auth-input-text" name="account">
                </span>
                <span class="auth-input-box last">
                    <label class="auth-lable">密码</label>
                    <input type="password" placeholder="请填写登录邮箱" class="auth-input-text" name="account">
                </span>
            </div>

            <div class="auth-function">
                <a href="javascript:void(0);" id="forget" class="auth-forget">忘记密码</a>
            </div>

            <div class="auth-tool">
                <a href="javascript:void(0);" class="auth-btn_login" id="login">登录</a>
                <a href="<?php echo url('auth/register/index'); ?>" target="_blank" class="auth-btn_register" id="register">注册</a>
            </div>
        </fieldset>
    </div>
</div>

<div class="op-tip">
    <p>
        QQ号注册的老用户，<a href="javascript:;" id="o-login">点此登录</a>
    </p>
</div>

</body>
</html>