(function(){
	$.fn.jqueryzoom = function(options){
		var settings = {
				xzoom: 200,//zoomed width default width
				yzoom: 200,//zoomed div default width
				offset: 10,	//zoomed div default offset
				position: "right",//zoomed div default position,offset position is to the right of the image缩放div默认位置，默认偏移的位置在图像的右侧
				lens:1, //zooming lens over the image,by default is 1;变焦的镜头在图像上，默认情况下为1;
				preload: 1
			};
		if(options) {
			$.extend(settings, options);
		}
		var noalt='';
		this.hover(function(){
			var imageLeft = this.offsetLeft;
		    var imageRight = this.offsetRight;
		    var imageTop =  $(this).get(0).offsetTop;
		    var imageWidth = $(this).children('img').get(0).offsetWidth;
		    var imageHeight = $(this).children('img').get(0).offsetHeight;
		    
		    noalt= $(this).children("img").attr("alt");

		    var bigimage = $(this).children("img").attr("jqimg");

            $(this).children("img").attr("alt",'');

		    if($("div.zoomdiv").get().length == 0){

		    $(this).after("<div class='zoomdiv'><img class='bigimg' src='"+bigimage+"'/></div>");


		    $(this).append("<div class='jqZoomPup'>&nbsp;</div>");

		    }
		    
		    if(settings.position == "right"){

	            if(imageLeft + imageWidth + settings.offset + settings.xzoom > screen.width){

	            leftpos = imageLeft  - settings.offset - settings.xzoom;

	            }else{

			    leftpos = imageLeft + imageWidth + settings.offset;
	            }
			    }else{
			    leftpos = imageLeft - settings.xzoom - settings.offset;
			    if(leftpos < 0){

	            leftpos = imageLeft + imageWidth  + settings.offset;

			    }

			    }

			    $("div.zoomdiv").css({ top: imageTop,left: leftpos });

			    $("div.zoomdiv").width(settings.xzoom);

			    $("div.zoomdiv").height(settings.yzoom);

	            $("div.zoomdiv").show();

		});
		
	};
})(jQuery);