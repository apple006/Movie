$(document).ready(function(){
	$("#go").click(function(){
		//获取用户输入信息
		var searchContent=encodeURI(encodeURI($("#s").val()));
		//alert(searchContent);
		if(searchContent==""){
			alert("搜索内容不能为空！");
			return false;
		}else{
			
			$("#myhref").attr("href","http://121.42.174.147:8080/Movie/showSearchContent.action?keyWord="+searchContent); 
		}
	});
}); 