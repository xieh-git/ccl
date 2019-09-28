$(document).ready(function () {
    // 动画完成需要的事件
    var AniSpeedDown = 300;

    // 动画完成需要的事件
    var AniSpeedUp = 500;

    /*web前端部分的动画效果*/
    $('#web').mouseenter(function () {
        $(this).children('.web-hover').stop().slideDown(AniSpeedDown);
    }).mouseleave(function () {
        $(this).children('.web-hover').stop().slideUp(AniSpeedUp);
    })


    /*java的动画*/
    $('#java').mouseenter(function () {
        $(this).children('.java-hover').stop().slideDown(AniSpeedDown);
    }).mouseleave(function () {
        $(this).children('.java-hover').stop().slideUp(AniSpeedUp);
    })



    /*Python的动画*/
    $('#python').mouseenter(function () {
        $(this).children('.python-hover').stop().slideDown(AniSpeedDown);
    }).mouseleave(function () {
        $(this).children('.python-hover').stop().slideUp(AniSpeedUp);
    })

    


    /*MySQL的动画 */
    $('#mysql').mouseenter(function () {
        $(this).children('.mysql-hover').stop().slideDown(AniSpeedDown);
    }).mouseleave(function () {
        $(this).children('.mysql-hover').stop().slideUp(AniSpeedUp);
    })
    


    /*SqlServer的动画 */
    $('#sqlserver').mouseenter(function () {
        $(this).children('.SqlServer-hover').stop().slideDown(AniSpeedDown);
    }).mouseleave(function () {
        $(this).children('.SqlServer-hover').stop().slideUp(AniSpeedUp);
    })
    
    
    
    var noteSpeedDown = 1000;
	var noteSpeedUp = 800;
    /*s1笔记的点击事件*/   
    // 点击s1笔记的次数
	var clickCountS1=0;
	$('.s1-note').click(function(){
		
		clickCountS1 ++;
		if((clickCountS1 % 2) == 1){
			$('.s1-note-font').slideDown(noteSpeedDown);				
		}else{
			$('.s1-note-font').slideUp(noteSpeedUp);;
		}
		
	});
    
    

    /*s2笔记的点击事件*/   
    // 点击s2笔记的次数
	var clickCountS2=0;
	$('.s2-note').click(function(){
		
		clickCountS2 ++;
		if((clickCountS2 % 2) == 1){
			$('.s2-note-font').slideDown(noteSpeedDown);				
		}else{
			$('.s2-note-font').slideUp(noteSpeedUp);;
		}
		
    });
    


    /*y2笔记的点击事件*/   
    // 点击y2笔记的次数
	var clickCountY2=0;
	$('.y2-note').click(function(){
		
		clickCountY2 ++;
		if((clickCountY2 % 2) == 1){
			$('.y2-note-font').slideDown(noteSpeedDown);				
		}else{
			$('.y2-note-font').slideUp(noteSpeedUp);;
		}
		
    });
    

    /*python笔记的点击事件*/   
    // 点击python笔记的次数
	var clickCountPY=0;
	$('.python-note').click(function(){
		
		clickCountPY ++;
		if((clickCountPY % 2) == 1){
			$('.python-note-font').slideDown(noteSpeedDown);				
		}else{
			$('.python-note-font').slideUp(noteSpeedUp);;
		}
		
    });


    
    /*java案例笔记的点击事件*/   
    // 点击java案例笔记的次数
	var clickCountJP=0;
	$('.problem-java').click(function(){
		
		clickCountJP ++;
		if((clickCountJP % 2) == 1){
			$('.problem-java-font').slideDown(noteSpeedDown);				
		}else{
			$('.problem-java-font').slideUp(noteSpeedUp);;
		}
		
    });


    
    /*python案例笔记的点击事件*/   
    // 点击python案例笔记的次数
	var clickCountPP=0;
	$('.problem-python').click(function(){
		
		clickCountPP ++;
		if((clickCountPP % 2) == 1){
			$('.problem-python-font').slideDown(noteSpeedDown);				
		}else{
			$('.problem-python-font').slideUp(noteSpeedUp);;
		}
		
	});
	
    


    /*web前端案例笔记的点击事件*/   
    // 点击web前端案例笔记的次数
	var clickCountWP=0;
	$('.problem-web').click(function(){
		
		clickCountWP ++;
		if((clickCountWP % 2) == 1){
			$('.problem-web-font').slideDown(noteSpeedDown);				
		}else{
			$('.problem-web-font').slideUp(noteSpeedUp);;
		}
		
    });
    


    /*数据库案例笔记的点击事件*/   
    // 点击数据库案例笔记的次数
	var clickCountDBP=0;
	$('.problem-db').click(function(){
		
		clickCountDBP ++;
		if((clickCountDBP % 2) == 1){
			$('.problem-db-font').slideDown(noteSpeedDown);				
		}else{
			$('.problem-db-font').slideUp(noteSpeedUp);;
		}
		
	});
    

})