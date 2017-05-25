<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'movieDetail.jsp' starting page</title>
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="/Movie/css/MovieDetailStyle.css">
	<link rel="stylesheet" type="text/css" href="/Movie/css/starstyle.css">
	
  </head>
  <body>
  <div class="div1">
 <div>
<img src="${sessionScope.movieDetail.movie_picture_url}"/><br/>
<div class="block">
<ul>
   <li>请您给出评价：</li>
</ul>
<ul class='star-rating'>
  <li><a href='http://121.42.174.147:8080/Movie/saveRating.action?userid=${sessionScope.user.userid}&movie_id=${movieDetail.movie_id}&rating=1' title='一星' class='one-star'>1</a></li>
  <li><a href='http://121.42.174.147:8080/Movie/saveRating.action?userid=${sessionScope.user.userid}&movie_id=${movieDetail.movie_id}&rating=2' title='二星' class='two-stars'>2</a></li>
  <li><a href='http://121.42.174.147:8080/Movie/saveRating.action?userid=${sessionScope.user.userid}&movie_id=${movieDetail.movie_id}&rating=3' title='三星' class='three-stars'>3</a></li>
  <li><a href='http://121.42.174.147:8080/Movie/saveRating.action?userid=${sessionScope.user.userid}&movie_id=${movieDetail.movie_id}&rating=4' title='四星' class='four-stars'>4</a></li>
  <li><a href='http://121.42.174.147:8080/Movie/saveRating.action?userid=${sessionScope.user.userid}&movie_id=${movieDetail.movie_id}&rating=5' title='五星' class='five-stars'>5</a></li>
  
</ul>
 <c:if test="${insertException!=null}">
  <ul>
    <li><font color='red'>${insertException}</font></li>
  </ul>
 </c:if>
</div>
 <ul>
   <li>电影名称：${sessionScope.movieDetail.movie_name}</li>
   <li>导演：${sessionScope.movieDetail.movie_director }</li>
   <li>演员：${sessionScope.movieDetail.movie_actor}</li>
   <li>流派：${sessionScope.movieDetail.movie_genres}</li>
   <li>语言：${sessionScope.movieDetail.movie_language }</li>
   <li>发行时间：${sessionScope.movieDetail.movie_release_date}</li>
   <li>地区：${sessionScope.movieDetail.movie_district }</li>
   <li>观看链接：${sessionScope.movieDetail.movie_download_url}</li>
   <li>播放次数：${sessionScope.movieDetail.movie_playcount }</li>
   <li>评分：${sessionScope.movieDetail.movie_average_score }</li>
   <li>简介：${sessionScope.movieDetail.movie_synopsis }</li>
  </ul>
 </div>
 </div>
</body>
</html>
