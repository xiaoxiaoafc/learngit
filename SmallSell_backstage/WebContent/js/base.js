/*
 * 定义常量
 */

var resultCode = {"error":500,"success":200};


/* url  请求的url
 * data	请求的数据
 * sfun	执行成功要执行的方法
 * loandDiv  要显示加载层的方法
 * spams	请求成功后要带给成功函数的数据
 * async	异步获取同步  默认异步 true
 * sendType  发送的类型默认post
 * resultType  返回的数据类型默认json
 * efun  异常后要执行的方法
 */
function requestMthod(url,data,sfun,resultType,loandDiv,spams,async,sendType,efun){
	if(typeof(async) == 'undefined' || async == null){
		async = true;
	}
	if(typeof(sendType) == 'undefined' || sendType == null){
		sendType = "post";
	}
	if(typeof(resultType) == 'undefined' || resultType == null){
		resultType = "json";
	}
	 $.ajax({
	      type:"post",
	      url:url+"?math="+Math.random(),
	      async:async,
	      data:data,
	      datatype:resultType,
	      beforeSend:function(){
	    	 
	      },
	      complete:function(){
	    	 
	      },
	      success:function(result){
	    	if(typeof(sfun) != 'undefined' && sfun!= null){
	    		 if(typeof(spams) == 'undefined' || spams == null){
		    		 sfun(result);
		    	 }else{
		    		 sfun(data,spams);
		    	 }
	    	}
	      },
	      error:function(XMLHttpRequest,textStatus,errorThrown){
	    	  if(!typeof(efun) == 'undefined' && efun != null){
	    		  efun();
	    	  }else{
	    		  throw errorThrown;
	    	  }
	      }
	    });
}

/*
 * title 标题
 * content : 内容
 * cfun:点击关闭要执行的方法
 */
function message(title,content,cfun,sfun){
	var buttonHtml = "";
	if(typeof(cfun) != 'undefined' && cfun != null){
		buttonHtml += "  <button type = \"button\" id=\"closeBtn\" class = \"btn btn-default\" data-dismiss = \"modal\">\n" +
					  "               取消\n" +
					  "            </button>\n" ;
	}
	
	if(typeof(sfun) != 'undefined'  && sfun != null){
		buttonHtml +=  "            <button type = \"button\" id=\"successBtn\" class = \"btn btn-primary\">\n" +
		"               确定\n" +
		"            </button>\n" ;
	}
	
	var message = "<div class = \"modal fade\" id = \"myModal\" tabindex = \"-1\" role = \"dialog\" style=\"z-index:10000\" \n" +
	"   aria-labelledby = \"myModalLabel\" aria-hidden = \"true\">\n" +
	"   \n" +
	"   <div class = \"modal-dialog\">\n" +
	"      <div class = \"modal-content\">\n" +
	"         \n" +
	"         <div class = \"modal-header\">\n" +
	"            <button type = \"button\" class = \"close\" data-dismiss = \"modal\" aria-hidden = \"true\">\n" +
	"                  &times;\n" +
	"            </button>\n" +
	"            \n" +
	"            <h4 class = \"modal-title\" id = \"myModalLabel\">\n" + title +
	"            </h4>\n" +
	"         </div>\n" +
	"         \n" +
	"         <div class = \"modal-body\">\n" +
	"            " +content +
	"         </div>\n" +
	"         \n" +
	"         <div class = \"modal-footer\">\n" + buttonHtml +
	"         </div>\n" +
	"         \n" +
	"      </div><!-- /.modal-content -->\n" +
	"   </div><!-- /.modal-dialog -->\n" +
	"  \n" +
	"</div><!-- /.modal -->";
	
	$("body").append(message);
	if(typeof(cfun) != 'undefined' && cfun != null){
		 $("#myModal #closeBtn").bind("click",function(){
			 cfun();
			 $("#myModal").remove();
		 });
	}
	
	if(typeof(sfun) != 'undefined'  && sfun != null){
		$("#myModal #successBtn").bind("click",function(){
			sfun();
			 $("#myModal").remove();
		 });
	}
	
	$("#myModal").modal('show');
}