$(document).ready(function () {
    // 检验用户名
    var regName = /\w{6,18}/g;

    //检验密码
    var regPwd = /(\w|[.]|[@]){6,20}/g;

    // 检验邮箱
    var regEamil = /^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/g;

    //检验手机号
    var regPhone = /^1[3|4|5|7|8][0-9]{9}$/g;

    //检验QQ号
    var regQQ = /^[1-9][0-9]{4,10}$/g;

    // 用户输入框失去焦点事件
    $('#name').blur(function () {

        var nameVlue = $(this).val();
        if (nameVlue == "") {
            $('#span-name').html("<img src='img/wrong.png'  width='15px' height='15px'>用户名必填!")
                .css({ "font-size": "14px", "color": 'red' });
        } else {
            //判断用户输入的用户名是否合格
            if (regName.test(nameVlue)) {      	
            	$.ajax({
                    type: "get",
                    url: "uNameCheck",
                    data:'name=' + $('#name').val(),
                    dataType: "json",
                    success: function (result) {
                        if (result== true || result== 'true') {
                        	
                            $('#span-name').html("<img src='img/wrong.png'  width='15px' height='15px'>用户名存在哦")
                            .css({ "font-size": "14px", "color": 'red' });
                            $('#sub').attr('disabled', 'disabled');
                            
                        } else {
                       
                        	 $('#span-name').html("<img src='img/success.png'  width='15px' height='15px'>");
                             $('#sub').removeAttr('disabled');
                        }
                    },
                    error: function () {
                        alert('用户名检验失败');
                    }
                });
                
      
            } else {
                $('#span-name').html("<img src='img/wrong.png'  width='15px' height='15px'>用户名不规范!")
                    .css({ "font-size": "14px", "color": 'red' });
                $('#sub').attr('disabled', 'disabled');
            }
        }

    });


    // 密码1框失去焦点事件
    $('#pwd1').blur(function () {

        var pwdValue1 = $(this).val();
        if (pwdValue1 == "") {
            $('#span-pwd1').html("<img src='img/wrong.png'  width='15px' height='15px'>密码必填!")
                .css({ "font-size": "14px", "color": 'red' });
        } else {
            // 检验用户输入的密码
            if (regPwd.test(pwdValue1)) {
                $('#span-pwd1').html("<img src='img/success.png'  width='15px' height='15px'>");
                $('#sub').removeAttr('disabled');
            } else {
                $('#span-pwd1').html("<img src='img/wrong.png'  width='15px' height='15px'>密码不规范!")
                    .css({ "font-size": "14px", "color": 'red' });
                $('#sub').attr('disabled', 'disabled');
            }
        }


    });


    // 密码2框失去焦点事件
    $('#pwd2').blur(function () {

        var p1 = $('#pwd1').val();
        var pwdValue2 = $(this).val();
        if (pwdValue2 == "") {
            $('#span-pwd2').html("<img src='img/wrong.png'  width='15px' height='15px'>密码必填!")
                .css({ "font-size": "14px", "color": 'red' });
        } else {
            // 检验用户输入的密码
            if (p1 == pwdValue2) {
                $('#span-pwd2').html("<img src='img/success.png'  width='15px' height='15px'>");
                $('#sub').removeAttr('disabled');
            } else {
            	$('#span-pwd2').html("<img src='img/wrong.png'  width='15px' height='15px'>两次密码不同!")
                        .css({ "font-size": "14px", "color": 'red' });
                $('#sub').attr('disabled', 'disabled');
            }
        }


    });


    // 邮箱失去焦点事件
    $('#email').blur(function () {

        var emailVlue = $(this).val();
        if (emailVlue == "") {
            $('#span-email').html("<img src='img/wrong.png'  width='15px' height='15px'>邮箱必填!")
                .css({ "font-size": "14px", "color": 'red' });
        } else {
            //判断用户输入的邮箱是否合格
            if (regEamil.test(emailVlue)) {
                $('#span-email').html("<img src='img/success.png'  width='15px' height='15px'>");
                $('#sub').removeAttr('disabled');
            } else {
                $('#span-email').html("<img src='img/wrong.png'  width='15px' height='15px'>邮箱不规范!")
                    .css({ "font-size": "14px", "color": 'red' });
                $('#sub').attr('disabled', 'disabled');
            }
        }


    });

    // 手机号失去焦点事件
    $('#phone').blur(function () {
        var phoneVlue = $(this).val();
        if (phoneVlue == "") {
            $('#span-phone').html("<img src='img/wrong.png'  width='15px' height='15px'>手机号必填!")
                .css({ "font-size": "14px", "color": 'red' });
        } else {
            //判断用户输入的手机号是否合格
            if (regPhone.test(phoneVlue)) {        	
            	$.ajax({
                    type: "get",
                    url: "uPhoneCheck",
                    data:'phone=' + $('#phone').val(),
                    dataType: "json",
                    success: function (result) {
                        if (result== true || result== 'true') {
                        	$('#span-phone').html("<img src='img/wrong.png'  width='15px' height='15px'>已被注册哦")
                            .css({ "font-size": "14px", "color": 'red' });
                            $('#sub').attr('disabled', 'disabled');
                        } else {
                        	
                        	$('#span-phone').html("<img src='img/success.png'  width='15px' height='15px'>");
                            $('#sub').removeAttr('disabled');
                        	
                            
                        }
                    },
                    error: function () {
                        alert('手机号检验失败');
                    }
                });
                
       
            } else {
                $('#span-phone').html("<img src='img/wrong.png'  width='15px' height='15px'>手机号不规范!")
                    .css({ "font-size": "14px", "color": 'red' });
                $('#sub').attr('disabled', 'disabled');
            }
        }
    });


    // QQ号失去焦点事件
    $('#qq').blur(function () {
        var qqVlue = $(this).val();
        if (qqVlue == "") {
            $('#span-qq').html("<img src='img/wrong.png'  width='15px' height='15px'>QQ号必填!")
                .css({ "font-size": "14px", "color": 'red' });
        } else {
            //判断用户输入的QQ号是否合格
            if (regQQ.test(qqVlue)) {
                $('#span-qq').html("<img src='img/success.png'  width='15px' height='15px'>");
                $('#sub').removeAttr('disabled');
            } else {
                $('#span-qq').html("<img src='img/wrong.png'  width='15px' height='15px'>QQ号不规范!")
                    .css({ "font-size": "14px", "color": 'red' });
                $('#sub').attr('disabled', 'disabled');
            }
        }
    });

    // "清空按钮"点击事件
    $('#res').click(function () {
        var flag = confirm("确认要清除吗？");
        if (flag) {
            $('#name').val("");
            $('#span-name').html("");
            
            $('#pwd1').val("");
            $('#span-pwd1').html("");
            
            $('#pwd2').val("");
            $('#span-pwd2').html("");
            
            $('#email').val("");
            $('#span-email').html("");
            
            
            $('#phone').val("");
            $('#span-phone').html("");
            
            $('#qq').val("");
            $('#span-qq').html("");
        }
    });  

});