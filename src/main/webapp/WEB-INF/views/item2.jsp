<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP&display=swap" rel="stylesheet">
<script type="text/javascript" id="www-widgetapi-script" src="https://s.ytimg.com/yts/jsbin/www-widgetapi-vflS50iB-/www-widgetapi.js" async=""></script>
<script src="https://connect.facebook.net/signals/config/191406278856126?v=2.9.18&amp;r=stable" async=""></script>
<script src="https://connect.facebook.net/en_US/fbevents.js"></script>
<script src="http://cr.acecounter.com/Mobile/AceCounter_CTS.js?gc=AP1A440433936&amp;py=0&amp;up=&amp;rd=1590020234257"></script>
<script type="text/javascript">
	//<![CDATA[
	// sta1.com trace script Ver.1.0
	var S_sta1_script_domain = "dropshop.co.kr";
	var S_sta1_script_ver = "1.0";
	var S_sta1_script_check_num = 1;
	var S_sta1_script_location = "trace.sta1.co.kr";
	function S_cimgs() {
		return new Image();
	}
	function S_pt(url) {
		return document.location.protocol == "https:" ? "https://" + url
				: "http://" + url;
	}
	var S_sta1_cimg_url = S_sta1_script_location + "/script/"
			+ S_sta1_script_domain + "/check.gif?r=" + Math.random();
	var S_sta1_script_url = S_sta1_script_location + "/script/"
			+ S_sta1_script_domain + "/script.php?r=" + Math.random();
	function S_sta1_cbScIm(url) {
		var S_sta1_load_check_time;
		var S_sta1_load_check_clearTimer = function() {
			if (S_sta1_load_check_time) {
				clearTimeout(S_sta1_load_check_time);
				S_sta1_load_check_time = null;
			}
		};
		var S_sta1_load_check_handleFail = function() {
			this.onload = this.onabort = this.onerror = function() {
			};
			S_sta1_load_check_clearTimer();
			if (this.src === url) {
				this.src = "#sta1";
			}
		};
		var S_sta1_load_check_img = S_cimgs();
		S_sta1_load_check_img.onerror = S_sta1_load_check_img.onabort = S_sta1_load_check_handleFail;
		S_sta1_load_check_img.onload = function() {
			ld_sta1_cbScSt();
			S_sta1_load_check_clearTimer();
		};
		S_sta1_load_check_img.src = url;
		S_sta1_load_check_time = setTimeout(function(theImg) {
			return function() {
				S_sta1_load_check_handleFail.call(theImg);
			};
		}(S_sta1_load_check_img), 3000);
		return (S_sta1_load_check_img);
	}
	function ld_sta1_cbScSt() {
		var S_sta1_html_head = document.getElementsByTagName("head")[0];
		var S_sta1_script = document.createElement("script");
		S_sta1_script.type = "text/javascript";
		var S_sta1_loaded = false;
		S_sta1_script.onreadystatechange = function() {
			if (this.readyState == "loaded" || this.readyState == "complete") {
				if (S_sta1_loaded) {
					return;
				}
				S_sta1_loaded = true;
			}
		};
		S_sta1_script.src = S_pt(S_sta1_script_url);
		S_sta1_script.charset = "utf-8";
		S_sta1_html_head.appendChild(S_sta1_script);
	}
	S_sta1_cbScIm(S_pt(S_sta1_cimg_url));
	//]]>
</script>
<style type="text/css">

#wrap {
    position: relative;
    width: 100%;
    margin: 0 auto;
    padding: 0;
    border: 0px solid #eee;
    border-top: 0;
    border-bottom: 0;
}

#containerTop {
	position: relative;
	float: left;
	width: 100%;
	height: 30px;
	margin: 0 auto;
    *zoom: 1;
    overflow: hidden;
    border-left: 0px solid #eee;
}

#container {
    position: relative;
    float: left;
    width: 100%;
    height: 20%;
    margin: 0 auto;
    *zoom: 1;
    overflow: hidden;
    border-left: 0px solid #eee;
}

.-hexagon {
    width: 14px;
    height: 8.08px;
    background-color: #333;
    margin: 4.04px 0 4.04px -7px;
    position: absolute;
    left: 50%;
    top: -8px;
    cursor: pointer;
}
.-mos {
    -webkit-transition: all 0.3s ease;
    -khtml-transition: all 0.3s ease;
    -moz-transition: all 0.3s ease;
    -ms-transition: all 0.3s ease;
    -o-transition: all 0.3s ease;
    transition: all 0.3s ease;
}
.-hexagon:after {
    top: 100%;
    width: 0;
    border-top: 4.04px solid #333;
}
.-footer-contents {
    font-size: 11px;
    letter-spacing: 0.03em;
    padding: 30px 0;
}
.-footer-contents, .-footer-contents a {
}
.-footer-contents {
    color: #666;
}
[wid="true"] {
    width: 1260px;
}
[wid] {
    margin: 0 auto;
    position: relative;
    -webkit-box-sizing: border-box;
    -khtml-box-sizing: border-box;
    -moz-box-sizing: border-box;
    -ms-box-sizing: border-box;
    -o-box-sizing: border-box;
    box-sizing: border-box;
}
.-footer-scrolltop {
    z-index: 1;
    position: absolute;
    top: 5px;
    right: 0;
    background: none;
    font-size: 24px;
}
button {
    overflow: visible;
    padding: 0;
    margin: 0;
    border: 0;
    cursor: pointer;
}
a, button {
    outline: 0;
}
.-footer-contents > ul > li {
    margin-left: -2%;
}

