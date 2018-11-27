<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript">
$(function(){
    var imgNum = 4;     //画像の枚数
    var imgSize = 1325;  //画像のサイズ
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
function check()
{
	var name = document.getElementById("name").value;
	alert(name+"　様の予約を承りました。");
	document.getElementById("reserveForm").reset();
}
</script>
<style type="text/css">
#banner {
    border: 3px solid #CCCCCC;
    overflow: hidden;
    width:1325px;
    /* margin-bottom: 5px; */
    height:300px;
}
#banner ul {
    list-style: none;
       padding-left:0;
    width: 5300px;
    margin-bottom: 0;
    margin-top: 0;
}
#banner ul li {
    float: left;
    width: 1325px;
}
#banner ul li img {
    vertical-align: bottom;
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



</style>
</head>
<body Style="background-color:rgb(238,238,238)">

<header>
<a href="#"><img src="resources/images/ascom_log2.png" height="30px" alt="株式会社ASCOM"></a>
</header>

<h1 style="color:#222222; font-sie: 50%; padding-left:40px;">
	第三空間(Third Space)
</h1>

<span style="margin-left: 71%; font-weight: bold; color:#333333">
	<a href="navi?action=home" class="navi">ホーム</a>
	<a href="navi?action=notice" class="navi">お知らせ</a> 
	<a href="navi?action=access" class="navi">アクセス</a> 
	<a href="navi?action=qna" class="navi">問い合わせ</a>
</span>
<div id="banner">
    <ul>
        <li><a href="resources/images/banner1.jpg"><img src="resources/images/banner1.jpg" width="1325" height="300"/></a></li>
        <li><a href="resources/images/banner2.jpg"><img src="resources/images/banner2.jpg" width="1325" height="300" /></a></li>
        <li><a href="resources/images/banner3.jpg"><img src="resources/images/banner3.jpg" width="1325" height="300" /></a></li>
        <li><a href="resources/images/banner4.jpg"><img src="resources/images/banner4.jpg" width="1325" height="300"/></a></li>
    </ul>
</div>


<br><br>
<div class="container">
<div class="shisetuA" >
　<table style=" width:85%; border:none; background-color:rgb(238,238,238); margin-bottom:50px; margin-right:auto; margin-left:auto;" >
	<tr　align="center">
       <td style="border-right: dotted 1.5px; border-color: #333333;font-size:40px; color:#333333; padding:10px;">施設紹介<br>
       <p style="font-size:20px; vertical-align:middel; color:#333333;">第３空間の施設を紹介します。</p></td>
      <td style="border-right: dotted 1.5px; border-color: #333333; padding:10px;">
      	<a href="facility?action=meetingRoom">
			<img src="resources/images/room.jpg" height="240px;">
		</a>
		</td>
      <td style="padding:10px;">
      	<a href="facility?action=foodCourt">
			<img src="resources/images/foodcourt.jpg" height="240px;">
		</a>
		</td>
		</tr>
		<tr align="center" style="height:40px;">
		<td style="border-right: dotted 1.5px; border-color: #333333;"></td>
		<td style="border-right: dotted 1.5px; border-color: #333333; padding:10px; color:#333333;">
			<a href="facility?action=meetingRoom" class="navi">
			ITエンジニア会議室
			</a>
		</td>
		<td style="padding:10px; color:#333333;">
			<a href="facility?action=foodCourt" class="navi">
			調理施設
			</a>
		</td>
		 </tr>
	<tr　align="center">
      <td style="border-right: dotted 1.5px; border-color: #333333; padding:10px;">
	      	<a href="facility?action=playground" class="navi">
				<img src="resources/images/playground.jpg" height="240px;">
			</a>
		</td>
      <td style="border-right: dotted 1.5px; border-color: #333333; padding:10px;">
      	<a href="facility?action=presentation">
			<img src="resources/images/PR.jpg" height="240px;">
		</a>
		</td>
      <td style="padding:10px;">
      	<a href="facility?action=ITproducts">
			<img src="resources/images/it_product.jpg" height="240px;">
		</a>
		</td>
		</tr>
		<tr align="center" style="height:40px;">
		<td style="border-right: dotted 1.5px; border-color: #333333; padding:10px; color:#333333;">
			<a href="facility?action=playground" class="navi">
			子供の遊び場
			</a>
		</td>
		<td style="border-right: dotted 1.5px; border-color: #333333; padding:10px; color:#333333;">
			<a href="facility?action=presentation" class="navi">
			子供向けのPRの場所
			</a>
		</td>
		<td style="padding:10px; color:#333333;">
			<a href="facility?action=ITproducts" class="navi">
			ITプロダクト紹介
			</a>
		</td>
    </tr>
  </table>
