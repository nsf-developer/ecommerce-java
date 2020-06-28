/*$(document).ready(function(){
		   for(var i = 0; i< 5; i++)
		     $("#dvMain").append("<div class='row'>Test</div>");  
		});*/

/*$(function() {


for(var i=0;i<5;i++){
   $("#divRepeat").append($(".box").html());
   //you can add other logic here, like you want diferent id or class to add in new box
}

});*/


function multiplyNode(node, count, deep) {
	
	var imgCount;
	var imgId = 1;
	
	
	

    $( document.querySelector('#catalogueImg') ).append('<img src=" ' + window.contextRoot + '/resources/images/2020002_Page_0'+imgId+'.jpg"/>');

    for (var i = 1, copy; i < count; i++) {
               
        /*copy2 = node.cloneNode(imgCount);
        node.parentNode.insertBefore(copy2, node);*/


        copy = node.cloneNode(deep);
		
		node.parentNode.insertBefore(copy, node);
		
    	
    	
    	
    	

        
  
    }
}

multiplyNode(document.querySelector('.box'), 5, true);


/*function multiplyNode(node, count, deep) {
    for (var i = 0, copy; i < count - 1; i++) {
        copy = node.cloneNode(deep);
        node.parentNode.insertBefore(copy, node);
    }
}

multiplyNode(document.querySelector('.box'), 5, true);*/