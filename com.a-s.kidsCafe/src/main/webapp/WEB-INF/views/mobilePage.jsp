<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>

<title>mobile page</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
</script>
<script type="text/javascript">
$(function(){
    var imgNum = 4;     //画像の枚数
    var imgSize = 964;  //画像のサイズ
    var time = 5000;    //切り替えのタイミング
    var current = 1;    //現在の画像
    setInterval(function(){
        if( current < imgNum ) {
            current++;
            $("#banner ul").animate({
                marginLeft : parseInt($("#banner ul").css("margin-left"))-imgSize+"px"
            },"fast");
        //最後の画像にきたら最初に戻る
        } else {
             $("#banner ul").animate({
                marginLeft : parseInt($("#banner ul").css("margin-left"))+(imgSize * (imgNum-1))+"px"
            },"fast");
            current = 1;
        }
    }, time);
});

	 var name;
	 var age;
	 function button1(){
		 name=$('#name').val();
		 console.log(name);
		 age=$('#mail').val();
		  console.log(mail);
	 }
</script>
<style type="text/css">

#banner {
    border: 3px solid #CCCCCC;
    overflow: hidden;
    width:964px;
    /* margin-bottom: 5px; */
    height:300px;
}
#banner ul {
    list-style: none;
   	padding-left:0;
    width: 3864px;
    margin-bottom: 0;
    margin-top: 0;
}
#banner ul li {
    float: left;
    width: 964px;
}
#banner ul li img {
    vertical-align: bottom;
}

body
{
	font-size: 1.0cm;
	background-color:rgb(238,238,238)
}

a.navi
{
	text-decoration: none;
	color:black;
}
a.navi:hover
{	
	color:black;
}
a.navi:visited
{
	text-decoration: none;
	color:black;
}

a.productName
{
	margin: 0 auto;
	color:black;
	text-decoration: none;
}
a.productName:hover
{
	margin: 0 auto;
	color:black;
	text-decoration: none;
}
a.productName:visited
{
	margin: 0 auto;
	color:black;
	text-decoration: none;
}

a.productPrice
{
	margin: 0 auto;
	color: #999966;
	text-decoration: none;
}
a.productPrice:hover
{
	margin: 0 auto;
	color: #999966;
	text-decoration: none;
}
a.productPrice:visited
{
	margin: 0 auto;
	color: #999966;
	text-decoration: none;
}


td
{
	font-size: 1.0cm;
}


.top
{
	font-size: 1.5cm;
	color:#222222;
}
</style>
</head>
<body>
<div class="top">

第三空間
</div>

<span style=" font-weight: bold; color:#333333">
<a class="navi">ホーム</a>
<a href="navi?action=notice" class="navi">お知らせ</a> 
<a href="navi?action=access" class="navi">アクセス</a> 
<a href="navi?action=qna" class="navi">問い合わせ</a>
</span>

<div id="banner">
    <ul>
        <li><a href="resources/images/banner1.jpg"><img src="resources/images/banner1.jpg" width="100%" height="300" /></a></li>
        <li><a href="resources/images/banner2.jpg"><img src="resources/images/banner2.jpg" width="100%" height="300"/></a></li>
        <li><a href="resources/images/banner3.jpg"><img src="resources/images/banner3.jpg" width="100%" height="300"/></a></li>
        <li><a href="resources/images/banner4.jpg"><img src="resources/images/banner4.jpg" width="100%" height="300"/></a></li>
    </ul>
</div>

<!-- <table style="margin-bottom:30px;">
	<tr style="width:100%;">		
		<td>
			<img src="resources/images/banner1.jpg" style="width:100%; height:100%;">
		</td>		
	</tr>
</table> -->
<table style="background-color:white; width: 100%">
	<tr style="width: 100%">
		<td rowspan="2">
		施設紹介
		</td>
	<tr>
	<tr>
		<td style="width:50%; border-right: solid 1px; border-color: #0099ff; background-color:white;">
			<a href="facility?action=meetingRoom">
				<img src="resources/images/room.jpg" height="350vh;" >
			</a>
		</td>
		<td style="width:50%;">
		<div style="text-align:center;">
			<a href="facility?action=meetingRoom" class="navi">
			ITエンジニア会議室
			</a>
		</div>
		</td>
	<tr>
	<tr>
		<td style="width:50%; border-right: solid 1px; border-color: #0099ff; background-color:white;">
			<a href="facility?action=foodCourt">
				<img src="resources/images/foodcourt.jpg" height="350vh;" >
			</a>
		</td>
		<td style="width:50%;">
		<div style="text-align:center;">
			<a href="facility?action=foodCourt" class="navi">
				 調理施設
			</a>
		</div>
		</td>
	<tr>
	<tr>
		<td style="width:50%; border-right: solid 1px; border-color: #0099ff; background-color:white;">
			<a href="facility?action=playground">
				<img src="resources/images/playground.jpg" height="350vh;" >
			</a>
		</td>
		<td style="width:50%;">
		<div style="text-align:center;">
			<a href="facility?action=playground" class="navi">
				子供の遊び場
			</a>
		</div>
		</td>
	<tr>
	<tr>
		<td style="width:50%; border-right: solid 1px; border-color: #0099ff; background-color:white;">
			<a href="facility?action=presentation">
			<img src="resources/images/PR.jpg" height="350vh;" >
			</a>
		</td>
		<td style="width:50%;">
		<div style="text-align:center;">
			<a href="facility?action=presentation" class="navi">
				子供向けのPRの場所
			</a>
		</div>
		</td>
	<tr>
	<tr>
		<td style="width:50%; border-right: solid 1px; border-color: #0099ff; background-color:white;">
			<a href="facility?action=ITproducts">
				<img src="resources/images/it_product.jpg" height="350vh;" >
			</a>
		</td>
		<td style="width:50%;">
		<div style="text-align:center;">
			<a href="facility?action=ITproducts" class="navi">
			ITプロダクト紹介
			</a>
		</div>
		</td>
	<tr>
