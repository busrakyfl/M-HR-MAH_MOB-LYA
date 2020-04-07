<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER.master" AutoEventWireup="true" CodeFile="Slayt.aspx.cs" Inherits="Slayt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<ul id='menusisi' class="koddostusagsocial koddostu-socialll">

<li class='te6'>
<a href='' title='Facebook Sayfamız'>Facebook Sayfamız</a>
</li>
<li class='cari'>
<a href='' title='Takip Et'>Twitter'da Takip Et</a>
</li>
</ul>
<style>
    ul#menusidi 
    {margin: 0px;padding: 0px;list-style: none;}
    ul#menusidi li 
    {opacity:1;width: 255px;margin-left: -200px;margin-bottom:3px;}
   ul#menusidi li a {display: block;width: 225px;height: 60px;font-family:Helvetica, Arial, sans-serif;font-weight:bold;font-size:14px;color:#fff !important;text-decoration:none !important;line-height:60px;padding-left:30px;background-color:transparent;background-repeat:no-repeat;background-position:202px center;border:none;}
   </style>
<style type="text/css">
    ul.koddostusagsocial{position:fixed;text-align:center;z-index:9999;}
    ul.koddostu-socialll{top:50px;left:0px;}
    </style><style type="text/css">
          ul.koddostusagsocial{_position:absolute;}
          ul.koddostu-socialll{_bottom:auto;_top:expression(ie6=(document.documentElement.scrollTop+document.documentElement.clientHeight - 52+"px") );}</style>
          <style>
              ul#menusisi {margin: 0px;padding: 0px;list-style: none;}
              ul#menusisi li {opacity:1;width: 255px;margin-left: -200px;margin-bottom:1px;}
              ul#menusisi li a {display: block;width: 255px;height: 60px;text-shadow: 0 2px #000;font-family:Helvetica, Arial, sans-serif;font-weight:bold;font-size:14px;color:#fff !important;text-decoration:none !important;line-height:60px;padding-left:0px;background-color:#262626;background-repeat:no-repeat;background-position:202px center;border:1px solid #000;-webkit-border-top-right-radius: 10px;-webkit-border-bottom-right-radius: 10px;border-top-right-radius: 10px;border-bottom-right-radius: 10px;}.br6 a{background-image: url(http://icons.iconarchive.com/icons/oxygen-icons.org/oxygen/48/Actions-go-home-icon.png);}.te6 a{background-image: url(http://icons.iconarchive.com/icons/creativenerds/clean-noise-social/48/facebook-icon.png);}.cari a{background-image: url(http://icons.iconarchive.com/icons/creativenerds/clean-noise-social/48/twitter-icon.png);}
              .ko6 a{background-image: url(https://lh5.googleusercontent.com/-Vld13w4HBH4/UCaRaVdhj6I/AAAAAAAAARo/u0GBB8oAkAE/s48/google%252048x48.png);}.rssfeed a{background-image: url(http://icons.iconarchive.com/icons/creativenerds/clean-noise-social/48/youtube-icon.png);}.alat a{background-image: url(http://icons.iconarchive.com/icons/creativenerds/clean-noise-social/48/rss-icon.png);}.kontak a{background-image: url(http://icons.iconarchive.com/icons/fasticon/comic-iphone/48/mail-icon.png);}</style><script src='http://www.google.com/jsapi'></script><script>google.load('jquery', '1.3.2');</script><script type='text/javascript'>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        $(function () { $('#menusisi li').stop().animate({ marginLeft: '-200px' }, 1000); $('#menusisi li').mouseover(function () { $(this).animate({ marginLeft: '0px', opacity: '0.6' }, 200); }); $('#menusisi li').mouseout(function () { $(this).animate({ marginLeft: '-200px', opacity: '1' }, 800); }); });</script>
<div id="slayt">
<html>
<head>
<meta charset="utf-8">
<title>omerbozalan.com | Slider</title>
	<script src="js/jquery-2.1.3.min.js"></script>
    <script src="js/cycle2.js"></script>
  <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css" />
	<style type="text/css">
	*{
		margin:0;
		padding:0;
	}
	#container {
		width:100%;
		position:relative;s
		}
	#slideshow {
		height:100%;
		width:100%;
		}
	#slideshow img {
		height:100%;
		width:100%;
		position: absolute;
		z-index:10;
		min-width:100%;
		min-height:100%;
            top: 0px;
            left: 0px;
        }
	#pager {
		height:120px; 
		width:100%;
		background:rgba(0,0,0,0.5);
		position:absolute;
		bottom:5%;
		z-index:1000;
		text-align:center;
		opacity:0;
		transition:all .2s ease-in-out 0s;
		}
	#pager:hover {
		opacity:1;
		}
	#pager img {
		margin: 10px 5px;
		opacity:0.3;
		transition:all .3s ease-in-out 0s;
		}
	#pager img:hover {
		opacity:1;
		transform:scale(1.05);
		z-index:100;
		}
	#prev_c {
		height:100%;
		width:200px;
		position:absolute;
		left:0;
		top:0;
		z-index:100;
		}
		#prev_c img {
			height:120px;
			width:120px;
			position:absolute;
			top:0;
			bottom:0;
			left:0;
			margin:auto 0px;
			}
		
	#next_c {
		height:100%;
		width:200px;
		position:absolute;
		right:0;
		top:0;
		z-index:100;
		}
		#next_c img {
			height:120px;
			width:120px;
			position:absolute;
			top:0;
			bottom:0;
			right:0;
			margin:auto 0px;
			}
		#next #prev { visibility:hidden;}
		#next,#prev:hover {
			cursor:pointer;
			}
		#next_c,#prev_c:hover #next,#prev { visibility:visible;}
		
	</style>
</head>

<body>
<div id="container">
 

 <div id="slideshow" class="cycle-slideshow" 
 data-cycle-fx="fade" 
 data-cycle-manual-fx="scrollHorz" 
 data-cycle-pager-fx = "fade" 
 data-cycle-manual-speed="400"
 data-cycle-prev="#prev"  	
 data-cycle-next="#next"
 data-cycle-speed="600"  
 data-cycle-timeout="3000" 
 data-cycle-pager = "#pager" 
 data-cycle-pager-template="<a href='#'><img src='{{src}}' width=150 height=100></a>"
     > 
      
         <img src="img/Snow Mt Milky Way.jpg" id="intro_img"/>
         <img src="img/back.jpg" id="intro_img"/>
         <img src="img/Spring Scenery.jpg" id="intro_img"/>
        
        </div>

        <div id="pager"></div>
        
        <div id="prev_c"></div>
        <div id="next_c"></div>
</div>

<script type="text/javascript">

    function height() {
        var h = window.innerHeight;
        var a = document.getElementById('container');
        a.style.height = h + "px";
    }

    window.addEventListener('load', height);
    window.addEventListener('resize', height);
</script>
</body>
</html>

</div>
</asp:Content>