</div>
</div>

<!--<table style=" width:100%; border: solid 1px; border-color: #0099ff; background-color:white; margin-bottom:50px; padding-top:30px;" >
	<tr>
	    <td style="font-size:20px; vertical-align:top;">施設紹介</td>
	</tr>
	<tr align="center" style="border-bottom: solid 1px; border-color: #0099ff; background-color:white;">
		<td style="border-right: solid 1px; border-color: #0099ff; background-color:white;">
			<img src="resources/images/room.jpg" height="150px;" style="border-radius:50%; width:180px; height:180px;" >
		</td>
		<td style="border-right: solid 1px; border-color: #0099ff; background-color:white;">
			<img src="resources/images/foodcourt.jpg" height="150px;" style="border-radius:50%; width:180px; height:180px;" >
		</td>
		<td style="border-right: solid 1px; border-color: #0099ff; background-color:white;">
			<img src="resources/images/playground.jpg" height="150px;" style="border-radius:50%; width:180px; height:180px;">
		</td>
		<td style="border-right: solid 1px; border-color: #0099ff; background-color:white;">
			<img src="resources/images/PR.jpg" height="150px;" style="border-radius:50%; width:180px; height:180px;">
		</td>
		<td>
			<img src="resources/images/it_product.jpg" height="150px;">
		</td>
	</tr>

	<tr>
		<td style="text-align: center; border-right: solid 1px; border-color:rgb(45,164,192); color:#333333;">ITエンジニア会議室
		</td>
		<td style="text-align: center; border-right: solid 1px; border-color:rgb(45,164,192); color:#333333;">調理施設
		</td>
		<td style="text-align: center; border-right: solid 1px; border-color:rgb(45,164,192); color:#333333;">子供の遊び場
		</td>
		<td style="text-align: center; border-right: solid 1px; border-color:rgb(45,164,192); color:#333333;">子供向けのPRの場所
		</td>
		<td style="text-align: center; border-color:rgb(45,164,192); color:#333333;">ITプロダクト紹介
		</td>
	</tr>
</table>-->




<h2 style="color:#333333; font-siｚe:60px; padding-left:80px;">
	プロダクト紹介</h2>
