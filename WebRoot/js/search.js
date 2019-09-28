var oInp = document.getElementById("main-center-search-txt");
var xhSearchBtn = document.getElementById("main-center-search-btn");

oInp.oninput = debounce(xh_Ajax, 1500);

// 防抖等待用户输入停止执行时间以后执行
function debounce(handler, delay) {
	var timer = null;
	return function() {
		var _self = this;
		var _args = arguments;
		clearTimeout(timer);
		timer = setTimeout(function() {
			handler.apply(_self, _args);
		}, delay);
	}
}

// 输入的时候执行的函数
function xh_Ajax(e) {
	var xhAjax;
	if (window.XMLHttpRequest) {
		xhAjax = new XMLHttpRequest();
	} else {
		xhAjax = new ActiveXObject("Microsoft.XMLHTTP");
	}
	var xhAjaxValue = document.getElementById("main-center-search-txt").value;
	if (!xhAjaxValue == "" || !xhAjaxValue == null) {
		xhAjax.onreadystatechange = function() {
			document.getElementsByClassName('main-center-search-a')[0].innerHTML = xhAjax.responseText;
		}
		xhAjax.open('get', 'search?keyWord=' + xhAjaxValue);
		xhAjax.send();
	}else{
		document.getElementsByClassName('main-center-search-a')[0].innerHTML = "<div class='main-center-search-img' style='width: 200px; "
			+ "height: 300px; margin: 0 auto; margin-top: 10px;'>"
			+ "<img src='img/hb.jpg' width='200px' height='300px' title='支付宝扫码领红包' style='cursor: pointer;'>"
			+ "</div>";
	}

}

xhSearchBtn.onclick = xh_Ajax;