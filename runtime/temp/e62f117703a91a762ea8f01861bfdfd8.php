<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:68:"C:\Object\zuanqun\web/../app/user\view\default\channel\template.html";i:1517803191;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>推广文案</title>
    <link rel="stylesheet" href="__USER_CSS__/common.css">
    <link rel="stylesheet" href="__COM__/layui/css/layui.css">
    <link rel="stylesheet" href="__COM__/form.css">
</head>
<body>

<div class="link-body">
    <div class="link-item">
        <div class="layui-fluid">
            <div class="layui-card-header">添加文案</div>
            <div class="layui-card-body">
                <form class="layui-form" action="" lay-filter="component-form-group">

                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <input type="text" id="ad_name" name="ad_name" placeholder="请输入推广位名称" class="layui-input title">
                        </div>
                    </div>

                    <div class="layui-form-item layui-form-text">
                        <div class="layui-input-block">
                            <textarea id="channel" name="channel" class="layui-textarea title" placeholder="文案模板"></textarea>
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <div class="link-footer">
                                <a class="layui-btn" id="push">立即提交</a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="layui-fluid link-box">
            <div class="layui-card-header">推广文案管理</div>
            <div class="layui-card-body">
                <div class="link-info-box">
                    <div class="link-info">
                        <p>
                            要正常使用CMS需要在此下载index.php文件并上传到您自己的服务器
                        </p>
                    </div>
                    <div class="link-down">

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>

<script src="__COM__/jquery.js"></script>
<script src="__COM__/util.js"></script>
<script src="__COM__/layer/layer.js"></script>

<script>
    $(document).on('click','#push',function(){
        if($('#ad_name').val() == ''){
            layer.msg('推广位名称不能为空!');
            return false;
        }
        if($('#channel').val() == ''){
            layer.msg('文案模板不能为空！');
            return false;
        }
        var data = $('#form').serialize();
        request("<?php echo url('user/Reset/edit'); ?>",data,function(res){
            if (res.code == 1) {
                console.log(res);
                layer.msg(res.msg, {icon: res.code});
//                console.log(document.cookie);
//                redirect("<?php echo url('user/user/index'); ?>");
            } else {
                layer.msg(res.msg, {icon: res.code});
            }
        });
    });
</script>
</html>