<p style="font-size:20px;　color:#333333; text-al">第３空間に集まったプロダクトを紹介します。</p>
<div style="margin-right:30%;width:100%; overflow: auto; background-color:rgb(238,238,238);">
	<table style="width:80%;">
		<tr>
			<td style="padding:20px;">
				<a href="resources/images/robot.png">
					<img src="resources/images/robot.png" style="border-radius:50%; width:180px; height:180px; border:9px solid #2da4c0; background-color:white;">
				</a>
			</td>
			<td style="padding:20px;">
				<a href="resources/images/battery.png">
					<img src="resources/images/battery.png" style="border-radius:50%; width:180px; height:180px; border:9px solid #2da4c0;background-color:white;">
				</a>
			</td>
			<td style="padding:20px;">
				<a href="resources/images/modem.png">
					<img src="resources/images/modem.png" style="border-radius:50%; width:180px; height:180px; border:9px solid #2da4c0;background-color:white;">
				</a>
			</td>
			<td style="padding:20px;">
				<a href="resources/images/tablet.png">
					<img src="resources/images/tablet.png" style="border-radius:50%; width:180px; height:180px; border:9px solid #2da4c0;background-color:white;">
				</a>
			</td>
			<td style="padding:20px;">
				<a href="resources/images/radio.png">
					<img src="resources/images/radio.png" style="border-radius:50%; width:180px; height:180px; border:9px solid #2da4c0;background-color:white;">
				</a>
			</td>
			<td style="padding:20px;">
				<a href="resources/images/robot.png">
					<img src="resources/images/robot.png" style="border-radius:50%; width:180px; height:180px; border:9px solid #2da4c0;background-color:white;">
				</a>
			</td>
			<td style="padding:20px;">
				<a href="resources/images/battery.png">
					<img src="resources/images/battery.png" style="border-radius:50%; width:180px; height:180px; border:9px solid #2da4c0;background-color:white;">
				</a>
			</td>
			<td style="padding:20px;">
				<a href="resources/images/modem.png">
					<img src="resources/images/modem.png" style="border-radius:50%; width:180px; height:180px; border:9px solid #2da4c0;background-color:white;">
				</a>
			</td>
			<td style="padding:20px;">
				<a href="resources/images/tablet.png">
					<img src="resources/images/tablet.png" style="border-radius:50%; width:180px; height:180px; border:9px solid #2da4c0;background-color:white;">
				</a>
			</td>
			<td style="padding:20px;">
				<a href="resources/images/radio.png">
					<img src="resources/images/radio.png" style="border-radius:50%; width:180px; height:180px; border:9px solid #2da4c0;background-color:white;">
				</a>
			</td>
		</tr>
	</table>
</div>
<table style="margin-top:100px; width:80%; background-color:white; margin-bottom:30px; margin-right:auto; margin-left:auto;">
	<tr>
		<td>
			<img src="resources/images/fistBump.jpg" height="200px">
		</td>
		<td style="font-size: 30px; color:#333333; background-color:white;">
			第三空間で一緒に協業する<br>ITエンジニア募集中
		</td>
		<td>
			<a href="navi?action=qna" style="border-radius: 5px; background-color:#2da4c0; padding:30px; padding-top:60px;padding-bottom:60px;font-size: 25px; color:#222222;">
			問い合わせ
			</a>
		</td>
	</tr>
</table>

<div class="box1" style="font-weight: bold;
    color: #2da4c0; background: #FFF; border: solid 3px #2da4c0; border-radius: 10px;/*角の丸み*/ width:550px; height:550px; margin:auto">
<br>
<p class="lead-form" style="text-align: center; margin:auto;">ご予約フォーム</p>

<form id="reserveForm"style="width:460px; margin:auto">

  <div class="item" style="overflow: hidden; margin-bottom: 20px; display: flex;">
    <label class="label" style="float: left; margin-right: 20px;
		 width:135px; border-left: solid 3px #e0505d; padding-left: 10px;">お名前</label>
    <input id="name" type="text" name="name" style="float: left; width: 300px;border: solid 1px #aaa; border-radius:5px; padding:10px; font-size: 15px;">
  </div>

	<div class="item" style="overflow: hidden; margin-bottom: 20px; display: flex;">
		<label class="label" style="float: left; margin-right: 20px;
		 width:135px; border-left: solid 3px #e0505d; padding-left: 10px;">電話番号</label>
		<input id="fone" type="num" name="fone" style="float: left; width: 300px;border: solid 1px #aaa; border-radius:5px; padding:10px; font-size: 15px;">
	</div>

  <div class="item" style="overflow: hidden; margin-bottom: 20px; display: flex;">
		<label class="label" style="float: left; margin-right: 20px;
		 width:135px; border-left: solid 3px #e0505d; padding-left: 10px;">メールアドレス</label>
    <input id="email" type="email" name="email" style="float: left; width: 300px;border: solid 1px #aaa; border-radius:5px; padding:10px; font-size: 15px;">
  </div>

  <div class="item" style="overflow: hidden; margin-bottom: 20px; display: flex;">
	   <p class="label" style="float: left; margin-right: 20px;
 		 width:135px; border-left: solid 3px #e0505d; padding-left: 10px;">性別を選択</p>
