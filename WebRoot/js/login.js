// 生成随机验证码的字符62个
var codeStr = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
// 获取验证码
var verfity = document.getElementById('yz');
// 获取验证码的输入框
var inpVerfity = document.getElementById('verify');
// 获取用户输入框
var inpName = document.getElementById('userName');

// 生成随机数,包含上下限的值
function getRandom(min,max){
    min = Number(min);
    max = Number(max);
    if(isNaN(min)){
        min = 0;
    }else if(isNaN(max)){
        max = 61;
    }  
    if(min > max){     
        var temp = min;
        min = max;
        max = temp;
    }      
return Math.round(Math.random()*(max - min) + min);
}

// 验证码框的文字
function getCode(elem){
    var str = '';
    for(var i = 0; i < 4; i++){
        var ran = getRandom(0,61);
        str += codeStr.charAt(ran);
    }
    elem.innerHTML = str ;
}

// 验证码框点击
verfity.onclick = function(){
    getCode(verfity);
}

// 验证码框生成随机验证码
getCode(verfity);


$(document).ready(function(){
  
  $(inpVerfity).blur(function(){
   // 获取验证码
   var spanValue = $(verfity).text();
   // 创建正则表达式
   var reg = new RegExp(spanValue,'i');
   // 获取验证码输入框的值
   var inp =  $(this).val();  
   if(inp==""){

    $('#hint').html('请填写验证码！').css({"font-size":"14px","color":'red'});
    // 如果验证码是空的话，按钮禁用
    $('#login').attr('disabled','disabled');
   
    }else if(reg.test(inp)){

    $('#hint').html("成功！<img src='img/success.png'  width='20px' height='20px'>")
    .css({"font-size":"14px","color":'black'});
    // 如果验证码是空的话，按钮恢复
    $('#login').removeAttr('disabled'); 
  
    }else{

    $('#hint').html('验证码错误！').css({"font-size":"14px","color":'red'});
    // 如果验证码错误的话，按钮禁用
    $('#login').attr('disabled','disabled');
    
   }
  });
  
  
  $(inpName).blur(function(){
	  var n = $(this).val();
     if(n==""){
    	 
     }else{
    	 $.ajax({
             type: "get",
             url: "uNameCheck",
             data:'name=' + $(this).val(),
             dataType: "json",
             success: function (result) {
                 if (result== true || result== 'true') {  
                	 $('#span-name').html("<img src='img/success.png'  width='15px' height='15px'>");                  
                     $('#login').removeAttr('disabled'); 
                            	 
                 } else {
                	 $('#span-name').html("<img src='img/wrong.png'  width='15px' height='15px'>")
                     .css({ "font-size": "14px", "color": 'red' });
                     $('#login').attr('disabled','disabled');
                 }
             },
             error: function () {
                 alert('用户名检验失败');
             }
         });
     }

  });
  
  /*用户在输入密码时，清空验证码，只要密码框获取焦点时
   * 验证码框清空数据
   */
  $('#userPwd').focus(function(){
	  $('#verify').val("");
	  $('#hint').html("点击图片切换")
	    .css({"font-size":"12px","color":'#FFFFFF',"font-family": '宋体'});
  });
  
 

})
