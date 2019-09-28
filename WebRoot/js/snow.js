// 可视窗口的宽度
var y = document.documentElement.clientHeight - 80;
// 可视窗口的高度
var x = document.documentElement.clientWidth;
//动画效果的速度
var speed = 10;
// 创建div的速度
var creatSpeed = 3000;
// 删除已经落下指定高度的div的删除速度
var delSpeed = 500;

// 产生随机数的方法
function random(lower, upper) {
	return Math.floor(Math.random() * (upper - lower)) + lower;
}

$(document).ready(function() {
	// 每个div的背景图片
	var picNum;
	// 随机产生div的left的距离
	var leftX;
	// 需要删除的div元素集合
	var delDiv;
	// 需要删除的div的html元素集合的长度
	var delDivLen;
	// 创建的div的行内样式字符串 
	var styStr;
	// 向head里添加的css样式
	var str = " @keyframes move {from{transform: rotate(0deg);top:0px;} to{transform: rotate(360deg);top:" + y + "px;} }" +
		"\t.newyear{animation:move " + speed + "s infinite linear;}";
	// 创建style标签向head里添加
	var $style = $("<style type=\"text/css\"></style>");
	$style.html(str);
	$("head").append($style);

	setInterval(function() {
		// 产生随机数来确定照片的下标
		picNum = random(1, 6);
		// 随机生成div的left的值
		leftX = random(0, x);
		styStr = "background:url('imgs/" + picNum + ".png') no-repeat;background-size: 100%;width: 20px;height: 20px;" +
			"position: absolute;top: -10px;left:" + leftX + "px";

		var $div = $("<div class = 'newyear'></div>");

		$div.attr("style", styStr);
		$("body").append($div);
	}, creatSpeed);

	setInterval(function() {
		delDiv = document.getElementsByClassName("newyear");
		delDivLen = delDiv.length;
		for(var i = 0; i < delDivLen; i++) {
			if(parseInt(delDiv[i].style.top) >= y) {
				delDiv[i].remove();
			}

		}

	}, delSpeed);
});