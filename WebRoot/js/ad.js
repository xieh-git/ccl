var div = document.getElementsByClassName('ad')[0];
var divTop,divLeft;
function inix(){
    if(div.currentStyle){
        divTop=parseInt(div.currentStyle.top);
        divLeft=parseInt(div.currentStyle.left);
    }else{
        divTop=parseInt(document.defaultView.getComputedStyle(div,null).top);
        divLeft=parseInt(document.defaultView.getComputedStyle(div,null).left);
    }
}

function move(){
    var sTop = parseInt(document.documentElement.scrollTop + document.body.scrollTop);
    var sLeft = parseInt(document.documentElement.scrollLeft + document.body.scrollLeft);
    div.style.top = divTop + sTop + 'px' ;
    div.style.left = divLeft + sLeft + 'px' ;
}

window.onload = inix;
window.onscroll=move;