　　<input id="male" type="radio" name="sex" value="male">
    <label for="male">男性</label>
　　<input id="female" type="radio" name="sex" value="female">
    <label for="female">女性</label>
   </div>

  <div class="item" style="overflow: hidden; margin-bottom: 20px; display: flex;">
		<label class="label" style="float: left; margin-right: 20px;
		 width:135px; border-left: solid 3px #e0505d; padding-left: 10px;">メッセージ</label>
    <textarea id="message"　placeholder="ここにメッセージを入力してください" style="border: solid 1px #aaa; border-radius:5px; padding: 10px; height: 160px; font-size: 15px;"></textarea>
  </div>

  <div class="btn-area" style="text-align: center;">
    <input type="button" style="background: #e0505c; border: none; color: white; font-size:17px; font-weight:bold; padding: 10px 20px; margin: 0 5px;"
		 value="送信" onclick="check()"><input type="reset" style="background: #aaa; border: none; color: white; font-size:17px; font-weight:bold; padding: 10px 20px; margin: 0 5px;" value="リセット">
  </div>

</form>
</div>
<br><br><br>

	<footer style="background-color:#555;">
	<div class="container" style="display:flex;">
		<div class="footA" style="padding:40px 20px; margin-left:30px;">
		    <a href="#"><img src="resources/images/ascom_log.png" height="40px" alt="株式会社ASCOM"></a>
			<p style="color:white; padding:">
			〒170-0013 東京都豊島区東池袋2-18-7 恵安ビル3階
			</p>
			<a href="#"><img src="resources/images/Facebook.jpeg" height="30px" alt="Facebook"></a>
			<a href="#"><img src="resources/images/twitter.jpeg" height="30px" alt="twitter"></a>
		</div>
		<nav class="footB" style="padding:40px 20px; margin-bottom:20px; margin-left:40px; display:flex;">
			<div style="color:white; margin-left:40px;">
				<h3 style="margin-top:0; margin-bottom:10px; border-bottom:solid 1px currentColor; fontsize:18px;">
					MENU</h3>
				<ul>
					<li style="margin:0; padding:3px;">
					<a href="navi?action=home" class="navi">ホーム</a>
					</li>
					<li style="margin:0; padding:3px;">
						<a href="navi?action=notice" class="navi">
						お知らせ
						</a>
					</li>
					<li style="margin:0; padding:3px;">
						<a href="navi?action=access" class="navi">
						アクセス
						</a>
					</li>
					<li style="margin:0; padding:3px;">
						<a href="navi?action=qna" class="navi">
						問い合わせ
						</a>
					</li>
				</ul>
			</div>
			<div style="color:white; margin-left:70px;">
				<h3 style="margin-top:0; margin-bottom:10px; border-bottom:solid 1px currentColor; fontsize:18px;">
					施設紹介</h3>
				<ul>
					<li style="margin:0; padding:3px;">
						<a href="facility?action=meetingRoom" class="navi">
						ITエンジニア会議室
						</a>
					</li>
					<li style="margin:0; padding:3px;">
						<a href="facility?action=foodCourt" class="navi">
						調理施設
						</a>
					</li>
					<li style="margin:0; padding:3px;">
						<a href="facility?action=playground" class="navi">
						子供の遊び場
						</a>
					</li>
					<li style="margin:0; padding:3px;">
						<a href="facility?action=presentation" class="navi">
						子供向けPRの場所
						</a>
					</li>
					<li style="margin:0; padding:3px;">
						<a href="facility?action=ITproducts" class="navi">
						ITプロダクト紹介
						</a>
					</li>
				</ul>
			</div>
		</nav>
	</div>
  <div class="footC" style="color:white; text-align:center; font-size:12px;">
	<p>ASCOM CO.,LTD © ALL RIGHTS RESERVED</p>
  </div>
	</footer>
</body>
</html>

