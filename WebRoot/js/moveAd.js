$(document).ready(function(){
	var moveAdMain = document.getElementsByClassName('move-ad-main')[0];
	var moveAd = document.getElementsByClassName('move-ad')[0];
	
	/*获取广告条里面的图片*/
	var moveAdPic = document.getElementById('move-ad-main-pic');
	
	/*给图片设置宽度，图片的宽度等于它父级元素的高度*/
	moveAdPic.style.width = $(moveAdMain).css('height');
	
	/*设置广告条的右边距离父级的位置*/
	moveAdMain.style.right = "-" + $(moveAdMain).css('width');
	
	// 获取广告的父级宽
	var adFather =parseInt($(moveAd).css('width'));
	
	// 获取广告的宽
	var adWidth =parseInt($(moveAdMain).css('width'));
	
	// 获取广告的距离父级右边的位置
	var adRight ;
	
	// 每次移动的像素距离
	var constSpeed = 4;
	
	// 移动速度
	var moveSpeed = 90;
	
	var cssRightStr = "";
	
	// 设置定时器
	setInterval(function(){
		adRight = parseInt($(moveAdMain).css('right'));
		// 当广告刚好走完全程
		if(adRight >= adFather){	 
			cssRightStr = "-" + adWidth + "px" ;
			moveAdMain.style.right = cssRightStr;
		}else{
			adRight += constSpeed;
			cssRightStr = adRight + "px";
			moveAdMain.style.right = cssRightStr;
		}
		
	},moveSpeed);

})