li {
    list-style: none;
}
html, body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, input, textarea, p, blockquote, th, td, img {
    margin: 0;
    padding: 0;
}
.-footer-contents .-split {
    float: left;
    width: 20%;
    margin-left: 2%;
    position: relative;
}
.-footer-contents h2 {
    font-size: 14px;
    font-weight: 400;
    padding: 10px 0 10px 0;
}

</style>
</head>
<body>
<div id="wrap">
	<div id="container">	
		<div class="-hexagon -mos" scroll="" data-scroll="up"></div>
		<div wid="true" class="-footer-contents ">
			<span><a href="companyAboutUs">회사소개</a></span>&nbsp;&nbsp;
			<span><a href="list">공지사항</a></span>&nbsp;&nbsp;
			<span><a href="companyPrivacyPolicyUs">개인정보처리방침</a></span>&nbsp;&nbsp;
			<span><a href="companyTermsUs">이용약관</a></span>
				<ul wid="true" class="-clear">
					<button class="-footer-scrolltop" data-scroll="up" tooltip="위로" toolpos="bctc" tooltheme="dark" data-hasqtip="23">
						<i class="fa fa-angle-up"></i>
					</button>
					<li class="-clear">
						<div class="-split -inputs">
							<h2 class="-font-ns">고객지원센터</h2>
							<hr/>
							<h6>대표전화 </h6><h5>010-4432-4017</h5>
							<hr>
							
						</div>
						<div class="-split">
							<h2 style="font-size: 15px; font-family: font-family: 'Noto Sans JP', sans-serif;">계좌안내</h2>
							<hr/>
							<div>
								<p style="font-size: 13px; font-family: font-family: 'Noto Sans JP', sans-serif;">
									국민은행<br /> 676901-01-186383
								</p>
								<p style="font-size: 13px; font-family: font-family: 'Noto Sans JP', sans-serif;">예금주 다예몰</p>
							</div>
							<hr class="-nude">
							<span class="-inputSelect" style="width: 156px; height: 30px;">
								<select onchange="window.open(this.value,'bank','')">
									<option selected="">인터넷뱅킹 바로가기</option>
									<option value="http://www.kbstar.com">국민은행</option>
									<option value="http://www.scfirstbank.com">제일은행</option>
									<option value="http://www.wooribank.com">우리은행</option>
									<option value="http://www.kiupbank.co.kr">기업은행</option>
									<option value="http://www.kjbank.com">광주은행</option>
									<option value="http://www.daegubank.co.kr">대구은행</option>
									<option value="http://www.hanabank.com">하나은행</option>
									<option value="http://www.shinhan.com">신한은행</option>
									<option value="http://www.keb.co.kr">외환은행</option>
									<option value="http://www.jbbank.co.kr">전북은행</option>
									<option value="http://www.pusanbank.co.kr">부산은행</option>
									<option value="http://www.chb.co.kr">조흥은행</option>
									<option value="http://www.goodbank.com">한미은행</option>
									<option value="http://www.chejubank.co.kr">제주은행</option>
									<option value="http://www.kyongnambank.co.kr">경남은행</option>
									<option value="http://www.epostbank.go.kr">우체국</option>
									<option value="http://banking.nonghyup.com">농협</option>
								</select>
								<iclass="fa fa-angle-down"></i><label style="font-size: 20px; font-family: font-family: 'Noto Sans JP', sans-serif;"><br/>인터넷뱅킹바로가기</label>
							</span>
						</div>
						<div class="-split">
							<h2>배송 / 반품지원센터</h2>
							<hr/>
							<div>
								<p></p>
								<ol>
									<i style="font-size: 13px; font-family: font-family: 'Noto Sans JP', sans-serif;">반품 : 서울특별시 강남구 테헤란로 146</i> 
									<em class="displaynone"><label style="font-size: 15px; font-family: font-family: 'Noto Sans JP', sans-serif;" title="" alt="반품 : 성남시 분당구 성남대로 51 지하 1층 11호" rel="57-14"></em>
								</ol>
								<ol class="xans-record-">
									<span>
										<i style="font-size: 13px; font-family: font-family: 'Noto Sans JP', sans-serif;"">택배 : 1588-0011 <br/><h4>(월~금 08:00~18:00 / 토 09:00~13:00)</h4></i> 
									</span>
								</ol>
								<hr class="-nude">
								<p></p>
								<ol style="display: inline-block;" class="xans-record-">
									<a href="https://www.cjlogistics.com/ko/tool/parcel/tracking" class="-btn -black -xs"><i style="font-size: 13px; font-family: font-family: 'Noto Sans JP', sans-serif;">&nbsp; CJ택배</i><em class="displaynone"></em></a>
								</ol>
							</div>
						</div> 
						

						<div class="-split -wide">
							<h2 class="-font-ns">회사정보</h2>
							<hr/>
							<p style="font-size: 15px; font-family: font-family: 'Noto Sans JP', sans-serif;">
								<span>회사 : 다예몰</span> <br/> <span>대표 : 나빼고 다 대표</span><br>
								<span>사업자등록번호 : [123-4567-890]</span>
							</p>
							<p style="font-size: 15px; font-family: font-family: 'Noto Sans JP', sans-serif;">
								통신판매업신고 : 2020-서울강남에이-4017
							</p>
							<p style="font-size: 15px; font-family: font-family: 'Noto Sans JP', sans-serif;">
								<span>개인정보관리책임자 : 
									<a href="mailto:ghkdud7913@gmail.com">ghkdud7913@gmail.com</a></span><br>
								<span>주소 : 서울특별시 강남구 테헤란로 146</span><br>
								<span>제휴/제안 : <a href="mailto:ghkdud7913@gmail.com">ghkdud7913@gmail.com</a></span>
								<br/><br/><br/>
							</p>
						</div>
					</li>
				</ul>
			</div>		
	</div>
</div>
</body>
</html>