</table>
<br>
<table style="background-color:white; width: 100%">
	<c:forEach var="product" items="${list}">  
	<tr>
		<td rowspan="2" style="width: 25vh;">
			<a href="productGet?productNum=${product.productNum}">
				<img src="resources/images/${product.name}.png" height="300vh;">
			</a>
		</td>
		<td class="product">
			<a href="productGet?productNum=${product.productNum}" class="productName">${product.name}</a>
		</td>
	</tr>
	<tr>		
		<td class="price">
			<a href="productGet?productNum=${product.productNum}" class="productPrice">
			¥${product.price}
			</a>
		</td>
	</tr>		
		</c:forEach>
		
	<!-- <tr>
		<td rowspan="2" style="width: 25vh;">
			<img src="resources/images/robot.png" height="300vh;">
		</td>
		<td class="product">
			ロボット
		</td>
	</tr>
	<tr>		
		<td class="price">
			¥17,000
		</td>
	</tr>
	<tr>
		<td rowspan="2" style="width: 25vh;">
			<img src="resources/images/battery.png" height="300vh;">
		</td>
		<td class="product">
			バッテリー
		</td>
	</tr>
	<tr>		
		<td class="price">
			¥19,000
		</td>
	</tr>
	<tr>
		<td rowspan="2" style="width: 25vh;">
			<img src="resources/images/modem.png" height="300vh;">
		</td>
		<td class="product">
			モデム
		</td>
	</tr>
	<tr>		
		<td class="price">
			¥20,000
		</td>
	</tr>
	<tr>
		<td rowspan="2" style="width: 25vh;">
			<img src="resources/images/tablet.png" height="300vh;">
		</td>
		<td class="product">
			タブレット
		</td>
	</tr>
	<tr>		
		<td class="price">
			¥21,000
		</td>
	</tr>
	<tr>
		<td rowspan="2" style="width: 25vh;">
			<img src="resources/images/radio.png" height="300vh;">
		</td>
		<td class="product">
			ラジオ
		</td>
	</tr>
	<tr>		
		<td class="price">
			¥22,000
		</td>
	</tr> -->
</table>

<table style="margin-top:70px; width:100%; background-color:white; margin-bottom:30px;">
	<tr>
		<td>
			<img src="resources/images/fistBump.jpg" height="200px">
		</td>
		<td style="font-size: 0.9cm; color:#333333; background-color:white;">
			第三空間で一緒に協業する<br>ITエンジニア募集中
		</td>
		<td>
			<a href="navi?action=qna" style="border-radius: 5px; background-color:#0099ff; padding:30px; padding-top:60px;padding-bottom:60px;font-size: 0.8cm; color:#222222;">
			問い合わせ
			</a>
		</td>
	</tr>
</table>
<h2 style="fontsize:20px; color:#333333; margin-right:auto; margin-left:auto;">予約フォーム</h2>
   <form class="form1"　action="#" method="post" name="form1">
     <table class="mailform"　
     style="position:relative; width:80%; border: solid 5px; border-color:rgb(45,164,192); background-color:rgb(238,238,238);margin-right:auto; margin-left:auto; margin-bottom:50px; padding-top:30px;" >
      <tbody>
       <tr>
       <td>お名前</td>
       <td><input type="text" id="name" style="width:300px; height:50px;"></td>
       </tr>
       <tr>
       <td>E-mail</td>
       <td><input type="text" id="mail" style="width:300px; height:50px;"></td>
       </tr>
       <tr>
       <td>お電話番号</td>
       <td><input type="text" id="fone" style="width:300px; height:50px;"></td>
       </tr>
       <tr>
        <td>メッセージ</td>
        <td><input type="text" id="message" style="width:300px; height:50px;"></td>
      </tr>
       <tr>
       <td>
       		<a href="navi?action=qna" style="border-radius: 5px; background-color:#0099ff; font-size: 0.8cm; color:#222222;">
			送信
			</a>
      </td>
      </tr>
    </tbody>
  </table>
  </form>
<footer style="width:100%; clear:both; height:100px; text-align:center; color:white; background-color:#555; padding-top:30px; font-size: 35px;">
<p>ASCOM CO.,LTD © ALL RIGHTS RESERVED</p>
</footer>
</body>
</html>