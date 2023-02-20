<%@page import="bean.SanPhambean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog Huế</title>
    <link rel="stylesheet" href="./assets/css/style_Mexungthienhuong.css">
    <link rel="stylesheet" href="./assets/font/themify-icons-font/themify-icons/themify-icons.css">
   	<style type="text/css">
   		*{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
html{
    /* hành động cuộn */
    scroll-behavior: smooth;
 }
 body{
    font-family: Arial, Helvetica, sans-serif;  
    background: linear-gradient(to bottom, #B721FF, #2AF598, #fec051, #FEE140, #FA709A );
    background-size: 100%;
    background-repeat: no-repeat;
}
body:before{
  content:'';
  position: fixed;
  top: 0;
  bottom: 0;
  width: 100%;
  z-index: -1;
  background: linear-gradient(to right bottom, rgba(255,255,255,0.2), #21D4FD 75%);
}
#main{
    background-color: #fff;
    margin: -28px 125px;
    
}
.abc{
    background-color: #fff;
}
.img_header{
    padding-top: 22px;
    display: flex;
    margin: 28px 0px 0px 56px;
    width: 1113px;
    height: 240px;
}
.img1_header {
    width: 200px;
    height: 200px;
}
.img2_header{
    height: 200px;
    width: 100%;    
}
#menu{
}
#menu ul{ 
    list-style-type: none;
    text-align: center;  
    border-top: 3px solid #e8e8e8;
    border-bottom: 3px solid #e8e8e8;
    margin: 0px 56px;
}
#menu li{
    display: inline-block;
    line-height: 40px;
    padding: 8px 34px;
    
}
#menu li a{
    position: relative;
    padding: 19px 54px;
    color: #000;
    text-decoration: none;
    font-size: 20px;
    font-weight: bold; 
    font-family: 'Times New Roman', Times, serif;
}
#menu a::after {
    content: "";
    height: 3px;
    width: 0;
    background-color: rgb(199, 15, 245);
    position: absolute;
    bottom: -3px;
    left: 0px;
    transition: all 0.4s ease-in-out;
}
#menu a:hover{
    color:#3d033e;
    background-color:rgb(249, 213, 255) ;
}
#menu a:hover::after{
    width: 50%;
    transform: translateX(100%);
    cursor: pointer;
}
.slideshow{
    width: 1114px;
    margin: 0 auto;
    text-align: center;
    overflow: hidden;
    margin-top: 24px;
    position: relative;
    margin-bottom: 2px;
    padding-bottom: 26px;
}   
.dieuhung{
    position: absolute;
    top: 50%;
    margin-left: 15px;  
    display: none;
}
.dieuhung i{
    color: #fff;
    font-size: 35px;
    
}
.slideshow:hover .dieuhung{
    display: block;
}
.dieuhung i:last-child{
   position: relative;
   left: 1009px; 
}
.chuyen_slide{
    width: 99999px; 
    transition: 0.5s;
}
.chuyen_slide img{
    width: 1114px;
    height: 540px;
    float: left;
    border-radius: 10px;
}
/* content */
#content-all{
    margin: 0px 56px 24px 56px;
    display: flex;
    flex-direction: row;
}
.content{
    display: flex;
    width: 750px;
    flex-direction: column;
    margin-top: 2px;
    margin-right: 32px;
}
.duongdan{
    margin: 24px 0px;
}
.duongdan a{
    text-decoration: none;
    font-size: 12px;
    line-height: 24px;
    color: #a0a0a0;
    transition: all 0.2s ease-out 100ms;
}
.duongdan i{
    font-size: 9px;
    padding: 0px 3px;
}
.duongdan a:hover{
    color: #90278d;
}
.entry-header{
    margin-bottom: 28px;
}
.entry-header h1{
    font-size: 45px;
    font-weight: 700;
    font-family: 'Times New Roman', Times, serif;
    color: #111;
    margin-bottom: 18px;
    color: #770080;
}
.entry-header-container-auther{
    display: flex;
    flex-direction: row;
}
.entry-header-container-auther img{
    width: 35px;
    height: 35px;
}
.ti-minus{
    margin-top: 11px;
    margin-right: 6px;
}
.meta-category,.date,
.entry-header-container-auther a,
.entry-header-container-auther span{
    font-size: 14px;
    text-align: center;
    margin-top: 10px;
    margin-right: 9px;
}
.entry-header-container-auther span{
    color: #a0a0a0;
    
}
.entry-header-container-auther a{
    text-decoration: none;
    color: #90278d;
    font-weight: bold;
}
.date a,
.meta-category a{
    color: #a0a0a0;
}
.meta-category a{
    font-weight: 700;
}
.danhmuc{
    border: 2px solid #111;
    background-color: #f3f3f3;
    margin-bottom: 24px;
}
.danhmuc-header button{
    border: none;
}
.danhmuc-header-1{
    display: flex;
    flex-direction: row;
    padding: 10px;
}
.danhmuc-header-1:hover{
    cursor: pointer;
}
.danhmuc-header-1 h3,
.danhmuc-header-1 i{
    font-size: 24px;
    height: 33px;
}
.danhmuc-header-1 h3{
    padding-right: 552px;
}

.danhmuc-header .ti-list-ol{
    margin-top: 1px;
    margin-right: 5px;
    font-weight: bolder;
}

