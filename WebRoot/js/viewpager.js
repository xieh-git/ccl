$(document).ready(function() {

	/*获取装轮播图容器的宽高，在给图片设置宽高*/
	var xhVPImH = $('.xh-viewpager').css('height');
	var xhVPImW = $('.xh-viewpager').css('width');
	
	/*获取按钮*/
	var xhBtn1 = $('.xh-viewpager-btn-1');
	var xhBtn2 = $('.xh-viewpager-btn-2');
	var xhBtn3 = $('.xh-viewpager-btn-3');
	var xhBtn4 = $('.xh-viewpager-btn-4');
	var xhBtn5 = $('.xh-viewpager-btn-5');

	/*获取所有图片*/
	var xhImg = document.getElementsByClassName('xh-img');
	var xhImgNum = xhImg.length;
	
	/*图片容器*/
	$('.xh-viewpager-img').css({
		'height': xhVPImH,
		'width': (parseInt(xhVPImW) * xhImgNum) + 'px',
		'font-size': '0',
		'position': 'absolute',
		'left': '0'
	});

	/*所有图片*/
	$('#xh-viewpager-img1').css({
		'width': xhVPImW,
		'height': xhVPImH,
		'display': 'inline-block'
	});
	$('#xh-viewpager-img2').css({
		'width': xhVPImW,
		'height': xhVPImH,
		'display': 'inline-block'
	});
	$('#xh-viewpager-img3').css({
		'width': xhVPImW,
		'height': xhVPImH,
		'display': 'inline-block'
	});
	$('#xh-viewpager-img4').css({
		'width': xhVPImW,
		'height': xhVPImH,
		'display': 'inline-block'
	});
	$('#xh-viewpager-img5').css({
		'width': xhVPImW,
		'height': xhVPImH,
		'display': 'inline-block'
	});
	$('#xh-viewpager-img6').css({
		'width': xhVPImW,
		'height': xhVPImH,
		'display': 'inline-block'
	});

	/*定时器*/
	var xhViewpagerSpeed = 3000;
	
	/*完成动画时间*/
	var xhAniSpeed = 1000;
	
	/*获取容器的左边距离*/
	var xhViewpagerLeft;
	
	/*获取图片的宽度*/
	var xhImgW = parseInt(xhVPImW);

	/*获取轮播图走完的总距离*/
	var xhImgRightTotal = (xhImgNum - 1) * xhImgW;
	
	/*获取当前按钮下标*/
	var xhBtnIndex;

	/*按钮选中时候的样式*/
	var xhBtnCSSCurr = {
		'display': 'inline-block',
		'width': '13px',
		'height': '13px',
		'background-color': '#f40',
		'border-radius': '50%',
		'cursor': 'pointer',
		'margin-left': '21px',
		'margin-top': '7px'
	}

	/*按钮没有被选中的样式*/
	var xhBtnCSS = {
		'display': 'inline-block',
		'width': '10px',
		'height': '10px',
		'background-color': 'gray',
		'border-radius': '50%',
		'cursor': 'pointer',
		'margin-left': '21px',
		'margin-top': '7px'
	}
	
	/*第一个按钮*/
	$('.xh-viewpager-btn-1').click(function(){
			$('.xh-viewpager-img').stop().animate({
				left:'0px'
			}, 500);
			$("div[data='1']").css(xhBtnCSSCurr);
			$("div[data='2']").css(xhBtnCSS);
			$("div[data='3']").css(xhBtnCSS);
			$("div[data='4']").css(xhBtnCSS);
			$("div[data='5']").css(xhBtnCSS);
		
	});
	
	/*第二个按钮*/
	$('.xh-viewpager-btn-2').click(function(){
			$('.xh-viewpager-img').stop().animate({
				left:'-' + parseInt($(this).attr('data')-1)*xhImgW + 'px'
			}, 500);
			$("div[data='2']").css(xhBtnCSSCurr);
			$("div[data='1']").css(xhBtnCSS);
			$("div[data='3']").css(xhBtnCSS);
			$("div[data='4']").css(xhBtnCSS);
			$("div[data='5']").css(xhBtnCSS);
		
	});
	
	/*第三个按钮*/
	$('.xh-viewpager-btn-3').click(function(){
			$('.xh-viewpager-img').stop().animate({
				left:'-' + parseInt($(this).attr('data')-1)*xhImgW + 'px'
			}, 500);
			$("div[data='3']").css(xhBtnCSSCurr);
			$("div[data='1']").css(xhBtnCSS);
			$("div[data='2']").css(xhBtnCSS);
			$("div[data='4']").css(xhBtnCSS);
			$("div[data='5']").css(xhBtnCSS);
		
	});
	
	/*第四个按钮*/
	$('.xh-viewpager-btn-4').click(function(){
			$('.xh-viewpager-img').stop().animate({
				left:'-' + parseInt($(this).attr('data')-1)*xhImgW + 'px'
			}, 500);
			$("div[data='4']").css(xhBtnCSSCurr);
			$("div[data='1']").css(xhBtnCSS);
			$("div[data='2']").css(xhBtnCSS);
			$("div[data='3']").css(xhBtnCSS);
			$("div[data='5']").css(xhBtnCSS);
		
	});
	
	/*第五个按钮*/
	$('.xh-viewpager-btn-5').click(function(){
			$('.xh-viewpager-img').stop().animate({
				left:'-' + parseInt($(this).attr('data')-1)*xhImgW + 'px'
			}, 500);
			$("div[data='5']").css(xhBtnCSSCurr);
			$("div[data='1']").css(xhBtnCSS);
			$("div[data='2']").css(xhBtnCSS);
			$("div[data='3']").css(xhBtnCSS);
			$("div[data='4']").css(xhBtnCSS);
		
	});
	
	/*定时器，定时轮播*/
	setInterval(function() {
		xhViewpagerLeft = parseInt($('.xh-viewpager-img').css('left'));
		if(xhViewpagerLeft >= parseInt('-' + (xhImgRightTotal - xhImgW))) {
			xhViewpagerLeft -= xhImgW;
			xhBtnIndex = parseInt(Math.abs(xhViewpagerLeft / xhImgW)) + 1;
			if(parseInt(Math.abs(xhViewpagerLeft / xhImgW)) == 5) {
				$("div[data='1']").css(xhBtnCSSCurr);
				$("div[data='2']").css(xhBtnCSS);
				$("div[data='3']").css(xhBtnCSS);
				$("div[data='4']").css(xhBtnCSS);
				$("div[data='5']").css(xhBtnCSS);
			} else {
				for(var i = 1; i < xhImgNum; i++) {
					if(i == xhBtnIndex) {
						$("div[data=" + xhBtnIndex + "]").css(xhBtnCSSCurr);
					} else {
						$("div[data=" + i + "]").css(xhBtnCSS);
					}
				}
			}
			
			$('.xh-viewpager-img').stop().animate({
				left: xhViewpagerLeft + 'px'
			}, xhAniSpeed);

		} else {
			$('.xh-viewpager-img').css('left', '0');
			$("div[data='1']").css(xhBtnCSSCurr);
			$("div[data='2']").css(xhBtnCSS);
			$("div[data='3']").css(xhBtnCSS);
			$("div[data='4']").css(xhBtnCSS);
			$("div[data='5']").css(xhBtnCSS);
		}

	}, xhViewpagerSpeed);

})