.danhmuc-header:hover .ti-angle-down{
    cursor: pointer;
    opacity: 0.5;
}
.danhmuc-list {
    display: none;
}
.hienthi{
    display: block;
}
.js-dropdow-noidung li,
.danhmuc-list li{
    list-style-type: none;
    margin-left:37px;
    margin-bottom: 14px;

}
.js-dropdow-noidung a,
.js-dropdow-noidung span,
.danhmuc-list a,
.danhmuc-list span{
    font-size: 15px;
    font-weight: bold;
    text-decoration: none;
    color: #111;
    transition: all 0.2s ease-out 100ms;
}
.js-dropdow-noidung a:hover,
.js-dropdow-noidung span:hover,
.danhmuc-list span:hover,
.danhmuc-list a:hover {
    cursor: pointer;
    color: #90278d;
}
.content-bet p{
    font-size: 16px;
    margin-bottom: 24px;
    line-height: 1.5;
}
.content-bet a{
    text-decoration: none;
    color: #2183DF;
}
.content-bet a:hover{
    color:#2e1c9f ;
    border-bottom:1px solid #2e1c9f ;
}
.dia_chi_lien_he p{

    font-size: 20px;
    font-weight: 500;
}
/* dacsan-buy */
.dacsan-buy{
    margin: 28px 0px;
}
.dacsan-buy p{
    text-align: left;
    margin: 20px 0px 24px 0px;
    border-bottom: 2px solid #969696;
    padding-bottom: 8px;
    font-size: 20px;
    font-family: sans-serif;
    font-weight: 500;
}
.dacsan-buy li{
    text-align: center;
    display: inline-block;
    width: 184px;
}
.dacsan-buy li:hover{
    box-shadow:0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
.dacsan-sanpham{
    margin: 12px;
    display: flex;
    flex-direction: column;
    align-items: center;
}
.dacsan-sanpham .price{
    margin-bottom: 12px;
}
.dacsan-sanpham .price p{
    display: inline;
    padding: 0px 0px;
    margin: 0px 0px;
    border: none;
    color: #6d6d6d;
    font-size: 13px;
}
.dacsan-sanpham-1{
    margin-bottom: 24px;
}
.dacsan-sanpham img{
    width:150px;
    height:125px ;
    margin-bottom: 8px;
}
.dacsan-sanpham h3{
    font-size: 14px;
    font-weight: 300;
    color: #000;
    margin:0px 4px 8px 4px;
    height: 33.6px;
}
.dacsan-sanpham span{
    font-size: 12px;
    color: #6d6d6d;
    margin-bottom: 14px;
}
.dacsan-sanpham-buy{    
    color: #90278d;
    border: 1px solid #90278d;
    border-radius: 5px;
    padding: 6px;
    background-color: white;
    font-size: 14px;
}
.dacsan-sanpham-buy:hover{
    background-color: #90278d;
    color: #fff;
}
/* modal */
.modal{
    position: fixed;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    background-color: rgba(0,0,0,0.4);
    display: none;
    align-items: center;
    justify-content: center;
    z-index: 9999;
}
.modal.open{
    display: flex;
}

.modal-container{
    background-color: #fff;
    width: 900px;
    max-width: calc(100% - 32px);
    min-height: 200px;
    position: relative;
    animation: modalFadeIn ease 0.5s;
}
.modal-header{
    background-color: #be14bc;
    color: #fff;
    padding: 28px 16px;
    font-size: 30px;
    letter-spacing: 4px;
    font-family: Arial, Helvetica, sans-serif;
    height: 129px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-weight: 400;
    line-height: 1.5;
    margin-bottom: 14px;
}
.modal-header i::before{
    padding-right: 16px;
}
.modal-close{
    position: absolute;
    right: 0; 
    top: 0;  
    color: #fff;
    padding: 8px 16px;
    font-size: 24px;
    text-align: center;
    opacity: 0.6;
}
.modal-close:hover{
    background-color: #ccc;
    color: #000;
    cursor: pointer;
    opacity: 0.8;
}
.modal-body{
    padding: 16px;
    display: flex;
    flex-direction: row;
}
.sanpham-buy-thongtinsp .tt-sp, .tt-sp-header{
    display: flex;
    flex-direction: row;
    margin-right: 12px;
}
.sanpham-buy-thongtinsp .tt-sp-header .sp{
    margin-right: 253px;
}
.sanpham-buy-thongtinsp .tt-sp-header .gia{
    margin-right: 54px;
}
.sanpham-buy-thongtinsp .tt-sp-header .sl{
    margin-right: 27px;
}
.sanpham-buy-thongtinsp .tt-sp-header{
    margin-bottom: 10px;
    font-size: 14px;
    font-weight: 700;
}
.sanpham-buy-thongtinsp{
    margin-right: 14px;
    display: flex;
    flex-direction: column;
    width: 500px;
    position: relative;
}
.sanpham-buy-thongtinsp .tt-sp{
    margin-bottom: 12px;
}
.sanpham-buy-thongtinsp .tt-sp .price{
    display: flex;
    flex-direction: row;
    margin-right: 35px;
    width: 50px;
}
.sanpham-buy-thongtinsp .tt-sp .price p{
   font-size: 14px;
   color: #6d6d6d;
   margin-bottom: 1px;
}
.sanpham-buy-thongtinsp> p{
    margin-bottom: 15px;
}
.sanpham-buy-thongtinsp img{
    width: 50px;
    height: 50px;
    border-radius: 5px;
    margin-right: 2px;
}
.sanpham-buy-thongtinsp h3{
    font-size: 14px;
    margin-right: 24px;
    width: 233px;
}
.sanpham-buy-thongtinsp span{
    font-size: 12px;
    color: #6d6d6d;
    margin-right: 2px;
    margin-top: 1px ;
}
.sanpham-buy-thongtinsp input{
    width:30px ;
    height: 20px;
    margin: 0px 30px 0px 0px;
}
.sanpham-buy-thongtinsp .hanh-dong{
    font-size: 20px;
}
.sanpham-buy-thongtinsp .hanh-dong:hover{
    color: red;
}
.price-total{
    position: absolute;
    bottom: 12px;
    margin-top: 8px;
    border-top:3px solid #111 ;
}
.price-total p{
    padding-top: 12px;
    font-size: 18px;
    font-weight: 700;
    width: 500px;
}
.price-total p > span{
    font-size: 16px;
    font-weight: 700;
    margin: 0px 0px;
    color: #111;
}

.sanpham-buy-thongtinkh{
    width: 350px;
}
.modal-label{
    margin: 15px 0 ;
}
.modal-label,.modal-input{
    font-size: 15px;
    display: block;
}
.modal-input{
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    margin-bottom: 20px;
}
.buy-ticket{
    width: 100%;
    padding: 16px;
    background-color: #be14bc;
    font-size: 15px;
    color: #fff;
    font-weight: 500;
    border:#be14bc;
    cursor: pointer;
}
.buy-ticket:hover{
    opacity: 0.9;
}
.modal-footer{
    float:right;
    padding: 16px;
    margin: 15px 0;
    font-size: 15px;
}
.modal-footer a{
    color: #2196F3;
}
/* Tạo ra chuyển động liên tiếp tĩnh (animation)  */
@keyframes modalFadeIn{
    from{
        opacity: 0;
        transform: translateY(-140px);
    }
    to{
        opacity: 1;
        transform: translateY(0);
    }
}
/* content-footer */
.content-footer{
    margin-top: 48px ;
}
.chia_se_bai_viet{
    display: flex;
    flex-direction: row;
    padding: 4px 0px;
    margin-bottom: 24px;
}
.chia_se_bai_viet span{
    font-size: 14px;
    font-family: Arial, Helvetica, sans-serif;
    margin-right: 18px;
    padding: 8px 0px;
}
.mang_xa_hoi img{
    width: 28px;
    height: 28px;
    margin-right: 14px;
}
.mang_xa_hoi img:hover{
    opacity: 0.5;
}
.bai_viet_lien_quan{
    margin-bottom: 44px;
}
.bai_viet_lien_quan h2{
    font-size: 20px;
    color: #111;
    margin-bottom: 6px;
}
.bai_viet_lien_quan ul{
    margin-left: 18px;
}
.bai_viet_lien_quan li{
    padding: 6px 0px;
}
.bai_viet_lien_quan a{
    text-decoration: none;
    color:#2183DF;
    font-weight: 700;
    font-size: 14px;
    transition: all 0.2s ease-out 100ms;
}
.bai_viet_lien_quan a:hover{
    color: #90278e;
}
.thong_tin_huu_ich{
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 20px;
    padding: 33px 25px;
    border-top:1px solid #efefef;
}
.thong_tin_huu_ich-header p{
    color: #777;
    font-size: 16px;
    margin-right: 20px;
}
.action-buttons{
    display: flex;
}
.action-buttons-no,
.action-buttons-yes{
    display: flex;
    justify-content: center;
    align-items: center;
    width: 165px;
}
.action-buttons-no i,
.action-buttons-yes i{
    background: #f1f1f1;
    border-radius: 50%;
    color: #8e8e8e;
    font-size: 1.2rem;
    height: 38px;
    line-height: 38px;
    margin-right: 5px;
    transition: .3s ease-out;
    display: flex;
    justify-content: center;
    width: 38px;
}
.action-buttons-yes i:hover{
    background-color: #0f9a1b;
    color:white;
}
.action-buttons-no i:hover{
    background-color: #ce140e;
    color:white;
}
.action-buttons-no span,
.action-buttons-yes span{
    font-size: 14px;
    color: #8e8e8e;
}
/* sidebar */
.sidebar{
    margin-top: 14px;
    width: 330px;
}
.search-content{
    
}
.search-content .search-content-header h4{
    padding-bottom: 12px;
    border-bottom: 3px solid #111111;
    width: 330px;
    margin-bottom: 2px;
    color: #111111;
    font-size: 18px;
    font-family: 'Times New Roman', Times, serif;
    
}
.search-content-input{
    border-top: 1px solid #111111;
    position: relative;
}
.search-content-input input{
    border: 1px solid #999999;
    width: 330px;
    height: 40px;
    padding: 8px ;
    margin: 18px 0px;
    font-weight: 700; 
}
.search-content-input button{
    font-size: 25px;
    position: absolute;
    right: 1px;
    bottom: 20px;
    border: none;
    padding: 0px 8px;
    background-color: #ffffff;
      
}
.search-content-input button:hover i{
    cursor: pointer;
    opacity: 0.5;
}
.search-content-input i{
    font-size: 25px;
}

.search-submit:hover{
    cursor: pointer;
    color: #90278d;
}
.ti-search{
    background-color:white;
    font-size: 20px;
    font-weight: bold;
}
.autobox{
    display: none;
}
.autobox li{
    margin-left: 6px;
    list-style-type: none;
    font-size: 14px;
    margin-bottom: 8px;
    cursor: pointer;
    font-weight: 500;
    
}
.active {
   display: block;

}
.autobox li:hover{
    color: #e61bf1;
}
/* sidebar-title-container */
.sidebar-title-container{
    padding-bottom: 1px;
    border-bottom: 1px solid #000;
}
.sidebar-title-container ul{
    border-bottom: 3px solid #111;
}
.sidebar-title-container li{
    display: inline-block;
    text-align: center;
}
.sidebar-title-container button{
    background-color: #ffffff;
    border: none;
    padding: 10px 47px;
    transition: all .2s ease 0s;
    color: #111;
    font-weight: bold;
    font-size: 16px;
}
.sidebar-title-container button:hover   
{
    cursor: pointer;
    background-color: #d523cf;
    color: #ffffff;
}

/* sidebar-content-container */
.sidebar-content-container-baimoi,
.sidebar-content-container-docnhieu{
    margin-top: 24px;
}
.sidebar-content-container-docnhieu{
    display: block;
}
.sidebar-content-container-baimoi{
    display: none;
}
.sidebar-content-container-docnhieu li,
.sidebar-content-container-baimoi li{
    display: flex;
    flex-direction: row;
}
.sidebar-content-container-docnhieu-img img,
.sidebar-content-container-baimoi-img img{
    height: 70px;
    width: 70px;
    margin-right: 14px;
    margin-bottom: 14px;
}
.sidebar-content-container-docnhieu-content a,
.sidebar-content-container-baimoi-content a{
    font-family: 'Times New Roman', Times, serif;
    font-weight: bold;
    color: #111;
    font-size: 14px;
    text-decoration: none;
    display: flex;
    flex-direction: column;
    margin-bottom: 18px;
    transition: all 0.2s ease-out 100ms;
}
.sidebar-content-container-docnhieu-content a:hover,
.sidebar-content-container-baimoi-content a:hover{
    color: #d523cf;
}
.sidebar-content-container-docnhieu-content span,
.sidebar-content-container-baimoi-content span{
    font-size: 13px;
    color: #999999;
}
/* sidebar-support */
.sidebar-support-header{
    border-bottom: 1px solid #111;
}
.sidebar-support-header h4{
    margin: 14px 0px 2px 0px;
    font-size: 18px;
    padding-bottom: 10px;
    border-bottom: 3px solid #111;
}
.sidebar-support-tagcloud{  
    margin-top: 18px;
}
.sidebar-support-tagcloud a{
    display: inline-block;
    padding: 3px 5px;
    margin-right:6px ;
    margin-bottom:6px ;
    border: 1px solid #111;
    font-family: Arial, Helvetica, sans-serif;
    font-size: 13px;
    text-decoration: none;
    color: #111;
    line-height: 1.3rem;
    transition: all 0.2s ease-out 100ms;
}
.sidebar-support-tagcloud a:hover{
    background-color: #ce85ed;
    border: 1px solid #66088e;
    color: #66088e;
}
/* footer */
.footer{
    background-color:#e0c2ed;
    padding-bottom: 40px;
}
.footer-content{
    display: flex;
    justify-content: center;
    
}

.footer-1,
.footer-2,
.footer-3,
.footer-4{
    padding-top: 48px;
    width: 300px;
    padding-left: 28px
}
.footer-1-header span,
.footer-2-header span,
.footer-3-header span,
.footer-4-header span{
    color: #3d033e;
    font-family: Arial, Helvetica, sans-serif;
    font-size: 13px;
    font-weight: 300;
}
.footer-2-header h3,
.footer-3-header h3,
.footer-4-header h3{
    margin-bottom: 12px;
}
.footer-2-content li,
.footer-3-content li{
    list-style-type: none;
}
.footer-2-content a,
.footer-3-content a{
    text-decoration: none;
    color:#3d033e ;
}
.footer-2-content a:hover,
.footer-3-content a:hover{
    color:#a672a7 ;
}
.footer-1-header h3{
    margin-bottom: 12px;
}
.footer-1-content-img{
     width: 263px;
     height: 180px;
     position: relative;
}
.footer-1-content-img img{
    width: 263px;
    height: 180px;
    position: relative;
    overflow: hidden; 
}
.footer-1-lh{
    position: absolute;
    top: 2253px;
    left: 174px;
}
.footer-1-theodoi{
    position: absolute;
    background-color: #ffffff;
    display: flex;
    flex-direction: row;
    padding: 0px 2px;
    top: 2383px;
    left: 174px;
    
}
.footer-1-lh li{
    list-style-type:none;
    display: flex;
    flex-direction: row;
}
.footer-1-lh-img{
    height: 54px;
    width: 54px;
    margin-right: 12px;
}
.footer-1-lh-img img{
    width: 55px;
    height: 55px;
    border: 1px solid #111;
}
.footer-1-lh-content{
    display: flex;
    flex-direction: column;
}
.footer-1-lh-content a{
    font-size: 18px;
    font-weight: bold;
    text-decoration: none;
    color: #770080;
    margin: 2px 0px
}
.footer-1-lh-content span{
    font-size: 12px;
    color: #ffffff;
}

.footer-1-theodoi:hover{
    cursor: pointer;
    background-color: #f4f0f0;
    transition: all 0.2s ease-out 100ms;
}
.footer-1-theodoi img{
    width: 20px;
    height: 20px;
}
.footer-1-theodoi a{
    margin: 5px 0px;
    text-align: center;
    font-size: 10px;
    font-weight: bold;
    text-decoration: none;
    color: #111;
}
.footer-1-contry{
    margin-top: 10px;
}
.footer-1-contry i{
    margin-right: 10px;
    display: inline-block;
}
.socials-list{
    height: 60px;
    text-align: center;
    background-color: #3d033e;
    padding: 20px;
}
.socials-list a{
    text-decoration: none;
    margin: 8px;
}
.socials-list i{
    font-size: 20px;
    color: #ffffff;
    transition: all 0.3s ease-out 100ms;
}
.ti-facebook:hover,
.ti-instagram:hover,
.ti-twitter-alt:hover,
.ti-linkedin:hover,
.ti-youtube:hover{
    color: #FF00FF;
}
   	</style>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
ArrayList<SanPhambean> dsSPKeo = (ArrayList<SanPhambean>)request.getAttribute("dsSPKeo");
%>
    <div id="main">
        <div class="header">
            <div class="abc">
            </div>
            <div class="img_header">
                <img class="img1_header" src="./assets/img/Blog Hue.png" alt="">
                <img class="img2_header"src="./assets/img/logo1_blog_hue.png" alt="">
            </div>
            <div id="menu">
                <ul>
                    <li>
                        <a href="http://localhost:8080/Hue/trangchu.html">TRANG CHỦ</a>
                    </li>
                    <li>
                        <a href="#amthuc">ẨM THỰC</a>
                    </li>
                    <li>
                        <a href="#dulich">DU LỊCH</a>
                    </li>
                    <li>
                        <a href="#dacsan">ĐẶC SẢN</a>
                    </li>
                </ul>
            </div>    
        </div>
        <div id="content-all">
            <div class="content">
                <div class="duongdan">
                    <span>
                        <a href="http://localhost:8080/Hue/trangchu.html">Trang chủ</a>
                    </span>
                    <i class="ti-angle-right"></i>
                    <span>
                        <a href="">Đặc sản</a>
                    </span>
                </div>
                <div class="entry-header">
                <h1>
                    MÈ XỮNG THIÊN HƯƠNG
                </h1>
                <div class="entry-header-container">
                    <div class="entry-header-container-auther">
                        <img src="./assets/img/Blog Hue.png" alt="">
                        <span>by</span>
                        <a href="">bloghue</a>
                        <i class="ti-minus"></i>
                        <div class="date">
                            <a href="">30 Tháng 1, 2023</a>
                        </div>
                        <div class="meta-category">
                            <span>in</span>
                            <a href="">Đặc sản</a>
                        </div>
                    </div>
                </div>
                </div>
                <div class="content-bet">
                    <p>
                        <strong>Mè Xửng Thiên Hương</strong>
                         là một trong những sản phẩm đặc sản Huế nổi tiếng của cố đô Huế.
                    </p>
                    <p>
                        <strong>Công ty TNHH Thiên Hương</strong>
                         tiền thân là cơ sở sản xuất mè xửng Thiên Hương từ năm 1979 và được kế thừa nghề gia truyền từ năm 1940. Thiên Hương luôn mang đến cho quý quan khách du lịch những sản phẩm đặc sản mang đậm bản sắc truyền thống xứ Huế khó quên như: Kẹo mè xửng, kẹo đậu phộng, kẹo mè đen, kẹo gừng, kẹo gương…
                    </p>
                    <p>
                        <strong>Đặc sản mè xửng Huế</strong>
                         có tên gọi theo nguyên liệu chính là mè và cách làm xửng (cách hoán đường cô đặc dẻo). Ngoài mè (vừng) thì mạch nha, đậu phong hay bánh đa cũng là những thành phần của mè xửng. Vị ngọt của đường, sự dẻo của mạch nha cùng với sự giòn của đậu phộng ăn vào một miếng khiến người ta nhớ mãi.
                    </p>
                    <div class="dia_chi_lien_he">
                        <p>Địa chỉ liên hệ: </p>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d8589.87056735676!2d107.57977978502703!3d16.457694143206076!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3141a149950ae205%3A0x7ade8446d4dc76d0!2zTcOoIFjhu69uZyBUaGnDqm4gSMawxqFuZw!5e0!3m2!1svi!2s!4v1676048837919!5m2!1svi!2s" width="750" height="500" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                    
                    <div class="dacsan-buy">
                        <p>ĐẶT HÀNG TẠI ĐÂY 
                            <i class="ti-hand-point-down"></i>
                        </p>
                        <ul >
                            <%
                        	if(dsSPKeo !=null){
                        		for(SanPhambean sp : dsSPKeo){
                        			%>
                        			<li>
		                                <div class="dacsan-sanpham">
		                                        <img id="js-sanpham-img" src="<%=sp.getAnhSP() %>" alt="Mè xửng Thiên Hương (hộp đỏ 500gr)">
		                                        <h3><%=sp.getTenSP() %></h3>
		                                        <div class="price">
                                            		<span><%=(int)sp.getGia() %></span>
                                            		<p>đ</p>
                                       			</div>
		                                        <button href="" class="dacsan-sanpham-buy js-sanpham-buy">Mua hàng</button>
		                                    
		                                </div>
                            		</li>
                        			
                        			<%
                        		}
                        	}
                        %>
                        </ul>
                </div>   
            </div>
            <!--Modal-->
             <div class="modal js-modal">
                <div class="modal-container js-modal-container">
                    <div class="modal-close js-modal-close"><i class="ti-close"></i></div>
                    <header class="modal-header">
                            <i class="ti-shopping-cart">MUA HÀNG</i>
                    </header>
                    <div class="modal-body">
                        <div class="sanpham-buy-thongtinsp js-buy-thongtinsp">
                            <p>THÔNG TIN SẢN PHẨM</p>
                            <div class="tt-sp-header">
                                <p class="sp">Sản Phẩm</p>
                                <p class="gia">Giá</p>
                                <p class="sl">SL</p>
                                <p class="chon">Chọn</p>
                            </div>
                            <div class="tt-sp-all">

                            </div>
                            <!-- <div class="tt-sp">
                                <img id="js-buy-img" src="./assets/img/Special/special-buy/4.jpg" alt="">
                                <h3>Nước mắm ruốc Huế cao cấp (2 chai/600ml)</h3>
                                <span>200.000đ</span>
                                <input type="number" value="1">
                                <div class="hanh-dong">
                                    <i class="ti-trash"></i>
                                </div>  
                            </div> -->
                            <div class="price-total">
                                <p>Tổng tiền: <span>0</span>đ</p>
                            </div>
                        </div>
                        <div class="sanpham-buy-thongtinkh">
                            <p>THÔNG TIN KHÁCH HÀNG</p>
                            <label for="ticket-quanlity" class="modal-label">
                                <i class="ti-user"></i>
                                Họ và tên: 
                            </label>
                            <input id="ticket-quanlity" type="text" class="modal-input" sanphamholder="How many?">
                            <label for="ticket-quanlity" class="modal-label">
                                <i class="ti-map"></i>
                                Địa chỉ: 
                            </label>
                            <input id="ticket-quanlity" type="text" class="modal-input" sanphamholder="How many?">
                            <label for="ticket-quanlity"
                            class="modal-label">
                                <i class="ti-mobile"></i>
                                Số điện thoại: 
                            </label>
                            <input id="ticket-quanlity" type="text" class="modal-input" sanphamholder="How many?">
                            <label for="ticket-email" class="modal-label">
                                <i class="ti-email"></i>
                                Email:
                            </label>
                            <input id="ticket-email" type="email" class="modal-input" sanphamholder="Enter email">
                            <button class="buy-ticket">
                                PAY<i class="ti-check"></i>
                            </button>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <p class="modal-help"><a href="#">Support?</a></p>
                    </div>
                </div>
            </div>   
                <div class="content-footer">
                    <div class="chia_se_bai_viet">
                        <span>Chia sẻ bài viết qua: </span>
                        <div class="mang_xa_hoi">
                            <a href=""><img src="dacsan/assets/img/icon_zalo.png" alt="zalo"></a>
                            <a href=""><img src="dacsan/assets/img/logo_facebook.png" alt="facebook"></a>
                            <a href=""><img src="dacsan/assets/img/logo_twitter.png" alt="Twitter"></a>
                            <a href=""><img class="copylink" src="dacsan/assets/img/logo_copylink.png" alt="copylink"></a>
                        </div>
                    </div>
                    <div class="bai_viet_lien_quan">
                        <h2>
                            Bài viết liên quan
                        </h2>
                        <ul>
                            <li>
                                <a href="http://localhost:8080/Hue/MaCoRiController">Mắm cô Ri Huế</a>
                                
                            </li>
                            <li>
                                <a href="http://localhost:8080/Hue/DauTramController">Tinh dầu tràm Huế Cung Đình Vỹ Dạ</a> 
                            </li>
                            <li>
                                <a href="http://localhost:8080/Hue/TraController">Trà cung đình Đức Phượng</a> 
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="sidebar">
                <div class="search-content">
                    <div class="search-content-header">
                        <h4>TÌM BÀI VIẾT</h4>
                    </div>
                    <div class="search-content-input">
                                <input class="search-field" type="text"  placeholder="Search">
                                <button>
                                    <i class="ti-search"></i>
                                </button>
                    </div>
                    <div class="autobox">
                                <li>
                                    TOP 10 Quán Cơm Ở Huế Ngon Chuẩn Mẹ Nấu. Ghé Thử Ngay!</li>
                                <li>Top 10 quán bún bò ngon ở Huế gây thương nhớ nhất</li>
                               <li>Top 11 địa chỉ bán Bánh Lọc Huế ngon bá cháy ăn 1 lần là thèm mãi</li>
                               <li>Top 5 quán bánh ép Huế ngon nổi tiếng không thể bỏ lỡ.</li>
                                <li>Top 10 Quán Cơm Hến Huế siêu ngon sạch sẽ rất đông khách</li>
                                <li>17 địa điểm du lịch đẹp có thể bạn chưa biết ở Huế</li>
                                <li>Làng hương Thủy Xuân Huế - Khám phá làng nghề 700 năm tuổi giữa lòng cố đô</li>
                                <li>Đại Nội Huế - Hướng dẫn tham quan tìm về dấu ấn lịch sử cố đô</li>
                                <li>Cầu Tràng Tiền Huế - Chứng nhân lịch sử đẹp mãi theo thời gian</li>
                                <li>Chùa Thiên Mụ, Điểm Đến Tâm Linh Nên Thơ Xứ Huế</li>
                                <li>Me xững Thiên Hương</li>
                                <li>Mắm cô Ri Huế</li>
                                <li>Đầu tràm Huế</li>
                                <li>Nem chả Bảy Khánh</li>
                                <li>Trà cung đình Đức Phượng</li>
                                <li>Trầm hương Huế</li>
                    </div>
                </div>
                <div class="sidebar-title-container">
                    <ul>
                        <li>
                            <button id="js-docnhieu" >Đọc nhiều
                            </button>
                        </li>
                        <li>
                            <button id="js-baimoi"> Bài mới
                            </button>
                        </li>
                    </ul>
                </div>
                <div class=" sidebar-content-container">
                    <div id="js-content-docnhieu" class="  sidebar-content-container-docnhieu">
                        <ul>
                            <li>
                                <div class="sidebar-content-container-docnhieu-img">
                                    <img src="./assets/img/Food/3.jpg" alt="cơm hến">
                                </div>
                                <div class="sidebar-content-container-docnhieu-content">
                                    <a href="http://localhost:8080/Hue/amthuc/Quan_com_hen_hue.html">Top 10 Quán Cơm Hến Huế siêu ngon sạch sẽ rất đông khách</a>
                                    <span>31/01/2023
                                    </span>
                                </div>
                            </li>
                            <li>
                                <div class="sidebar-content-container-docnhieu-img">
                                    <img src="./assets/img/Food/5.jpg" alt="Bánh lọc Huế">
                                </div>
                                <div class="sidebar-content-container-docnhieu-content">
                                    <a href="http://localhost:8080/Hue/amthuc/Banh_loc_hue.html">
                                        Top 11 địa chỉ bán Bánh Lọc Huế ngon bá cháy ăn 1 lần là thèm mãi</a>
                                    <span>31/01/2023
                                    </span>
                                </div>
                            </li>
                            <li>
                                <div class="sidebar-content-container-docnhieu-img">
                                    <img src="./assets/img/Travel/4.jpg" alt="Cầu Trường Tiền">
                                </div>
                                <div class="sidebar-content-container-docnhieu-content">
                                    <a href="http://localhost:8080/Hue/dulich/Cau_trang_tien.html">Cầu Tràng Tiền Huế - Chứng nhân lịch sử đẹp mãi theo thời gian</a>
                                    <span>31/01/2023
                                    </span>
                                </div>
                            </li>
                            <li>
                                <div class="sidebar-content-container-docnhieu-img">
                                    <img src="./assets/img/Food/6.jpg" alt="Bún bò huế">
                                </div>
                                <div class="sidebar-content-container-docnhieu-content">
                                    <a href="http://localhost:8080/Hue/amthuc/Quan_bun_bo_hue.html">Top 10 quán bún bò ngon ở Huế gây thương nhớ nhất</a>
                                    <span>31/01/2023
                                    </span>
                                </div>
                            </li>
                            <li>
                                <div class="sidebar-content-container-docnhieu-img">
                                    <img src="./assets/img/Travel/1.jpg" alt="Làng hương thủy xuân">
                                </div>
                                <div class="sidebar-content-container-docnhieu-content">
                                    <a href="http://localhost:8080/Hue/dulich/Lang_huong.html">
                                        Làng hương Thủy Xuân Huế - Khám phá làng nghề 700 năm tuổi</a>
                                    <span>31/01/2023
                                    </span>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div id="js-content-baimoi"
                    class="sidebar-content-container-baimoi">
                        <ul>
                            <li>
                                <div class="sidebar-content-container-baimoi-img">
                                    <img src="./assets/img/Food/4.jpg" alt="Bánh ép">
                                </div>
                                <div class="sidebar-content-container-baimoi-content">
                                    <a href="http://localhost:8080/Hue/amthuc/Banh_ep_hue.html">Bánh ép Huế – đặc sản nên thử trong tour Huế 1 ngày</a>
                                    <span>31/01/2023
                                    </span>
                                </div>
                            </li>
                            <li>
                                <div class="sidebar-content-container-baimoi-img">
                                    <img src="./assets/img/Travel/3.jpg" alt="Đại nội Huế">
                                </div>
                                <div class="sidebar-content-container-baimoi-content">
                                    <a href="http://localhost:8080/Hue/dulich/Dai_Noi_Hue.html">
                                        Đại Nội Huế - Hướng dẫn tham quan tìm về dấu ấn lịch sử cố đô</a>
                                    <span>31/01/2023
                                    </span>
                                </div>
                            </li>
                            <li>
                                <div class="sidebar-content-container-baimoi-img">
                                    <img src="./assets/img/Travel/4.jpg" alt="Cầu Trường Tiền">
                                </div>
                                <div class="sidebar-content-container-baimoi-content">
                                    <a href="http://localhost:8080/Hue/dulich/Cau_trang_tien.html">Cầu Tràng Tiền Huế - Chứng nhân lịch sử đẹp mãi theo thời gian</a>
                                    <span>31/01/2023
                                    </span>
                                </div>
                            </li>
                            <li>
                                <div class="sidebar-content-container-baimoi-img">
                                    <img src="./assets/img/Food/6.jpg" alt="Bún bò huế">
                                </div>
                                <div class="sidebar-content-container-baimoi-content">
                                    <a href="http://localhost:8080/Hue/amthuc/Quan_bun_bo_hue.html">Top 10 quán bún bò ngon ở Huế gây thương nhớ nhất</a>
                                    <span>31/01/2023
                                    </span>
                                </div>
                            </li>
                            <li>
                                <div class="sidebar-content-container-baimoi-img">
                                    <img src="./assets/img/Travel/1.jpg" alt="Làng hương thủy xuân">
                                </div>
                                <div class="sidebar-content-container-baimoi-content">
                                    <a href="http://localhost:8080/Hue/dulich/Lang_huong.html">
                                        Làng hương Thủy Xuân Huế - Khám phá làng nghề 700 năm tuổi</a>
                                    <span>31/01/2023
                                    </span>
                                </div>
                            </li>
                        </ul>

                    </div>
                </div>
                <div class="sidebar-support">
                    <div class="sidebar-support-header">
                        <h4>
                            BẠN QUAN TÂM CHỦ ĐỀ GÌ?
                        </h4>
                    </div>
                    <div class="sidebar-support-tagcloud">
                        <a href="">Book khách sạn Huế</a>
                        <a href="">Quán ăn vặt giá rẻ</a>
                        <a href="">Quán cơm gia đình</a>
                        <a href="">Quán nhậu ngon tại Huế </a>
                        <a href="">Quán bánh lọc ngon tại Huế</a>
                        <a href="">Địa điểm check-in đẹp</a>
                        <a href="">Địa điểm bán đồ lưu niệm tại huế</a>
                        <a href="">Quán bún hến ngon</a>
                        <a href="">Phố đi bộ</a>
                        <a href="">Quán cafe đẹp</a>
                        <a href="">Đồi Thiên An</a>
                        <a href="">Đồi Vọng Cảnh</a>
                        <a href="">Biển Thuận An</a>
                        <a href="">Đại nội huế</a>
                        <a href="">Lăng Tự Đức</a>
                        <a href="">Bánh ép Thuận An</a>
                        <a href="">Mắm tôm huế</a>
                        <a href="">Chợ Đông Ba</a>
                        <a href="">Bánh ép Lê Ngô Cát</a>
                        <a href="">Phố Tây</a>
                        <a href="">Cầu Trường Tiền</a>
                        <a href="">Quán bún bò bà Đào</a>
                        <a href="">Lăng Minh Mạng</a>
                        <a href="">Quốc học Huế</a>
                        <a href="">Sông Hương</a>
                        <a href="">Nhà thờ Phủ Cam</a>
                        <a href="">Lăng Khải Định</a>
                        <a href="">Cung An Định</a>
                        <a href="">Chùa Thiên Mụ</a>
                        <a href="">Thiền viện Trúc Lâm Bạch Mã</a>
                        <a href="">Chùa Từ Hiếu</a>
                    </div>
                </div>
            </div>  
        </div>
        <div class="thong_tin_huu_ich">
            <div class="thong_tin_huu_ich-header">
                <p>Thông tin trên có hữu ích với Quý khách?</p>
            </div>
            <div class="action-buttons">
                <div class="action-buttons-yes">
                    <i class="ti-thumb-up"></i>
                    <span>Rất hữu ích</span>
                </div>
                <div class="action-buttons-no">
                    <i class="ti-thumb-down"></i>
                    <span>Không, cám ơn</span>
                </div>
            </div>
        </div>
        <div class="footer">
            <div class="footer-content">
                <div class="footer-1">
                    <div class="footer-1-header">
                        <h3>
                            <span>
                                LIKE ĐỂ BIẾT THÊM NHỮNG THÔNG TIN HỮU ÍCH KHI ĐẾN HUẾ
                           </span>   
                        </h3>
                    </div>
                    <div class="footer-1-content">
                        <div class="footer-1-content-img">
                            <img src="./assets/img/Food/3.jpg" alt="">
                        </div>
                        <div class="footer-1-lh">
                            <ul>
                                <li>
                                    <div class="footer-1-lh-img">
                                        <img src="./assets/img/Blog Hue.png" alt="">
                                    </div>
                                    <div class="footer-1-lh-content">
                                        <a href="">Blog Huế</a>
                                        <span>9999 người theo dõi</span>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="footer-1-theodoi">
                            <img src="./assets/img/logo_facebook.png" alt="">
                            <a href="">Thích trang</a>
                            
                        </div>
                    </div>
                    <div class="footer-1-contry">
                        <p>
                            <i class="ti-location-pin"></i>Thừa Thiên Huế
                        </p>
                        <p>
                            <i class="ti-mobile">
                            </i>Phone:<a href="tel:0123456789">0123456789
                            </a>
                        </p>
                        <p>
                            <i class="ti-email"></i>Email: <a href="mailto: mail@mail.com">mail@mail.com </a> 
                        </p>
                    </div>
                </div>
                <div class="footer-2">
                    <div class="footer-2-header">
                        <h3>
                            <span>THÔNG TIN</span>
                        </h3>
                    </div>
                    <div class="footer-2-content">
                        <ul>
                            <li>
                                <a href="">Giới thiệu</a>
                            </li>
                            <li>
                                <a href="">Liên hệ</a>
                            </li>
                        </ul>
                    </div>
                    
                </div>
                <div class="footer-3">
                        <div class="footer-3-header">
                            <h3>
                                <span>CHÍNH SÁCH</span>
                            </h3>
                        </div>
                        <div class="footer-3-content">
                            <ul >
                                <li>
                                    <a href="">Chính sách bảo mật</a>
                                </li>
                                <li>
                                    <a href="">Chính sách bản quyền</a>
                                </li>
                            </ul>
                        </div>
                        
                </div>
                <div class="footer-4">
                        <div class="footer-4-header">
                            <h3>
                                <span>ĐỐI TÁC</span>
                            </h3>
                        </div>
                </div>
            </div>
        </div>
        <div class="socials-list">
            <a href=""><i class="ti-facebook"></i></a> 
            <a href=""><i class="ti-instagram"></i></a>
            <a href=""><i class="ti-twitter-alt"></i></a>
            <a href=""><i class="ti-linkedin"></i></a> 
            <a href=""><i class="ti-youtube"></i></a> 
        </div>
    </div>
</body>
<script>
    const btnDocNhieu = document.getElementById("js-docnhieu");
    var btnBaiMoi = document.getElementById("js-baimoi");
    var ContentDocNhieu = document.getElementById('js-content-docnhieu');
    var ContentBaiMoi = document.getElementById('js-content-baimoi');
    let DocNhieu = document.getElementById('js-tendocnhieu');
    let BaiMoi = document.getElementById('js-tenbaimoi');
    btnDocNhieu.onclick = function(){
        btnDocNhieu.style.background = '#d523cf';
        btnDocNhieu.style.color='#ffffff';
        btnBaiMoi.style.background = '#ffffff';
        btnBaiMoi.style.color='#111';
        document.getElementById("js-content-docnhieu").style.display="block"; 
        document.getElementById("js-content-baimoi").style.display="none"; 
    }
    btnBaiMoi.onclick = function(){
        btnBaiMoi.style.background = '#d523cf';
        btnBaiMoi.style.color='#ffffff';
        btnDocNhieu.style.background = '#ffffff';
        btnDocNhieu.style.color='#111';
        document.getElementById("js-content-baimoi").style.display="block";   
        document.getElementById("js-content-docnhieu").style.display="none"; 
    }
</script>
<script>
    function hamdropdow(){
        document.querySelector(".js-dropdow-noidung").classList.toggle("hienthi");
    }

</script>
<!-- Mua hàng -->
<script>
    const buyBtns = document.querySelectorAll('.js-sanpham-buy')
    const modal = document.querySelector('.js-modal')
    const modalClose =document.querySelector('.js-modal-close')
    const modalContainer =document.querySelector('.js-modal-container')
    //Hàm hiển thị modal mua vé (Thêm class open vào modal)
    function ShowBuyTicket(){
        modal.classList.add('open')
    }
    //Hàm ẩn modal mua vé (gỡ bỏ class open của modal)
    function StopBuyTicket(){
        modal.classList.remove('open')
        
    }
    //Lặp qua từng thẻ button và nghe hành vi click
    for(const buyBtn of buyBtns){
        buyBtn.addEventListener('click',ShowBuyTicket)
    }
    for(const buyBtn of buyBtns){
        buyBtn.addEventListener('click',function(event){
            var btnItem = event.target;
            var SanPham = btnItem.parentElement;
            var SanPhamimg = SanPham.querySelector('img').src;
            var SanPhamten = SanPham.querySelector('h3').innerText;
            var SanPhamgia = SanPham.querySelector('span').innerText;
            addbuy(SanPhamimg,SanPhamten,SanPhamgia)
        });
    }
    function addbuy(SanPhamimg, SanPhamten,SanPhamgia){
        var adddiv = document.createElement("div");
        var cartItem = document.querySelectorAll(".tt-sp-all .tt-sp");
        for (var i = 0 ; i < cartItem.length ; i++) {
            var productT =document.querySelectorAll(".title")
            if(productT[i].innerHTML == SanPhamten ){
                alert("Sản phẩm của bạn đã có trong giỏ hàng");
                return
            }

        }
        var divContent = ' <div class="tt-sp"><img id="js-buy-img" src="'+SanPhamimg+'" alt=""><h3 class="title">'+SanPhamten+'</h3><div class="price"><span>'+SanPhamgia+'</span><p>đ</p></div><input type="number" value="1"><div class="hanh-dong"><i class="ti-trash"></i></div></div>';
        adddiv.innerHTML = divContent
        var sp= document.querySelector(".tt-sp-all");
        sp.append(adddiv)
        cartTotal();
        deleteCart();
    }
    function cartTotal(){
        var cartItem = document.querySelectorAll(".tt-sp-all .tt-sp");
        var totalIC =0;
        for (var i = 0 ; i < cartItem.length ; i++) {
            var inputValue = cartItem[i].querySelector("input").value;
            var productPrice = cartItem[i].querySelector("span").innerHTML;
            totalA = inputValue*productPrice;
            // totalB = totalA.toLocaleString('de-DE');    
            totalIC = totalIC + totalA;
            // totalD = totalIC.toLocaleString('de-DE');
        }
        var cartTotalA = document.querySelector(".price-total span");
        cartTotalA.innerHTML = totalIC.toLocaleString('de-DE');
        inputChange();
    }
    function deleteCart(){
        var cartItem = document.querySelectorAll(".tt-sp-all .tt-sp");
        for (var i = 0 ; i < cartItem.length ; i++) {
            var productT =document.querySelectorAll(".hanh-dong i");
            console.log(productT);
            productT[i].addEventListener("click", function(event){
                var cartDelete = event.target;
                var cartItemR = cartDelete.parentElement.parentElement;
                cartItemR.remove();
                console.log(cartItemR);
                cartTotal();
            })
        } 
    }
    function inputChange(){
        var cartItem = document.querySelectorAll(".tt-sp-all .tt-sp");
        for (var i = 0 ; i < cartItem.length ; i++) {
            var inputValue = cartItem[i].querySelector("input");
            inputValue.addEventListener("change",function(){
                cartTotal()
            })
        }   
    }
    
    //Nghe hành vi click vào button close
    modalClose.addEventListener('click',StopBuyTicket)
    //Nghe hành vi click vào modal
    modal.addEventListener('click',StopBuyTicket)
    //Nghe hành vi click vào modal-container
    modalContainer.addEventListener('click',function(event){
        event.stopPropagation()
    })
</script>
<script>
    const inputSearch = document.querySelector(".search-field");
    const autoBox = document.querySelector(".autobox");
    console.log(autoBox);
    inputSearch.onkeyup = (e) =>{
        // console.log(e.target.value);
        let checkData = e.target.value;
        let recomentlist = ["TOP 10 Quán Cơm Ở Huế Ngon Chuẩn Mẹ Nấu. Ghé Thử Ngay!",
                        "Top 10 quán bún bò ngon ở Huế gây thương nhớ nhất",
                        "Top 11 địa chỉ bán Bánh Lọc Huế ngon bá cháy ăn 1 lần là thèm mãi",
                    "Top 5 quán bánh ép Huế ngon nổi tiếng không thể bỏ lỡ.",
                "Top 10 Quán Cơm Hến Huế siêu ngon sạch sẽ rất đông khách",
            "17 địa điểm du lịch đẹp có thể bạn chưa biết ở Huế",
        "Chùa Thiên Mụ, Điểm Đến Tâm Linh Nên Thơ Xứ Huế",
    "Cầu Tràng Tiền Huế - Chứng nhân lịch sử đẹp mãi theo thời gian",
"Đại Nội Huế - Hướng dẫn tham quan tìm về dấu ấn lịch sử cố đô",
"Làng hương Thủy Xuân Huế - Khám phá làng nghề 700 năm tuổi giữa lòng cố đô",
"Me xững Thiên Hương","Mắm cô Ri Huế","Tinh dầu tràm Huế","Nem chả Bảy Khánh","Trà cung đình Dức Phượng","Trầm hương Huế"]
        let dataArray=[];
        if(checkData){
            dataArray=recomentlist.filter((data)=>{
                return data.toLocaleLowerCase().startsWith(checkData.toLocaleLowerCase());
            })
            console.log(dataArray);
            dataArray = dataArray.map((data)=>{
                return data = '<li>' + data + '</li>'
            })
            autoBox.classList.add('active');
            showAddress(dataArray);
            let liItem = document.querySelectorAll(".autobox li");
            for(let i = 0; i < liItem.length;i++){
                liItem[i].addEventListener("click",function(){
                    inputSearch.value = liItem[i].innerHTML;
                })
            }   
        }else{
            autoBox.classList.remove('active');
        }
    }
    function showAddress (list){
        let listData
        if(!list.length){
            listData = '<li>' +inputSearch.value + '</li>'
        }else{
            listData = list.join('')
        }
        autoBox.innerHTML = listData
    }  
</script>
</html>