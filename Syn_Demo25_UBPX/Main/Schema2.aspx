<!DOCTYPE html>
<html lang="en">
<head>
    <title>Iswift Solutions</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="../Js/Schema/images/favicon.ico" rel="icon" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,700,900|Display+Playfair:200,300,400,700">
    <link rel="stylesheet" href="../Js/Schema/fonts/icomoon/style.css">

    <link rel="stylesheet" href="../Js/Schema/css/bootstrap.min.css">
    <link rel="stylesheet" href="../Js/Schema/css/magnific-popup.css">
    <link rel="stylesheet" href="../Js/Schema/css/jquery-ui.css">
    <link rel="stylesheet" href="../Js/Schema/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../Js/Schema/css/owl.theme.default.min.css">

    <link rel="stylesheet" href="../Js/Schema/css/bootstrap-datepicker.css">

    <link rel="stylesheet" href="../Js/Schema/fonts/flaticon/font/flaticon.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />


    <link rel="stylesheet" href="../Js/Schema/css/aos.css">
	<link rel="stylesheet" href="../Js/Schema/chosen/chosen.css">

    <link rel="stylesheet" href="../Js/Schema/css/style.css">
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/jquery-ui.min.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="style.css" media="screen" />

    <style>
		.chosen-choices {
			padding: 5px !important;
		}
	
		.ui-widget.ui-widget-content {
		    overflow: auto;
			max-height: 500px;
		}

        .tabs-wrapper {
            box-shadow: 2px 1px 20px #296770;
            padding: 1rem;
            background-color: white;
            border-radius: 0.5rem;
            /*   height: 380px;
            max-width: 500px;*/
        }
 

        ul {
            list-style-type: none;
            padding-left: 0;
        }

        .nav-tabs {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }

            .nav-tabs li {
                border: 1px solid #ddd;
            }

        .tab {
            padding: 0.5rem 1.5rem;
            cursor: pointer;
            border-radius: 4px;
            margin-right: 0.5rem;
            transition: all 0.3s ease 0s;
        }

            .tab.is-active {
                background: #00918d;
                color: #fff;
            }

        .tab-panel {
            display: none;
        }

            .tab-panel p {
                line-height: 1.6;
            }

            .tab-panel.is-active {
                display: block;
            }
        /*search*/

        .search-box {
            font-size: 16px;
            border: solid 0.1em #000000;
            display: inline-block;
            position: relative;
            border-radius: 2.5em;
        }

            .search-box input[type=text] {
                font-family: inherit;
                /*font-weight: bold;*/
                width: 2.5em;
                height: 2.5em;
                padding: 0.3em 2.1em 0.3em 0.4em;
                border: none;
                box-sizing: border-box;
                border-radius: 2.5em;
                transition: width 800ms cubic-bezier(0.68, -0.55, 0.27, 1.55) 150ms;
            }

                .search-box input[type=text]:focus {
                    outline: none;
                }

                .search-box input[type=text]:focus, .search-box input[type=text]:not(:placeholder-shown) {
                    width: 18em;
                    transition: width 800ms cubic-bezier(0.68, -0.55, 0.27, 1.55);
                }

                    .search-box input[type=text]:focus + button[type=reset], .search-box input[type=text]:not(:placeholder-shown) + button[type=reset] {
                        transform: rotate(-45deg) translateY(0);
                        transition: transform 150ms ease-out 800ms;
                    }

                        .search-box input[type=text]:focus + button[type=reset]:after, .search-box input[type=text]:not(:placeholder-shown) + button[type=reset]:after {
                            opacity: 1;
                            transition: top 150ms ease-out 950ms, right 150ms ease-out 950ms, opacity 150ms ease 950ms;
                        }

            .search-box button[type=reset] {
                background-color: transparent;
                width: 1.4em;
                height: 1.4em;
                border: 0;
                padding: 0;
                outline: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                position: absolute;
                top: 0.55em;
                right: 0.55em;
                transform: rotate(-45deg) translateY(2.2em);
                transition: transform 150ms ease-out 150ms;
            }

                .search-box button[type=reset]:before, .search-box button[type=reset]:after {
                    content: "";
                    background-color: #000000;
                    width: 0.04em;
                    height: 1.4em;
                    position: absolute;
                }

                .search-box button[type=reset]:after {
                    transform: rotate(90deg);
                    opacity: 0;
                    transition: transform 150ms ease-out, opacity 150ms ease-out;
                }

        #app {
            max-width: 400px;
            margin: 0 auto;
        }

        /* nút sea*/
		/*checkbok*/

		/*Dropdown*/
		@font-face {
  font-family: 'Roboto';
  font-style: normal;
  font-weight: 400;
  src: url(https://fonts.gstatic.com/s/roboto/v30/KFOmCnqEu92Fr1Mu4mxP.ttf) format('truetype');
}
* {
  margin: 0;
  padding: 0;
}
*,
*:after,
*:before {
  box-sizing: border-box;
}
html {
  line-height: 1.2;
}
body {
  background-color: #f5f5f5;
  color: #333;
  font-family: "Roboto", arial, sans-serif;
  font-size: 16px;
}
.selected-item {
  margin: 20px 0;
  text-align: left;
}
.selected-item p {
  font-size: 18px;
}
.selected-item p span {
  font-weight: bold;
}
/* dropdown list */
/* .dropdown {
  margin: 20px auto;
  width: 300px;
  position: relative;
  perspective: 800px;
}
.dropdown.active .selLabel:after {
  content: '\25B2';
}
.dropdown.active .dropdown-list li:nth-child(1) {
  transform: translateY(100%);
}
.dropdown.active .dropdown-list li:nth-child(2) {
  transform: translateY(200%);
}
.dropdown.active .dropdown-list li:nth-child(3) {
  transform: translateY(300%);
}
.dropdown.active .dropdown-list li:nth-child(4) {
  transform: translateY(400%);
}
.dropdown > span {
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
  width: 100%;
  height: 60px;
  line-height: 60px;
  color: #fff;
  font-size: 18px;
  letter-spacing: 2px;
  background: #34495e;
  display: block;
  padding: 0 50px 0 30px;
  position: relative;
  z-index: 9999;
  cursor: pointer;
  transform-style: preserve-3d;
  transform-origin: 50% 0%;
  transition: transform 300ms;
  -webkit-backface-visibility: hidden;
  -webkit-touch-callout: none;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
.dropdown > span:after {
  content: '\25BC';
  position: absolute;
  right: 0px;
  top: 15%;
  width: 50px;
  text-align: center;
  font-size: 12px;
  padding: 10px;
  height: 70%;
  line-height: 24px;
  border-left: 1px solid #ddd;
}
.dropdown > span:active {
  transform: rotateX(45deg);
}
.dropdown > span:active:after {
  content: '\25B2';
}
.dropdown-list {
  position: absolute;
  top: 0px;
  width: 100%;
}
.dropdown-list li {
  display: block;
  list-style: none;
  left: 0;
  opacity: 1;
  transition: transform 300ms ease;
  position: absolute;
  top: 0;
  width: 100%;
}
.dropdown-list li:nth-child(1) {
  background-color: #1abc9c;
  z-index: 4;
  transform: translateY(0);
}
.dropdown-list li:nth-child(2) {
  background-color: #3498db;
  z-index: 3;
  transform: translateY(3%);
}
.dropdown-list li:nth-child(3) {
  background-color: #9b59b6;
  z-index: 2;
  transform: translateY(6%);
}
.dropdown-list li:nth-child(4) {
  background-color: #e67e22;
  z-index: 1;
  transform: translateY(9%);
}
.dropdown-list li span {
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.2);
  -webkit-backface-visibility: hidden;
  -webkit-touch-callout: none;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  width: 100%;
  font-size: 18px;
  line-height: 60px;
  padding: 0 30px;
  display: block;
  color: #fff;
  cursor: pointer;
  letter-spacing: 2px;
} */


		/*endDropdown*/
        /*Modal*/
        /* Modal Base CSS */
.scotch-overlay
{
    position: fixed;
    z-index: 9998;
    top: 0;
    left: 0;

    opacity: 0;

    width: 100%;
    height: 100%;

    -webkit-transition: 1ms opacity ease;
       -moz-transition: 1ms opacity ease;
        -ms-transition: 1ms opacity ease;
         -o-transition: 1ms opacity ease;
            transition: 1ms opacity ease;

    background: rgba(0,0,0,.6);
}

.scotch-modal
{
    position: absolute;
    z-index: 9999;
    top: 50%;
    left: 50%;

    opacity: 0;

    width: 94%;
    padding: 24px 20px;

    -webkit-transition: 1ms opacity ease;
       -moz-transition: 1ms opacity ease;
        -ms-transition: 1ms opacity ease;
         -o-transition: 1ms opacity ease;
            transition: 1ms opacity ease;

    -webkit-transform: translate(-50%, -50%);
       -moz-transform: translate(-50%, -50%);
        -ms-transform: translate(-50%, -50%);
         -o-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);

    border-radius: 2px;
    background: #fff;
}

.scotch-modal.scotch-open.scotch-anchored
{
    top: 20px;

    -webkit-transform: translate(-50%, 0);
       -moz-transform: translate(-50%, 0);
        -ms-transform: translate(-50%, 0);
         -o-transform: translate(-50%, 0);
            transform: translate(-50%, 0);
}

.scotch-modal.scotch-open
{
    opacity: 1;
}

.scotch-overlay.scotch-open
{
    opacity: 1;

}

/* Close Button */
.scotch-close
{
    font-family: Helvetica,Arial,sans-serif;
    font-size: 24px;
    font-weight: 700;
    line-height: 12px;

    position: absolute;
    top: 5px;
    right: 5px;

    padding: 5px 7px 7px;

    cursor: pointer;

    color: #fff;
    border: 0;
    outline: none;
    background: #e74c3c;
}

.scotch-close:hover
{
    background: #c0392b;
}

/* Default Animation */

.scotch-overlay.fade-and-drop
{
    display: block;

    opacity: 0;
}

.scotch-modal.fade-and-drop
{
    top: -300%;

    opacity: 1;

    display: block;
}

.scotch-modal.fade-and-drop.scotch-open
{
    top: 50%;

    -webkit-transition: 500ms top 500ms ease;
       -moz-transition: 500ms top 500ms ease;
        -ms-transition: 500ms top 500ms ease;
         -o-transition: 500ms top 500ms ease;
            transition: 500ms top 500ms ease;
}

.scotch-modal.fade-and-drop.scotch-open.scotch-anchored
{

    -webkit-transition: 500ms top 500ms ease;
       -moz-transition: 500ms top 500ms ease;
        -ms-transition: 500ms top 500ms ease;
         -o-transition: 500ms top 500ms ease;
            transition: 500ms top 500ms ease;
}

.scotch-overlay.fade-and-drop.scotch-open
{
    top: 0;

    -webkit-transition: 500ms opacity ease;
       -moz-transition: 500ms opacity ease;
        -ms-transition: 500ms opacity ease;
         -o-transition: 500ms opacity ease;
            transition: 500ms opacity ease;

    opacity: 1;
}

.scotch-modal.fade-and-drop
{
    -webkit-transition: 500ms top ease;
       -moz-transition: 500ms top ease;
        -ms-transition: 500ms top ease;
         -o-transition: 500ms top ease;
            transition: 500ms top ease;
}

.scotch-overlay.fade-and-drop
{
    -webkit-transition: 500ms opacity 500ms ease;
       -moz-transition: 500ms opacity 500ms ease;
        -ms-transition: 500ms opacity 500ms ease;
         -o-transition: 500ms opacity 500ms ease;
            transition: 500ms opacity 500ms ease;
}

/* Demo Styles */
html
{
    box-sizing: border-box;
}

*
{
    box-sizing: inherit;
}

body


#content
{
    display: none;
}


         /*Modal*/
		#output {
  padding: 80px;
  background: #dadada;
  display:none;
}

form {
  margin-top: 20px;
}

select {
  width: 300px;
}

#pageOverlay {
  display: none;
  position: absolute;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.25);
  z-index: 99;
}
#pageOverlay div {
  padding: 1%;
  width: 30%;
  height: 80%;
  margin: 100px;
  margin-left: 35%;
  background-color: rgb(255, 255, 255);
}
.editRowLabel {
  font-weight:bold; 
  font-size:16px;
}
    </style>
</head>
<body>
    <header class="site-navbar py-3" role="banner" style="background-color:#4c5a663b">
        <div class="site-wrap">

            <div class="site-mobile-menu">
                <div class="site-mobile-menu-header">
                    <div class="site-mobile-menu-close mt-3">
                        <span class="icon-close2 js-menu-toggle"></span>
                    </div>
                </div>
                <div class="site-mobile-menu-body"></div>
            </div>


            <div class="container">
                <div class="row align-items-center">
                    <a href="/">
                        <div class="col-11 col-xl-2">
                            <img src="../Js/Schema/images/ic_logo.png" style="margin-left: -71px; width: 200px; height: 65px">
                        </div>
                    </a>
                    <div class="col-12 col-md-10 d-none d-xl-block">
                        <nav class="site-navigation position-relative text-right" role="navigation">

                            <ul class="site-menu js-clone-nav mx-auto d-none d-lg-block">
                                <li class="active"><a href="index.html">Home</a></li>
                                <li><a href="Home/About">About Us</a></li>
                                <li class="has-children">
                                    <a href="services.html">Services</a>
                                    <ul class="dropdown">
                                        <li><a href="#">Air Freight</a></li>
                                        <li><a href="#">Ocean Freight</a></li>
                                        <li><a href="#">Ground Shipping</a></li>
                                        <li><a href="#">Warehousing</a></li>
                                        <li><a href="#">Storage</a></li>
                                    </ul>
                                </li>
                                <li><a href="industries.html">Industries</a></li>
                                <li><a href="blog.html">Blog</a></li>
                                <li><a href="contact.html">Contact</a></li>
                                <li><a href="contact.html" class="icon-user"  > Login</a></li>

                            </ul>
                        </nav>
                    </div>


                    <div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3" style="position: relative; top: 3px;"><a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a></div>

                </div>

            </div>
        </div>

    </header>

 
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<div class="site-blocks-cover overlay" style="background-image: url(../Js/Schema/images/vn1.jpg); " data-aos="fade" data-stellar-background-ratio="0.5">
    <div class="container">
        <div class="row align-items-center justify-content-center text-center">

            <div class="col-md-8" data-aos="fade-up" data-aos-delay="400">
                <h1 class="text-white font-weight-light mb-5 text-uppercase font-weight-bold">Logistics Solutions</h1>
                <div>
                    <div class="tabs-wrapper">
                        <ul class="nav-tabs">
                            <li class="nav-item tab is-active flaticon-sea-ship-with-containers "data-role="tab" data-target="#tabs-home3">
                                FCL
                            </li>

                            <li class="nav-item tab icon-archive" data-role="tab" data-target="#tabs-profile3">
                                LCL
                            </li>

                            <li class="nav-item tab icon-flight" data-role="tab" data-target="#tabs-messages3">
                                AIR
                            </li>
                        </ul>

                        <div class="tab-content">
                            <div class="tab-panel is-active" id="tabs-home3">
                                <form method="post">
                                    <div class="form-group text-primary " style="text-align:left"> 
                                        <label class="icon-ship"></label>  <label for="from">Cảng đi</label>
                                        <input type="text" class="form-control btn-block" id="fq_fromFCL" name="fq_fromFCL" placeholder="From" />
                                    </div>
                                    <div class="form-group mb-4 text-primary  " style="text-align:left;">
                                      <label class="icon-anchor"> </label>  <label for="to">Cảng đến</label>
                                        <input type="text" class="form-control btn-block" id="fq_toFCL" name="fq_toFCL" placeholder="To" />

                                    </div>
									<div class="form-group mb-4 text-primary flaticon-frontal-truck" style="text-align:left">
							
										<label for="to">Loại công</label>		</br>
										<div id="output"></div>
										<form method="get">
										  <select data-placeholder=" " name="tags[]" multiple class="form-control chosen-select" id="multi-cong">
											 
										  </select>
										  <!-- <input class="btn btn-primary text-white "style="line-height:" type="submit"> -->
										</form>
									</div>
									<!-- <div style="text-align: right;">
										<label for="myCheck">Choose many:</label> 
										<input type="checkbox" id="myCheck" onclick="myFunction2()">
										<form  action="/action_page.php">
										<p id="text" style="display:none;    color: black;">  
										
										

										<input type="checkbox" name="coffee" value="40FL">40FL<br>
										<input type="checkbox" name="coffee" value="40FLHQ">40FLHQ<br>
										<br>
										<input type="button" onclick="myFunction()" value="Chọn">
										<br><br>
										<input type="text" id="order" size="30">
										
										</form>

									</div> -->
                                    <div class="form-group col-12 d-inline-flex" style="padding-left: 0; padding-right: 0;">
                                        <div class="form-control-wrap col-6 text-primary icon-date_range" style="padding-left: 0; text-align: left; width: 30%; margin-bottom: 20px;">
											<label for="timedi" style="font-family: 'Roboto', arial, sans-serif; font-weight: 300;">Thời gian đi </label>
											<input type="text" id="cf-FromFCL" placeholder="" class="form-control datepicker px-3">

                                        </div>
                                        <div class="form-control-wrap col-6 text-primary icon-calendar-check-o" style="padding-right: 0; text-align: left; width: 30%; margin-bottom: 20px;">
                                            <label for="timeden" style="font-family: 'Roboto', arial, sans-serif; font-weight: 300;">Thời gian đến </label>
											<input type="text" id="cf-ToFCL" placeholder="" class="form-control datepicker px-3">

                                        </div>
                                    </div>

                                    <button id="trigger" class="trigger-button" type="button">Launch Modal</button>

                                    <div id="content">
                                      <div id="DIR_s51_Dir" class="dir modal" role="dialog" style="z-index: 2002; display: block;"><div class="modal-dialog modal-dialog-lg ui-draggable" role="document"><div class="modal-content"><div class="modal-header ui-draggable-handle"><button type="button" btnid="cancel" class="btn-close-form"><span class="icon-close-form">✖</span></button><button type="button" btnid="zoom" class="btn-close-form mobile-hide"><span class="icon-close-form" style="font-size: 20px;">□</span></button><button type="button" btnid="@info" class="btn-close-form"><span class="icon-close-form" style="font-size: 20px;">𝒾</span></button><p class="text-title-form">Báo giá</p></div><div class="modal-body" style="min-height: 0px;"><div class="form-horizontal"><div class="row"><div class="modal-body-header"><div class="modal-left-240"><div class="form-group form-group-hidden"><div class="col-xs-24 col-120"><label class="control-label ma_kh">Mã khách hàng</label></div><div class="col-xs-24 col-120"><input value="3502500019" spellcheck="false" type="text" class="input-field ma_kh C  form-control materail-input C" tabstop="0" style="" disabled="" maxlength="32" tabindex="24"></div></div><div class="form-group"><div class="col-xs-24 col-120"><label class="control-label ma_noi_di">Nơi đi</label></div><div class="col-xs-24 col-120"><input value="VNSGN" spellcheck="false" type="text" class="input-field ma_noi_di C Lookup form-control materail-input C" style="text-transform: uppercase;" maxlength="32" tabindex="25"><span class="icon-lookup btn-lookup" data-toggle="modal"></span></div><div class="col-xs-24 col-150"><input value="Hồ Chí Minh" spellcheck="false" type="text" class="input-field ten_noi_di C  form-control materail-input C" tabstop="0" style="" readonly="" disabled="" tabindex="26"></div><div class="col-xs-24 col-70"><label class="control-label ngay_hl">Từ ngày:</label></div><div class="col-xs-24 col-120"><input value="20/05/2023" spellcheck="false" type="text" class="input-field ngay_hl D  form-control materail-input D" style="" disabled="" tabindex="27"><span class="btn-lookup btn-calendar"></span></div></div><div class="form-group"><div class="col-xs-24 col-120"><label class="control-label ma_noi_den">Nơi đến</label></div><div class="col-xs-24 col-120"><input value="UYMVD" spellcheck="false" type="text" class="input-field ma_noi_den C Lookup form-control materail-input C" style="text-transform: uppercase;" maxlength="32" tabindex="28"><span class="icon-lookup btn-lookup" data-toggle="modal"></span></div><div class="col-xs-24 col-150"><input value="Montevideo" spellcheck="false" type="text" class="input-field ten_noi_den C  form-control materail-input C" tabstop="0" style="" readonly="" disabled="" tabindex="29"></div><div class="col-xs-24 col-70"><label class="control-label ngay_hld">Đến ngày</label></div><div class="col-xs-24 col-120"><input value="31/05/2023" spellcheck="false" type="text" class="input-field ngay_hld D  form-control materail-input D" style="" disabled="" tabindex="30"><span class="btn-lookup btn-calendar"></span></div></div><div class="form-group"><div class="col-xs-24 col-120"><label class="control-label ds_cong">Container</label></div><div class="col-xs-24 col-fill-120"><input value="20GP" spellcheck="false" type="text" class="input-field ds_cong C Lookup form-control materail-input C" style="text-transform: uppercase;" disabled="" maxlength="500" tabindex="31"><span class="icon-lookup btn-lookup" data-toggle="modal"></span></div></div><div class="form-group"><div class="col-xs-24 col-140"><label class="control-label tt">Thông tin khách hàng </label></div><div class="col-xs-24 col-0"><input value="" spellcheck="false" type="text" class="input-field tt C  form-control materail-input C" tabstop="0" style="" readonly="" disabled="" tabindex="32"></div><div class="col-xs-24 col-120"><label class="control-label ma_so_thue">Mã số thuế <a onclick="getTax(this);">(Kiểm tra)</a></label></div><div class="col-xs-24 col-120"><input value="3502500019" spellcheck="false" type="text" class="input-field ma_so_thue C  form-control materail-input C" style="" disabled="" maxlength="32" tabindex="33"></div><div class="col-xs-24 col-70"><label class="control-label dien_thoai">Điện thoại</label></div><div class="col-xs-24 col-120"><input value="0982415526" spellcheck="false" type="text" class="input-field dien_thoai C  form-control materail-input C" style="" disabled="" maxlength="32" tabindex="34"></div></div><div class="form-group"><div class="col-xs-24 col-120"><label class="control-label ten_kh">Tên khách hàng</label></div><div class="col-xs-24 col-250"><input value="CÔNG TY TNHH ĐẦU TƯ PHÁT TRIỂN XÂY DỰNG BẢO LONG" spellcheck="false" type="text" class="input-field ten_kh C  form-control materail-input C" style="" disabled="" maxlength="256" tabindex="35"></div><div class="col-xs-24 col-80"><label class="control-label nguoi_lh">Người liên hệ</label></div><div class="col-xs-24 col-120"><input value="NGUYỄN VĂN LONG" spellcheck="false" type="text" class="input-field nguoi_lh C  form-control materail-input C" style="" disabled="" maxlength="256" tabindex="36"></div></div><div class="form-group"><div class="col-xs-24 col-120"><label class="control-label dia_chi">Địa chỉ</label></div><div class="col-xs-24 col-250"><input value="Tổ 11, Khu phố Tân Phú , Phường Phú Mỹ, Thị xã Phú Mỹ, Tỉnh Bà Rịa - Vũng Tàu, Việt Nam" spellcheck="false" type="text" class="input-field dia_chi C  form-control materail-input C" style="" disabled="" maxlength="256" tabindex="37"></div><div class="col-xs-24 col-80"><label class="control-label email">Email</label></div><div class="col-xs-24 col-120"><input value="" spellcheck="false" type="text" class="input-field email C  form-control materail-input C" style="" disabled="" maxlength="255" tabindex="38"></div></div><div class="form-group form-group-hidden"><div class="col-xs-24 col-120"><label class="control-label ten_kh2">Tên quốc tế</label></div><div class="col-xs-24 col-fill-120"><input value="" spellcheck="false" type="text" class="input-field ten_kh2 C  form-control materail-input C" tabstop="0" style="" disabled="" maxlength="256" tabindex="39"></div></div><div class="form-group"><div class="col-xs-24 col-350"><label class="control-label tt2">Đơn vị vận chuyển <a onclick="getRequest2(this);">(Lấy số liệu)</a> </label></div><div class="col-xs-24 col-50"><input value="" spellcheck="false" type="text" class="input-field tt2 C  form-control materail-input C" tabstop="0" style="" readonly="" disabled="" tabindex="40"></div></div><div class="form-group"><div class="col-xs-24 col-120"><label class="control-label ma_hang">Hãng tàu/ Đại lý</label></div><div class="col-xs-24 col-120"><input value="VTAGE6672 " spellcheck="false" type="text" class="input-field ma_hang C Lookup form-control materail-input C" style="text-transform: uppercase;" disabled="" maxlength="32" tabindex="41"><span class="icon-lookup btn-lookup" data-toggle="modal"></span></div><div class="col-xs-24 col-120"><input value="YANGMING" spellcheck="false" type="text" class="input-field ten_hang C  form-control materail-input C" tabstop="0" style="" readonly="" disabled="" tabindex="42"></div><div class="col-xs-24 col-100"><label class="control-label ds_ngay">Lịch vận chuyển</label></div><div class="col-xs-24 col-120"><input value="2,3,4,5,6" spellcheck="false" type="text" class="input-field ds_ngay C Lookup form-control materail-input C" style="text-transform: uppercase;" disabled="" maxlength="500" tabindex="43"><span class="icon-lookup btn-lookup" data-toggle="modal"></span></div></div><div class="form-group"><div class="col-xs-24 col-120"><label class="control-label dien_giai">Diễn giải</label></div><div class="col-xs-24 col-fill-120"><input value="" spellcheck="false" type="text" class="input-field dien_giai C  form-control materail-input C" style="" disabled="" maxlength="256" tabindex="44"></div></div><div class="form-group form-group-hidden"><div class="col-xs-24 col-120"><label class="control-label id"></label></div><div class="col-xs-24 col-120"><input value="1 603" spellcheck="false" type="text" class="input-field id N  txt-right form-control materail-input N" tabstop="0" style="" disabled="" tabindex="45"></div></div><div class="form-group form-group-hidden"><div class="col-xs-24 col-120"><label class="control-label id_yc"></label></div><div class="col-xs-24 col-120"><input value="0" spellcheck="false" type="text" class="input-field id_yc N  txt-right form-control materail-input N" tabstop="0" style="" disabled="" tabindex="46"></div></div></div><div class="modal-right-240"><div class="form-group"><div class="col-xs-24 col-60"><label class="control-label unit_id">Đơn vị</label></div><div class="col-xs-24 col-180"><select class="input-field unit_id I form-control materail-input" tabstop="0" disabled="disabled" style="" tabindex="47"><option value="1" selected="">Văn Phòng Công Ty</option><option value="2">Trạm An Sương</option><option value="3">Trạm Tỉnh Lộ 8</option><option value="4">Trạm Long An</option></select></div></div><div class="form-group form-group-hidden"><div class="col-xs-24 col-60"><label class="control-label i_so_ct">Số tăng</label></div><div class="col-xs-24 col-60"><input value="136" spellcheck="false" type="text" class="input-field i_so_ct C  form-control materail-input C" tabstop="0" style="" disabled="" tabindex="48"></div></div><div class="form-group form-group-hidden"><div class="col-xs-24 col-60"><label class="control-label ma_nk">Quyển/Số ct</label></div><div class="col-xs-24 col-60"><input value="" spellcheck="false" type="text" class="input-field ma_nk C Lookup form-control materail-input C" tabstop="0" style="text-transform: uppercase;" disabled="" maxlength="32" tabindex="49"><span class="icon-lookup btn-lookup" data-toggle="modal"></span></div><div class="col-xs-24 col-100">
    <input value="" spellcheck="false" type="text" class="input-field ten_nk C  form-control materail-input C" tabstop="0" style="" readonly="" disabled="" tabindex="50"></div></div>
    <div class="form-group"><div class="col-xs-24 col-120"><label class="control-label so_ct">Số c/từ</label></div>
    <div class="col-xs-24 col-120">
        <input value="136" spellcheck="false" type="text" class="input-field so_ct C  form-control materail-input C" style="text-transform: uppercase;" disabled="" maxlength="32" tabindex="51"></div></div>
        <div class="form-group"><div class="col-xs-24 col-120"><label class="control-label ngay_ct">Ngày chứng từ</label></div><div class="col-xs-24 col-120">
            <input value="20/05/2023" spellcheck="false" type="text" class="input-field ngay_ct D  form-control materail-input D" style="" disabled="disabled" tabindex="52" tabstop="0">
            <span class="btn-lookup btn-calendar"></span></div></div><div class="form-group form-group-hidden"><div class="col-xs-24 col-120"><label class="control-label ngay_lct">Ngày lập ct</label></div>
            <div class="col-xs-24 col-120"><input value="20/05/2023" spellcheck="false" type="text" class="input-field ngay_lct D  form-control materail-input D" tabstop="0" style="" disabled="" tabindex="53">
                <span class="btn-lookup btn-calendar"></span></div></div><div class="form-group"><div class="col-xs-24 col-60"><label class="control-label ma_nt">Tỷ giá</label></div><div class="col-xs-24 col-60">
                    <select class="input-field ma_nt C form-control materail-input" disabled="disabled" style="" tabindex="54" tabstop="0"><option value="VND" selected="">VND</option><option value="USD">USD</option>
                        <option value="JPY">JPY</option><option value="THB">THB</option></select></div><div class="col-xs-24 col-120">
                            <input value="1.0000" spellcheck="false" type="text" class="input-field ty_gia N  txt-right form-control materail-input N" tabstop="0" style="" disabled="" maxlength="11" tabindex="55"></div></div><div class="form-group"><div class="col-xs-24 col-60"><label class="control-label status">Trạng thái</label></div><div class="col-xs-24 col-180"><select class="input-field status C form-control materail-input" tabstop="0" disabled="" style="" tabindex="56"><option value="4">Treo</option><option value="5" selected="">Lập báo giá</option><option value="7">Đã duyệt</option><option value="9">Hủy</option></select></div></div><div class="form-group form-group-hidden"><div class="col-xs-24 col-250"><label class="control-label tt3">|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|</label></div></div><div class="form-group"><div class="col-xs-24 col-120"><label class="control-label ma_dk_vc">Đi thẳng/Chuyển tải</label></div><div class="col-xs-24 col-120"><select class="input-field ma_dk_vc C form-control materail-input" disabled="" style="" tabindex="57"><option value="1" selected="">Đi thẳng</option><option value="2">Chuyển tải</option></select></div><div class="col-xs-24 col-90"><label class="control-label ma_cuoc">Loại cước</label></div><div class="col-xs-24 col-150"><select class="input-field ma_cuoc C form-control materail-input" disabled="" style="" tabindex="58"><option value="1" selected="">Cước trả tại nơi đi</option><option value="2">Cước trả tại nơi đến</option></select></div></div><div class="form-group"><div class="col-xs-24 col-140"><label class="control-label so_ngay_vc">T.Gian v.chuyển (ngày)</label></div><div class="col-xs-24 col-100"><input value="29" spellcheck="false" type="text" class="input-field so_ngay_vc N  txt-right form-control materail-input N" style="" disabled="" tabindex="59"></div></div></div></div><div class="modal-body-tab"><div class="tab-form"><ul class="nav nav-tabs col-xs-24" style="margin-top: 10px;"><li class="active"><a data-toggle="tab" class="li-tab s51_1" href="#s51_1">Chi tiết</a></li><li><a data-toggle="tab" class="li-tab s51_2" href="#s51_2">Chi phí khác</a></li><li><a data-toggle="tab" class="li-tab s51_5" href="#s51_5">Khác</a></li><li><a data-toggle="tab" class="li-tab s51_7" href="#s51_7">Đính kèm</a></li></ul><div class="tab-content" style="height: 300px; min-height: 300px;"><div id="s51_1" class="tab-pane tab-grid in active"><div style="padding-top: 3px;width: 100%;"><div class="grid-menubar grid-parent"><table class="table-itembar" grid-index="0"><tbody><tr><td style="display:inline-flex;line-height:24px;padding-right:8px;cursor:pointer;" title="Thêm (Alt + N)" class="toolbar-add " id="TOOLBAR_s51_v51_add"><div style="margin-right:4px;"></div>Thêm</td><td style="display:inline-flex;line-height:24px;padding-right:8px;cursor:pointer;" title="Xóa (Ctrl + D, Alt + D)" class="toolbar-delete " id="TOOLBAR_s51_v51_delete"><div style="margin-right:4px;"></div>Xóa</td><td style="display:inline-flex;line-height:24px;padding-right:8px;cursor:pointer;" title="Sao chép (Alt + U)" class="toolbar-copy mobile-hide" id="TOOLBAR_s51_v51_copy"><div style="margin-right:4px;"></div>Sao chép</td><td style="display:inline-flex;line-height:24px;padding-right:8px;cursor:pointer;" title="Dán dữ liệu (Sau khi Ctrl+C từ Excel, Bảng dữ liệu)" class="toolbar-paste " id="TOOLBAR_s51_v51_paste"><div style="margin-right:4px;"></div>Dán dữ liệu</td><td title="Chuyển lên" class="toolbar-moveup mobile-hide" id="TOOLBAR_s51_v51_moveup"><div></div></td><td title="Chuyển xuống" class="toolbar-movedown mobile-hide" id="TOOLBAR_s51_v51_movedown"><div></div></td><td title="-" class="toolbar-split mobile-hide" id="TOOLBAR_s51_v51_split"><div></div></td><td title="Lấy dữ liệu" class="toolbar-retrieve " id="TOOLBAR_s51_v51_retrieve"><div></div></td><td title="-" class="toolbar-split mobile-hide" id="TOOLBAR_s51_v51_split"><div></div></td><td title="Cố định cột" class="toolbar-freeze mobile-hide" id="TOOLBAR_s51_v51_freeze"><div></div></td><td title="Mở rộng" class="toolbar-extend mobile-show" id="TOOLBAR_s51_v51_extend"><div>Mở rộng <span class="caret caret-extend"></span></div></td></tr></tbody></table><img id="WAIT_s51_v51" class="grid-icon-loading" style="display:none" src="../Images/ic_loading.gif"></div></div><div class="table-detail"><div class="table-scroll-horizontal"><table id="TABLE_s51_v51" grid-index="0" class="table"><colgroup><col style="width: auto;"><col class="grid-colgroup id" style="width: 0px;display:none;"><col class="grid-colgroup line" style="width: 0px;display:none;"><col class="grid-colgroup ma_phi" style="width: 100px;"><col class="grid-colgroup ten_phi" style="width: 250px;"><col class="grid-colgroup ma_dk_phi" style="width: 120px;"><col class="grid-colgroup ma_dvt" style="width: 80px;"><col class="grid-colgroup so_luong" style="width: 100px;"><col class="grid-colgroup ct_km" style="width: 100px;display:none;"><col class="grid-colgroup gia_nt1" style="width: 100px;display:none;"><col class="grid-colgroup tien_nt1" style="width: 100px;display:none;"><col class="grid-colgroup gia_nt2" style="width: 100px;"><col class="grid-colgroup tien_nt2" style="width: 100px;"><col class="grid-colgroup gia_nt3" style="width: 120px;"><col class="grid-colgroup tien_nt3" style="width: 120px;"><col class="grid-colgroup tl_ck" style="width: 100px;display:none;"><col class="grid-colgroup ck_nt" style="width: 100px;display:none;"><col class="grid-colgroup ma_nt" style="width: 70px;"><col class="grid-colgroup ten_nt" style="width: 0px;"><col class="grid-colgroup ty_gia" style="width: 100px;"><col class="grid-colgroup gia1" style="width: 100px;display:none;"><col class="grid-colgroup gia2" style="width: 0px;"><col class="grid-colgroup gia3" style="width: 0px;"><col class="grid-colgroup tien1" style="width: 100px;display:none;"><col class="grid-colgroup tien2" style="width: 100px;"><col class="grid-colgroup tien3" style="width: 100px;"><col class="grid-colgroup ck" style="width: 100px;display:none;"><col class="grid-colgroup thue_suat" style="width: 60px;"><col class="grid-colgroup thue_nt" style="width: 100px;display:none;"><col class="grid-colgroup thue" style="width: 100px;display:none;"><col class="grid-colgroup tc_tien2" style="width: 100px;display:none;"><col class="grid-colgroup tc_tien_nt2" style="width: 100px;display:none;"><col class="grid-colgroup tt" style="width: 100px;"><col class="grid-colgroup tt_nt" style="width: 100px;display:none;"><col class="grid-colgroup tien_ln" style="width: 100px;display:none;"><col class="grid-colgroup dien_giai" style="width: 200px;"></colgroup><thead><tr><th style="position: relative; z-index: 10;"></th><th class="grid-column id N" style="display:none;"><div class="col-header-resize"></div><span></span></th><th class="grid-column line I" style="display:none;"><div class="col-header-resize"></div><span>Dòng</span></th><th class="grid-column ma_phi C" style=""><div class="col-header-resize"></div><span>Mã phí</span></th><th class="grid-column ten_phi C" style=""><div class="col-header-resize"></div><span>Tên phí</span></th><th class="grid-column ma_dk_phi C" style=""><div class="col-header-resize"></div><span>Loại phí</span></th><th class="grid-column ma_dvt C" style=""><div class="col-header-resize"></div><span>Đơn vị</span></th><th class="grid-column so_luong N" style=""><div class="col-header-resize"></div><span>Số lượng</span></th><th class="grid-column ct_km C" style="display:none;"><div class="col-header-resize"></div><span>Loại hàng</span></th><th class="grid-column gia_nt1 N" style="display:none;"><div class="col-header-resize"></div><span>Giá mua </span></th><th class="grid-column tien_nt1 N" style="display:none;"><div class="col-header-resize"></div><span>Tiền mua</span></th><th class="grid-column gia_nt2 N" style=""><div class="col-header-resize"></div><span>Giá bán</span></th><th class="grid-column tien_nt2 N" style=""><div class="col-header-resize"></div><span>Tiền bán</span></th><th class="grid-column gia_nt3 N" style=""><div class="col-header-resize"></div><span>Giá thương lượng</span></th><th class="grid-column tien_nt3 N" style=""><div class="col-header-resize"></div><span>Tiền thương lượng</span></th><th class="grid-column tl_ck N" style="display:none;"><div class="col-header-resize"></div><span>Tl ck(%)</span></th><th class="grid-column ck_nt N" style="display:none;"><div class="col-header-resize"></div><span>Ch.khấu </span></th><th class="grid-column ma_nt C" style=""><div class="col-header-resize"></div><span>Mã NT</span></th><th class="grid-column ten_nt C" style=""><div class="col-header-resize"></div><span>Tên phí</span></th><th class="grid-column ty_gia N" style=""><div class="col-header-resize"></div><span>Tỷ giá</span></th><th class="grid-column gia1 N" style="display:none;"><div class="col-header-resize"></div><span>Giá chuẩn</span></th><th class="grid-column gia2 N" style=""><div class="col-header-resize"></div><span>Giá bán</span></th><th class="grid-column gia3 N" style=""><div class="col-header-resize"></div><span>Giá bán</span></th><th class="grid-column tien1 N" style="display:none;"><div class="col-header-resize"></div><span>Chi phí</span></th><th class="grid-column tien2 N" style=""><div class="col-header-resize"></div><span>Doanh thu</span></th><th class="grid-column tien3 N" style=""><div class="col-header-resize"></div><span>Thương lượng</span></th><th class="grid-column ck N" style="display:none;"><div class="col-header-resize"></div><span>Chiết khấu</span></th><th class="grid-column thue_suat N" style=""><div class="col-header-resize"></div><span>VAT(%)</span></th><th class="grid-column thue_nt N" style="display:none;"><div class="col-header-resize"></div><span>Thuế %s</span></th><th class="grid-column thue N" style="display:none;"><div class="col-header-resize"></div><span>Thuế</span></th><th class="grid-column tc_tien2 N" style="display:none;"><div class="col-header-resize"></div><span></span></th><th class="grid-column tc_tien_nt2 N" style="display:none;"><div class="col-header-resize"></div><span></span></th><th class="grid-column tt N" style=""><div class="col-header-resize"></div><span>Tổng cộng</span></th><th class="grid-column tt_nt N" style="display:none;"><div class="col-header-resize"></div><span></span></th><th class="grid-column tien_ln N" style="display:none;"><div class="col-header-resize"></div><span>Lợi nhuận</span></th><th class="grid-column dien_giai C" style=""><div class="col-header-resize"></div><span>Diễn giải</span></th></tr></thead><tbody id="BODY_s51_v51" class="data"><tr><td class="txt-right" style="position: relative; z-index: 9;">1</td><td class="grid-cell id N txt-right canfocus" style="display:none;" tabstop="0" tabindex="60">1 603</td><td class="grid-cell line I txt-right canfocus" style="display:none;" tabstop="0" tabindex="61">1</td><td class="grid-cell ma_phi C canfocus" style="" tabindex="62">OF</td><td class="grid-cell ten_phi C canfocus" style="" tabstop="0" tabindex="63">Chi phí vận tải đơn thuần từ cảng đi đến cảng đích hay còn được gọi là cước đường biển</td><td class="grid-cell ma_dk_phi C canfocus" style="" tabindex="64"><select class="grid-input-field ma_dk_phi C Combobox txt-center" disabled="" undefined="" tabindex="65"><option value="1" selected="">Cước vận chuyển</option><option value="2">Phí nhập khẩu</option><option value="3">Phí xuất khẩu</option><option value="4">Phụ phí</option></select></td><td class="grid-cell ma_dvt C canfocus" style="" tabindex="66">SHPT</td><td class="grid-cell so_luong N txt-right canfocus" style="" tabindex="67">1</td><td class="grid-cell ct_km C canfocus" style="display:none;" tabstop="0" tabindex="68"><select class="grid-input-field ct_km C Combobox txt-center" disabled="" undefined="" tabstop="0" tabindex="69"><option value="0" selected="">Hàng bán</option><option value="1">Hàng KM</option></select></td><td class="grid-cell gia_nt1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="70">2 100</td><td class="grid-cell tien_nt1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="71">2 100</td><td class="grid-cell gia_nt2 N txt-right canfocus" style="" tabindex="72">2 310</td><td class="grid-cell tien_nt2 N txt-right canfocus" style="" tabindex="73">2 310</td><td class="grid-cell gia_nt3 N txt-right canfocus" style="" tabindex="74">1 000</td><td class="grid-cell tien_nt3 N txt-right canfocus" style="" tabindex="75">1 000</td><td class="grid-cell tl_ck N txt-right canfocus" style="display:none;" tabstop="0" tabindex="76"></td><td class="grid-cell ck_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="77"></td><td class="grid-cell ma_nt C canfocus" style="" tabindex="78">USD</td><td class="grid-cell ten_nt C canfocus" style="" tabstop="0" tabindex="79">Đô là Mỹ</td><td class="grid-cell ty_gia N txt-right canfocus" style="" tabindex="80">23 450</td><td class="grid-cell gia1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="81">49 245 000</td><td class="grid-cell gia2 N txt-right canfocus" style="" tabstop="0" tabindex="82">54 169 500</td><td class="grid-cell gia3 N txt-right canfocus" style="" tabstop="0" tabindex="83">23 450 000</td><td class="grid-cell tien1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="84">49 245 000</td><td class="grid-cell tien2 N txt-right canfocus" style="" tabstop="0" tabindex="85">54 169 500</td><td class="grid-cell tien3 N txt-right canfocus" style="" tabstop="0" tabindex="86">23 450 000</td>
                                <td class="grid-cell ck N txt-right canfocus" style="display:none;" tabstop="0" tabindex="87"></td><td class="grid-cell thue_suat N txt-right canfocus" style="" tabindex="88">10</td><td class="grid-cell thue_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="89">231</td><td class="grid-cell thue N txt-right canfocus" style="display:none;" tabstop="0" tabindex="90">5 416 950</td><td class="grid-cell tc_tien2 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="91">54 169 500</td><td class="grid-cell tc_tien_nt2 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="92">2 310</td><td class="grid-cell tt N txt-right canfocus" style="" tabindex="93">59 586 450</td><td class="grid-cell tt_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="94">2 541</td><td class="grid-cell tien_ln N txt-right canfocus" style="display:none;" tabstop="0" tabindex="95">10 341 450</td><td class="grid-cell dien_giai C canfocus" style="" tabstop="0" tabindex="96"></td></tr><tr><td class="txt-right" style="position: relative; z-index: 9;">2</td><td class="grid-cell id N txt-right canfocus" style="display:none;" tabstop="0" tabindex="97">1 603</td><td class="grid-cell line I txt-right canfocus" style="display:none;" tabstop="0" tabindex="98">2</td><td class="grid-cell ma_phi C canfocus" style="" tabindex="99">THC</td><td class="grid-cell ten_phi C canfocus" style="" tabstop="0" tabindex="100">Phụ phí xếp dỡ hàng hóa tại cảng</td><td class="grid-cell ma_dk_phi C canfocus" style="" tabindex="101"><select class="grid-input-field ma_dk_phi C Combobox txt-center" disabled="" undefined="" tabindex="102"><option value="1">Cước vận chuyển</option><option value="2">Phí nhập khẩu</option><option value="3" selected="">Phí xuất khẩu</option><option value="4">Phụ phí</option></select></td><td class="grid-cell ma_dvt C canfocus" style="" tabindex="103">CONT</td><td class="grid-cell so_luong N txt-right canfocus" style="" tabindex="104">1</td><td class="grid-cell ct_km C canfocus" style="display:none;" tabstop="0" tabindex="105"><select class="grid-input-field ct_km C Combobox txt-center" disabled="" undefined="" tabstop="0" tabindex="106"><option value="0" selected="">Hàng bán</option><option value="1">Hàng KM</option></select></td><td class="grid-cell gia_nt1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="107">2 536 000</td><td class="grid-cell tien_nt1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="108">2 536 000</td><td class="grid-cell gia_nt2 N txt-right canfocus" style="" tabindex="109">2 789 600</td><td class="grid-cell tien_nt2 N txt-right canfocus" style="" tabindex="110">2 789 600</td><td class="grid-cell gia_nt3 N txt-right canfocus" style="" tabindex="111">2 500 000</td><td class="grid-cell tien_nt3 N txt-right canfocus" style="" tabindex="112">2 500 000</td><td class="grid-cell tl_ck N txt-right canfocus" style="display:none;" tabstop="0" tabindex="113"></td><td class="grid-cell ck_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="114"></td><td class="grid-cell ma_nt C canfocus" style="" tabindex="115">VND</td><td class="grid-cell ten_nt C canfocus" style="" tabstop="0" tabindex="116">Việt Nam Đồng</td><td class="grid-cell ty_gia N txt-right canfocus" style="" tabindex="117">1</td><td class="grid-cell gia1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="118">2 536 000</td><td class="grid-cell gia2 N txt-right canfocus" style="" tabstop="0" tabindex="119">2 789 600</td><td class="grid-cell gia3 N txt-right canfocus" style="" tabstop="0" tabindex="120">2 500 000</td><td class="grid-cell tien1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="121">2 536 000</td><td class="grid-cell tien2 N txt-right canfocus" style="" tabstop="0" tabindex="122">2 789 600</td><td class="grid-cell tien3 N txt-right canfocus" style="" tabstop="0" tabindex="123">2 500 000</td><td class="grid-cell ck N txt-right canfocus" style="display:none;" tabstop="0" tabindex="124"></td><td class="grid-cell thue_suat N txt-right canfocus" style="" tabindex="125">10</td><td class="grid-cell thue_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="126">278 960</td><td class="grid-cell thue N txt-right canfocus" style="display:none;" tabstop="0" tabindex="127">278 960</td><td class="grid-cell tc_tien2 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="128">2 789 600</td><td class="grid-cell tc_tien_nt2 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="129">2 789 600</td><td class="grid-cell tt N txt-right canfocus" style="" tabindex="130">3 068 560</td><td class="grid-cell tt_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="131">3 068 560</td><td class="grid-cell tien_ln N txt-right canfocus" style="display:none;" tabstop="0" tabindex="132">532 560</td><td class="grid-cell dien_giai C canfocus" style="" tabstop="0" tabindex="133"></td></tr><tr><td class="txt-right" style="position: relative; z-index: 9;">3</td><td class="grid-cell id N txt-right canfocus" style="display:none;" tabstop="0" tabindex="134">1 603</td><td class="grid-cell line I txt-right canfocus" style="display:none;" tabstop="0" tabindex="135">3</td><td class="grid-cell ma_phi C canfocus" style="" tabindex="136">SEAL</td><td class="grid-cell ten_phi C canfocus" style="" tabstop="0" tabindex="137">Phí niêm phong chì</td><td class="grid-cell ma_dk_phi C canfocus" style="" tabindex="138"><select class="grid-input-field ma_dk_phi C Combobox txt-center" disabled="" undefined="" tabindex="139"><option value="1">Cước vận chuyển</option><option value="2">Phí nhập khẩu</option><option value="3" selected="">Phí xuất khẩu</option><option value="4">Phụ phí</option></select></td><td class="grid-cell ma_dvt C canfocus" style="" tabindex="140">BL</td><td class="grid-cell so_luong N txt-right canfocus" style="" tabindex="141">1</td><td class="grid-cell ct_km C canfocus" style="display:none;" tabstop="0" tabindex="142"><select class="grid-input-field ct_km C Combobox txt-center" disabled="" undefined="" tabstop="0" tabindex="143"><option value="0" selected="">Hàng bán</option><option value="1">Hàng KM</option></select></td><td class="grid-cell gia_nt1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="144">195 000</td><td class="grid-cell tien_nt1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="145">195 000</td><td class="grid-cell gia_nt2 N txt-right canfocus" style="" tabindex="146">214 500</td><td class="grid-cell tien_nt2 N txt-right canfocus" style="" tabindex="147">214 500</td><td class="grid-cell gia_nt3 N txt-right canfocus" style="" tabindex="148">200 000</td><td class="grid-cell tien_nt3 N txt-right canfocus" style="" tabindex="149">200 000</td><td class="grid-cell tl_ck N txt-right canfocus" style="display:none;" tabstop="0" tabindex="150"></td><td class="grid-cell ck_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="151"></td><td class="grid-cell ma_nt C canfocus" style="" tabindex="152">VND</td><td class="grid-cell ten_nt C canfocus" style="" tabstop="0" tabindex="153">Việt Nam Đồng</td><td class="grid-cell ty_gia N txt-right canfocus" style="" tabindex="154">1</td><td class="grid-cell gia1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="155">195 000</td><td class="grid-cell gia2 N txt-right canfocus" style="" tabstop="0" tabindex="156">214 500</td><td class="grid-cell gia3 N txt-right canfocus" style="" tabstop="0" tabindex="157">200 000</td><td class="grid-cell tien1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="158">195 000</td><td class="grid-cell tien2 N txt-right canfocus" style="" tabstop="0" tabindex="159">214 500</td><td class="grid-cell tien3 N txt-right canfocus" style="" tabstop="0" tabindex="160">200 000</td><td class="grid-cell ck N txt-right canfocus" style="display:none;" tabstop="0" tabindex="161"></td><td class="grid-cell thue_suat N txt-right canfocus" style="" tabindex="162">10</td><td class="grid-cell thue_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="163">21 450</td><td class="grid-cell thue N txt-right canfocus" style="display:none;" tabstop="0" tabindex="164">21 450</td><td class="grid-cell tc_tien2 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="165">214 500</td><td class="grid-cell tc_tien_nt2 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="166">214 500</td><td class="grid-cell tt N txt-right canfocus" style="" tabindex="167">235 950</td><td class="grid-cell tt_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="168">235 950</td><td class="grid-cell tien_ln N txt-right canfocus" style="display:none;" tabstop="0" tabindex="169">40 950</td><td class="grid-cell dien_giai C canfocus" style="" tabstop="0" tabindex="170"></td></tr>
                                <tr><td class="txt-right" style="position: relative; z-index: 9;">4</td><td class="grid-cell id N txt-right canfocus" style="display:none;" tabstop="0" tabindex="171">1 603</td><td class="grid-cell line I txt-right canfocus" style="display:none;" tabstop="0" tabindex="172">4</td><td class="grid-cell ma_phi C canfocus" style="" tabindex="173">LP</td><td class="grid-cell ten_phi C canfocus" style="" tabstop="0" tabindex="174">Phí thanh toán muộn thời hạn</td><td class="grid-cell ma_dk_phi C canfocus" style="" tabindex="175"><select class="grid-input-field ma_dk_phi C Combobox txt-center" disabled="" undefined="" tabindex="176"><option value="1">Cước vận chuyển</option><option value="2">Phí nhập khẩu</option><option value="3" selected="">Phí xuất khẩu</option><option value="4">Phụ phí</option></select></td><td class="grid-cell ma_dvt C canfocus" style="" tabindex="177">BL</td><td class="grid-cell so_luong N txt-right canfocus" style="" tabindex="178">1</td><td class="grid-cell ct_km C canfocus" style="display:none;" tabstop="0" tabindex="179"><select class="grid-input-field ct_km C Combobox txt-center" disabled="" undefined="" tabstop="0" tabindex="180"><option value="0" selected="">Hàng bán</option><option value="1">Hàng KM</option></select></td><td class="grid-cell gia_nt1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="181">400 000</td><td class="grid-cell tien_nt1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="182">400 000</td><td class="grid-cell gia_nt2 N txt-right canfocus" style="" tabindex="183">440 000</td><td class="grid-cell tien_nt2 N txt-right canfocus" style="" tabindex="184">440 000</td><td class="grid-cell gia_nt3 N txt-right canfocus" style="" tabindex="185">400 000</td><td class="grid-cell tien_nt3 N txt-right canfocus" style="" tabindex="186">400 000</td><td class="grid-cell tl_ck N txt-right canfocus" style="display:none;" tabstop="0" tabindex="187"></td><td class="grid-cell ck_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="188"></td><td class="grid-cell ma_nt C canfocus" style="" tabindex="189">VND</td><td class="grid-cell ten_nt C canfocus" style="" tabstop="0" tabindex="190">Việt Nam Đồng</td><td class="grid-cell ty_gia N txt-right canfocus" style="" tabindex="191">1</td><td class="grid-cell gia1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="192">400 000</td><td class="grid-cell gia2 N txt-right canfocus" style="" tabstop="0" tabindex="193">440 000</td><td class="grid-cell gia3 N txt-right canfocus" style="" tabstop="0" tabindex="194">400 000</td><td class="grid-cell tien1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="195">400 000</td><td class="grid-cell tien2 N txt-right canfocus" style="" tabstop="0" tabindex="196">440 000</td><td class="grid-cell tien3 N txt-right canfocus" style="" tabstop="0" tabindex="197">400 000</td><td class="grid-cell ck N txt-right canfocus" style="display:none;" tabstop="0" tabindex="198"></td><td class="grid-cell thue_suat N txt-right canfocus" style="" tabindex="199">10</td><td class="grid-cell thue_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="200">44 000</td><td class="grid-cell thue N txt-right canfocus" style="display:none;" tabstop="0" tabindex="201">44 000</td><td class="grid-cell tc_tien2 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="202">440 000</td><td class="grid-cell tc_tien_nt2 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="203">440 000</td><td class="grid-cell tt N txt-right canfocus" style="" tabindex="204">484 000</td><td class="grid-cell tt_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="205">484 000</td><td class="grid-cell tien_ln N txt-right canfocus" style="display:none;" tabstop="0" tabindex="206">84 000</td><td class="grid-cell dien_giai C canfocus" style="" tabstop="0" tabindex="207"></td></tr><tr><td class="txt-right" style="position: relative; z-index: 9;">5</td><td class="grid-cell id N txt-right canfocus" style="display:none;" tabstop="0" tabindex="208">1 603</td><td class="grid-cell line I txt-right canfocus" style="display:none;" tabstop="0" tabindex="209">5</td><td class="grid-cell ma_phi C canfocus" style="" tabindex="210">SI</td><td class="grid-cell ten_phi C canfocus" style="" tabstop="0" tabindex="211">Certificate</td><td class="grid-cell ma_dk_phi C canfocus" style="" tabindex="212"><select class="grid-input-field ma_dk_phi C Combobox txt-center" disabled="" undefined="" tabindex="213"><option value="1">Cước vận chuyển</option><option value="2">Phí nhập khẩu</option><option value="3" selected="">Phí xuất khẩu</option><option value="4">Phụ phí</option></select></td><td class="grid-cell ma_dvt C canfocus" style="" tabindex="214">BL</td><td class="grid-cell so_luong N txt-right canfocus" style="" tabindex="215">1</td><td class="grid-cell ct_km C canfocus" style="display:none;" tabstop="0" tabindex="216"><select class="grid-input-field ct_km C Combobox txt-center" disabled="" undefined="" tabstop="0" tabindex="217"><option value="0" selected="">Hàng bán</option><option value="1">Hàng KM</option></select></td><td class="grid-cell gia_nt1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="218">600 000</td><td class="grid-cell tien_nt1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="219">600 000</td><td class="grid-cell gia_nt2 N txt-right canfocus" style="" tabindex="220">660 000</td>
                                <td class="grid-cell tien_nt2 N txt-right canfocus" style="" tabindex="221">660 000</td><td class="grid-cell gia_nt3 N txt-right canfocus" style="" tabindex="222">600 000</td><td class="grid-cell tien_nt3 N txt-right canfocus" style="" tabindex="223">600 000</td><td class="grid-cell tl_ck N txt-right canfocus" style="display:none;" tabstop="0" tabindex="224"></td><td class="grid-cell ck_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="225"></td><td class="grid-cell ma_nt C canfocus" style="" tabindex="226">VND</td><td class="grid-cell ten_nt C canfocus" style="" tabstop="0" tabindex="227">Việt Nam Đồng</td><td class="grid-cell ty_gia N txt-right canfocus" style="" tabindex="228">1</td><td class="grid-cell gia1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="229">600 000</td><td class="grid-cell gia2 N txt-right canfocus" style="" tabstop="0" tabindex="230">660 000</td><td class="grid-cell gia3 N txt-right canfocus" style="" tabstop="0" tabindex="231">600 000</td><td class="grid-cell tien1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="232">600 000</td><td class="grid-cell tien2 N txt-right canfocus" style="" tabstop="0" tabindex="233">660 000</td><td class="grid-cell tien3 N txt-right canfocus" style="" tabstop="0" tabindex="234">600 000</td><td class="grid-cell ck N txt-right canfocus" style="display:none;" tabstop="0" tabindex="235"></td><td class="grid-cell thue_suat N txt-right canfocus" style="" tabindex="236">10</td><td class="grid-cell thue_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="237">66 000</td><td class="grid-cell thue N txt-right canfocus" style="display:none;" tabstop="0" tabindex="238">66 000</td><td class="grid-cell tc_tien2 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="239">660 000</td><td class="grid-cell tc_tien_nt2 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="240">660 000</td><td class="grid-cell tt N txt-right canfocus" style="" tabindex="241">726 000</td><td class="grid-cell tt_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="242">726 000</td><td class="grid-cell tien_ln N txt-right canfocus" style="display:none;" tabstop="0" tabindex="243">126 000</td><td class="grid-cell dien_giai C canfocus" style="" tabstop="0" tabindex="244"></td></tr><tr><td class="txt-right" style="position: relative; z-index: 9;">6</td><td class="grid-cell id N txt-right canfocus" style="display:none;" tabstop="0" tabindex="245">1 603</td><td class="grid-cell line I txt-right canfocus" style="display:none;" tabstop="0" tabindex="246">6</td><td class="grid-cell ma_phi C canfocus" style="" tabindex="247">BF</td><td class="grid-cell ten_phi C canfocus" style="" tabstop="0" tabindex="248">Phí phát hành vận đơn</td><td class="grid-cell ma_dk_phi C canfocus" style="" tabindex="249"><select class="grid-input-field ma_dk_phi C Combobox txt-center" disabled="" undefined="" tabindex="250"><option value="1">Cước vận chuyển</option><option value="2">Phí nhập khẩu</option><option value="3" selected="">Phí xuất khẩu</option><option value="4">Phụ phí</option></select></td><td class="grid-cell ma_dvt C canfocus" style="" tabindex="251">BL</td><td class="grid-cell so_luong N txt-right canfocus" style="" tabindex="252">1</td><td class="grid-cell ct_km C canfocus" style="display:none;" tabstop="0" tabindex="253"><select class="grid-input-field ct_km C Combobox txt-center" disabled="" undefined="" tabstop="0" tabindex="254"><option value="0" selected="">Hàng bán</option><option value="1">Hàng KM</option></select></td><td class="grid-cell gia_nt1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="255">950 000</td><td class="grid-cell tien_nt1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="256">950 000</td><td class="grid-cell gia_nt2 N txt-right canfocus" style="" tabindex="257">1 045 000</td><td class="grid-cell tien_nt2 N txt-right canfocus" style="" tabindex="258">1 045 000</td><td class="grid-cell gia_nt3 N txt-right canfocus" style="" tabindex="259">1 000 000</td><td class="grid-cell tien_nt3 N txt-right canfocus" style="" tabindex="260">1 000 000</td><td class="grid-cell tl_ck N txt-right canfocus" style="display:none;" tabstop="0" tabindex="261"></td><td class="grid-cell ck_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="262"></td><td class="grid-cell ma_nt C canfocus" style="" tabindex="263">VND</td><td class="grid-cell ten_nt C canfocus" style="" tabstop="0" tabindex="264">Việt Nam Đồng</td><td class="grid-cell ty_gia N txt-right canfocus" style="" tabindex="265">1</td><td class="grid-cell gia1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="266">950 000</td><td class="grid-cell gia2 N txt-right canfocus" style="" tabstop="0" tabindex="267">1 045 000</td><td class="grid-cell gia3 N txt-right canfocus" style="" tabstop="0" tabindex="268">1 000 000</td><td class="grid-cell tien1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="269">950 000</td><td class="grid-cell tien2 N txt-right canfocus" style="" tabstop="0" tabindex="270">1 045 000</td><td class="grid-cell tien3 N txt-right canfocus" style="" tabstop="0" tabindex="271">1 000 000</td><td class="grid-cell ck N txt-right canfocus" style="display:none;" tabstop="0" tabindex="272"></td><td class="grid-cell thue_suat N txt-right canfocus" style="" tabindex="273">10</td><td class="grid-cell thue_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="274">104 500</td><td class="grid-cell thue N txt-right canfocus" style="display:none;" tabstop="0" tabindex="275">104 500</td><td class="grid-cell tc_tien2 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="276">1 045 000</td><td class="grid-cell tc_tien_nt2 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="277">1 045 000</td><td class="grid-cell tt N txt-right canfocus" style="" tabindex="278">1 149 500</td><td class="grid-cell tt_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="279">1 149 500</td><td class="grid-cell tien_ln N txt-right canfocus" style="display:none;" tabstop="0" tabindex="280">199 500</td><td class="grid-cell dien_giai C canfocus" style="" tabstop="0" tabindex="281"></td></tr><tr><td class="txt-right" style="position: relative; z-index: 9;">7</td><td class="grid-cell id N txt-right canfocus" style="display:none;" tabstop="0" tabindex="282">1 603</td><td class="grid-cell line I txt-right canfocus" style="display:none;" tabstop="0" tabindex="283">7</td><td class="grid-cell ma_phi C canfocus" style="" tabindex="284">NL5</td><td class="grid-cell ten_phi C canfocus" style="" tabstop="0" tabindex="285">Phí bồi thường thiệt hại</td><td class="grid-cell ma_dk_phi C canfocus" style="" tabindex="286"><select class="grid-input-field ma_dk_phi C Combobox txt-center" disabled="" undefined="" tabindex="287"><option value="1">Cước vận chuyển</option><option value="2">Phí nhập khẩu</option><option value="3" selected="">Phí xuất khẩu</option><option value="4">Phụ phí</option></select></td><td class="grid-cell ma_dvt C canfocus" style="" tabindex="288">BL</td><td class="grid-cell so_luong N txt-right canfocus" style="" tabindex="289">1</td><td class="grid-cell ct_km C canfocus" style="display:none;" tabstop="0" tabindex="290"><select class="grid-input-field ct_km C Combobox txt-center" disabled="" undefined="" tabstop="0" tabindex="291"><option value="0" selected="">Hàng bán</option><option value="1">Hàng KM</option></select></td><td class="grid-cell gia_nt1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="292">150 000</td><td class="grid-cell tien_nt1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="293">150 000</td><td class="grid-cell gia_nt2 N txt-right canfocus" style="" tabindex="294">165 000</td><td class="grid-cell tien_nt2 N txt-right canfocus" style="" tabindex="295">165 000</td><td class="grid-cell gia_nt3 N txt-right canfocus" style="" tabindex="296">165 000</td><td class="grid-cell tien_nt3 N txt-right canfocus" style="" tabindex="297">165 000</td><td class="grid-cell tl_ck N txt-right canfocus" style="display:none;" tabstop="0" tabindex="298"></td><td class="grid-cell ck_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="299"></td><td class="grid-cell ma_nt C canfocus" style="" tabindex="300">VND</td><td class="grid-cell ten_nt C canfocus" style="" tabstop="0" tabindex="301">Việt Nam Đồng</td><td class="grid-cell ty_gia N txt-right canfocus" style="" tabindex="302">1</td><td class="grid-cell gia1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="303">150 000</td><td class="grid-cell gia2 N txt-right canfocus" style="" tabstop="0" tabindex="304">165 000</td><td class="grid-cell gia3 N txt-right canfocus" style="" tabstop="0" tabindex="305">165 000</td><td class="grid-cell tien1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="306">150 000</td><td class="grid-cell tien2 N txt-right canfocus" style="" tabstop="0" tabindex="307">165 000</td><td class="grid-cell tien3 N txt-right canfocus" style="" tabstop="0" tabindex="308">165 000</td><td class="grid-cell ck N txt-right canfocus" style="display:none;" tabstop="0" tabindex="309"></td><td class="grid-cell thue_suat N txt-right canfocus" style="" tabindex="310">10</td><td class="grid-cell thue_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="311">16 500</td><td class="grid-cell thue N txt-right canfocus" style="display:none;" tabstop="0" tabindex="312">16 500</td><td class="grid-cell tc_tien2 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="313">165 000</td><td class="grid-cell tc_tien_nt2 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="314">165 000</td><td class="grid-cell tt N txt-right canfocus" style="" tabindex="315">181 500</td><td class="grid-cell tt_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="316">181 500</td>
                                <td class="grid-cell tien_ln N txt-right canfocus" style="display:none;" tabstop="0" tabindex="317">31 500</td><td class="grid-cell dien_giai C canfocus" style="" tabstop="0" tabindex="318"></td></tr><tr><td class="txt-right" style="position: relative; z-index: 9;">8</td><td class="grid-cell id N txt-right canfocus" style="display:none;" tabstop="0" tabindex="319">1 603</td><td class="grid-cell line I txt-right canfocus" style="display:none;" tabstop="0" tabindex="320">8</td><td class="grid-cell ma_phi C canfocus" style="" tabindex="321">MAF</td><td class="grid-cell ten_phi C canfocus" style="" tabstop="0" tabindex="322">Phí chỉnh sửa Bill</td><td class="grid-cell ma_dk_phi C canfocus" style="" tabindex="323"><select class="grid-input-field ma_dk_phi C Combobox txt-center" disabled="" undefined="" tabindex="324"><option value="1">Cước vận chuyển</option><option value="2">Phí nhập khẩu</option><option value="3" selected="">Phí xuất khẩu</option><option value="4">Phụ phí</option></select></td><td class="grid-cell ma_dvt C canfocus" style="" tabindex="325">BL</td><td class="grid-cell so_luong N txt-right canfocus" style="" tabindex="326">1</td><td class="grid-cell ct_km C canfocus" style="display:none;" tabstop="0" tabindex="327"><select class="grid-input-field ct_km C Combobox txt-center" disabled="" undefined="" tabstop="0" tabindex="328"><option value="0" selected="">Hàng bán</option><option value="1">Hàng KM</option></select></td><td class="grid-cell gia_nt1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="329">1 150 000</td><td class="grid-cell tien_nt1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="330">1 150 000</td><td class="grid-cell gia_nt2 N txt-right canfocus" style="" tabindex="331">1 265 000</td><td class="grid-cell tien_nt2 N txt-right canfocus" style="" tabindex="332">1 265 000</td><td class="grid-cell gia_nt3 N txt-right canfocus" style="" tabindex="333">1 265 000</td><td class="grid-cell tien_nt3 N txt-right canfocus" style="" tabindex="334">1 265 000</td><td class="grid-cell tl_ck N txt-right canfocus" style="display:none;" tabstop="0" tabindex="335"></td><td class="grid-cell ck_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="336"></td><td class="grid-cell ma_nt C canfocus" style="" tabindex="337">VND</td><td class="grid-cell ten_nt C canfocus" style="" tabstop="0" tabindex="338">Việt Nam Đồng</td><td class="grid-cell ty_gia N txt-right canfocus" style="" tabindex="339">1</td><td class="grid-cell gia1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="340">1 150 000</td><td class="grid-cell gia2 N txt-right canfocus" style="" tabstop="0" tabindex="341">1 265 000</td><td class="grid-cell gia3 N txt-right canfocus" style="" tabstop="0" tabindex="342">1 265 000</td><td class="grid-cell tien1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="343">1 150 000</td><td class="grid-cell tien2 N txt-right canfocus" style="" tabstop="0" tabindex="344">1 265 000</td><td class="grid-cell tien3 N txt-right canfocus" style="" tabstop="0" tabindex="345">1 265 000</td><td class="grid-cell ck N txt-right canfocus" style="display:none;" tabstop="0" tabindex="346"></td><td class="grid-cell thue_suat N txt-right canfocus" style="" tabindex="347">10</td><td class="grid-cell thue_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="348">126 500</td><td class="grid-cell thue N txt-right canfocus" style="display:none;" tabstop="0" tabindex="349">126 500</td><td class="grid-cell tc_tien2 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="350">1 265 000</td><td class="grid-cell tc_tien_nt2 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="351">1 265 000</td><td class="grid-cell tt N txt-right canfocus" style="" tabindex="352">1 391 500</td><td class="grid-cell tt_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="353">1 391 500</td><td class="grid-cell tien_ln N txt-right canfocus" style="display:none;" tabstop="0" tabindex="354">241 500</td><td class="grid-cell dien_giai C canfocus" style="" tabstop="0" tabindex="355"></td></tr><tr><td class="txt-right" style="position: relative; z-index: 9;">9</td><td class="grid-cell id N txt-right canfocus" style="display:none;" tabstop="0" tabindex="356">1 603</td><td class="grid-cell line I txt-right canfocus" style="display:none;" tabstop="0" tabindex="357">9</td><td class="grid-cell ma_phi C canfocus" style="" tabindex="358">AMS</td><td class="grid-cell ten_phi C canfocus" style="" tabstop="0" tabindex="359">Phí khai báo an ninh vào Mỹ</td><td class="grid-cell ma_dk_phi C canfocus" style="" tabindex="360"><select class="grid-input-field ma_dk_phi C Combobox txt-center" disabled="" undefined="" tabindex="361"><option value="1">Cước vận chuyển</option><option value="2">Phí nhập khẩu</option><option value="3" selected="">Phí xuất khẩu</option><option value="4">Phụ phí</option></select></td><td class="grid-cell ma_dvt C canfocus" style="" tabindex="362">BL</td><td class="grid-cell so_luong N txt-right canfocus" style="" tabindex="363">1</td><td class="grid-cell ct_km C canfocus" style="display:none;" tabstop="0" tabindex="364"><select class="grid-input-field ct_km C Combobox txt-center" disabled="" undefined="" tabstop="0" tabindex="365"><option value="0" selected="">Hàng bán</option><option value="1">Hàng KM</option></select></td><td class="grid-cell gia_nt1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="366">650 000</td><td class="grid-cell tien_nt1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="367">650 000</td><td class="grid-cell gia_nt2 N txt-right canfocus" style="" tabindex="368">715 000</td><td class="grid-cell tien_nt2 N txt-right canfocus" style="" tabindex="369">715 000</td><td class="grid-cell gia_nt3 N txt-right canfocus" style="" tabindex="370">715 000</td><td class="grid-cell tien_nt3 N txt-right canfocus" style="" tabindex="371">715 000</td><td class="grid-cell tl_ck N txt-right canfocus" style="display:none;" tabstop="0" tabindex="372"></td><td class="grid-cell ck_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="373"></td><td class="grid-cell ma_nt C canfocus" style="" tabindex="374">VND</td><td class="grid-cell ten_nt C canfocus" style="" tabstop="0" tabindex="375">Việt Nam Đồng</td><td class="grid-cell ty_gia N txt-right canfocus" style="" tabindex="376">1</td><td class="grid-cell gia1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="377">650 000</td><td class="grid-cell gia2 N txt-right canfocus" style="" tabstop="0" tabindex="378">715 000</td><td class="grid-cell gia3 N txt-right canfocus" style="" tabstop="0" tabindex="379">715 000</td><td class="grid-cell tien1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="380">650 000</td><td class="grid-cell tien2 N txt-right canfocus" style="" tabstop="0" tabindex="381">715 000</td><td class="grid-cell tien3 N txt-right canfocus" style="" tabstop="0" tabindex="382">715 000</td><td class="grid-cell ck N txt-right canfocus" style="display:none;" tabstop="0" tabindex="383"></td><td class="grid-cell thue_suat N txt-right canfocus" style="" tabindex="384">10</td><td class="grid-cell thue_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="385">71 500</td><td class="grid-cell thue N txt-right canfocus" style="display:none;" tabstop="0" tabindex="386">71 500</td><td class="grid-cell tc_tien2 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="387">715 000</td><td class="grid-cell tc_tien_nt2 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="388">715 000</td><td class="grid-cell tt N txt-right canfocus" style="" tabindex="389">786 500</td><td class="grid-cell tt_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="390">786 500</td><td class="grid-cell tien_ln N txt-right canfocus" style="display:none;" tabstop="0" tabindex="391">136 500</td><td class="grid-cell dien_giai C canfocus" style="" tabstop="0" tabindex="392"></td></tr><tr><td class="txt-right" style="position: relative; z-index: 9;">10</td><td class="grid-cell id N txt-right canfocus" style="display:none;" tabstop="0" tabindex="393">1 603</td><td class="grid-cell line I txt-right canfocus" style="display:none;" tabstop="0" tabindex="394">10</td><td class="grid-cell ma_phi C canfocus" style="" tabindex="395">TELEX</td><td class="grid-cell ten_phi C canfocus" style="" tabstop="0" tabindex="396">Là một loại phí hình thức giao hàng bằng mà không cần nhận bill gốc. Khi khách hàng gửi xuất hàng đi nước ngoài mà toàn bộ chi phí tiền hàng của bên mua đã thanh toán cho bên bán xong thì bên bán sẽ ủy quyền xuất Telex Release để bên nhận hàng có thể lấy h</td><td class="grid-cell ma_dk_phi C canfocus" style="" tabindex="397"><select class="grid-input-field ma_dk_phi C Combobox txt-center" disabled="" undefined="" tabindex="398"><option value="1">Cước vận chuyển</option><option value="2">Phí nhập khẩu</option><option value="3" selected="">Phí xuất khẩu</option><option value="4">Phụ phí</option></select></td><td class="grid-cell ma_dvt C canfocus" style="" tabindex="399">BL</td><td class="grid-cell so_luong N txt-right canfocus" style="" tabindex="400">1</td><td class="grid-cell ct_km C canfocus" style="display:none;" tabstop="0" tabindex="401"><select class="grid-input-field ct_km C Combobox txt-center" disabled="" undefined="" tabstop="0" tabindex="402"><option value="0" selected="">Hàng bán</option><option value="1">Hàng KM</option></select></td><td class="grid-cell gia_nt1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="403">550 000</td><td class="grid-cell tien_nt1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="404">550 000</td><td class="grid-cell gia_nt2 N txt-right canfocus" style="" tabindex="405">605 000</td><td class="grid-cell tien_nt2 N txt-right canfocus" style="" tabindex="406">605 000</td><td class="grid-cell gia_nt3 N txt-right canfocus" style="" tabindex="407">605 000</td><td class="grid-cell tien_nt3 N txt-right canfocus" style="" tabindex="408">605 000</td><td class="grid-cell tl_ck N txt-right canfocus" style="display:none;" tabstop="0" tabindex="409"></td><td class="grid-cell ck_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="410"></td>
                                <td class="grid-cell ma_nt C canfocus" style="" tabindex="411">VND</td><td class="grid-cell ten_nt C canfocus" style="" tabstop="0" tabindex="412">Việt Nam Đồng</td><td class="grid-cell ty_gia N txt-right canfocus" style="" tabindex="413">1</td><td class="grid-cell gia1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="414">550 000</td><td class="grid-cell gia2 N txt-right canfocus" style="" tabstop="0" tabindex="415">605 000</td><td class="grid-cell gia3 N txt-right canfocus" style="" tabstop="0" tabindex="416">605 000</td><td class="grid-cell tien1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="417">550 000</td><td class="grid-cell tien2 N txt-right canfocus" style="" tabstop="0" tabindex="418">605 000</td><td class="grid-cell tien3 N txt-right canfocus" style="" tabstop="0" tabindex="419">605 000</td><td class="grid-cell ck N txt-right canfocus" style="display:none;" tabstop="0" tabindex="420"></td><td class="grid-cell thue_suat N txt-right canfocus" style="" tabindex="421">10</td><td class="grid-cell thue_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="422">60 500</td><td class="grid-cell thue N txt-right canfocus" style="display:none;" tabstop="0" tabindex="423">60 500</td><td class="grid-cell tc_tien2 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="424">605 000</td><td class="grid-cell tc_tien_nt2 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="425">605 000</td><td class="grid-cell tt N txt-right canfocus" style="" tabindex="426">665 500</td><td class="grid-cell tt_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="427">665 500</td><td class="grid-cell tien_ln N txt-right canfocus" style="display:none;" tabstop="0" tabindex="428">115 500</td><td class="grid-cell dien_giai C canfocus" style="" tabstop="0" tabindex="429"></td></tr><tr><td class="txt-right" style="position: relative; z-index: 9;">11</td><td class="grid-cell id N txt-right canfocus" style="display:none;" tabstop="0" tabindex="430">1 603</td><td class="grid-cell line I txt-right canfocus" style="display:none;" tabstop="0" tabindex="431">11</td><td class="grid-cell ma_phi C canfocus" style="" tabindex="432">CQ</td><td class="grid-cell ten_phi C canfocus" style="" tabstop="0" tabindex="433">Hàng nguy hiểm</td><td class="grid-cell ma_dk_phi C canfocus" style="" tabindex="434"><select class="grid-input-field ma_dk_phi C Combobox txt-center" disabled="" undefined="" tabindex="435"><option value="1">Cước vận chuyển</option><option value="2">Phí nhập khẩu</option><option value="3" selected="">Phí xuất khẩu</option><option value="4">Phụ phí</option></select></td><td class="grid-cell ma_dvt C canfocus" style="" tabindex="436">BL</td><td class="grid-cell so_luong N txt-right canfocus" style="" tabindex="437">1</td><td class="grid-cell ct_km C canfocus" style="display:none;" tabstop="0" tabindex="438"><select class="grid-input-field ct_km C Combobox txt-center" disabled="" undefined="" tabstop="0" tabindex="439"><option value="0" selected="">Hàng bán</option><option value="1">Hàng KM</option></select></td><td class="grid-cell gia_nt1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="440">1</td><td class="grid-cell tien_nt1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="441">1</td><td class="grid-cell gia_nt2 N txt-right canfocus" style="" tabindex="442">1.1</td><td class="grid-cell tien_nt2 N txt-right canfocus" style="" tabindex="443">1.1</td><td class="grid-cell gia_nt3 N txt-right canfocus" style="" tabindex="444">1</td><td class="grid-cell tien_nt3 N txt-right canfocus" style="" tabindex="445">1</td><td class="grid-cell tl_ck N txt-right canfocus" style="display:none;" tabstop="0" tabindex="446"></td><td class="grid-cell ck_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="447"></td><td class="grid-cell ma_nt C canfocus" style="" tabindex="448">VND</td><td class="grid-cell ten_nt C canfocus" style="" tabstop="0" tabindex="449">Việt Nam Đồng</td><td class="grid-cell ty_gia N txt-right canfocus" style="" tabindex="450">1</td><td class="grid-cell gia1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="451">1</td><td class="grid-cell gia2 N txt-right canfocus" style="" tabstop="0" tabindex="452">1.1</td><td class="grid-cell gia3 N txt-right canfocus" style="" tabstop="0" tabindex="453">1</td><td class="grid-cell tien1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="454">1</td><td class="grid-cell tien2 N txt-right canfocus" style="" tabstop="0" tabindex="455">1</td><td class="grid-cell tien3 N txt-right canfocus" style="" tabstop="0" tabindex="456">1</td><td class="grid-cell ck N txt-right canfocus" style="display:none;" tabstop="0" tabindex="457"></td><td class="grid-cell thue_suat N txt-right canfocus" style="" tabindex="458">10</td><td class="grid-cell thue_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="459">0.11</td><td class="grid-cell thue N txt-right canfocus" style="display:none;" tabstop="0" tabindex="460"></td><td class="grid-cell tc_tien2 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="461">1</td><td class="grid-cell tc_tien_nt2 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="462">1</td><td class="grid-cell tt N txt-right canfocus" style="" tabindex="463">1</td><td class="grid-cell tt_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="464">1</td><td class="grid-cell tien_ln N txt-right canfocus" style="display:none;" tabstop="0" tabindex="465"></td><td class="grid-cell dien_giai C canfocus" style="" tabstop="0" tabindex="466"></td></tr><tr><td class="txt-right" style="position: relative; z-index: 9;">12</td><td class="grid-cell id N txt-right canfocus" style="display:none;" tabstop="0" tabindex="467">1 603</td><td class="grid-cell line I txt-right canfocus" style="display:none;" tabstop="0" tabindex="468">12</td><td class="grid-cell ma_phi C canfocus" style="" tabindex="469">AFR</td><td class="grid-cell ten_phi C canfocus" style="" tabstop="0" tabindex="470">Phí khai báo nhập khẩu Nhật</td><td class="grid-cell ma_dk_phi C canfocus" style="" tabindex="471"><select class="grid-input-field ma_dk_phi C Combobox txt-center" disabled="" undefined="" tabindex="472"><option value="1">Cước vận chuyển</option><option value="2" selected="">Phí nhập khẩu</option><option value="3">Phí xuất khẩu</option><option value="4">Phụ phí</option></select></td><td class="grid-cell ma_dvt C canfocus" style="" tabindex="473">CONT</td><td class="grid-cell so_luong N txt-right canfocus" style="" tabindex="474">1</td><td class="grid-cell ct_km C canfocus" style="display:none;" tabstop="0" tabindex="475"><select class="grid-input-field ct_km C Combobox txt-center" disabled="" undefined="" tabstop="0" tabindex="476">
                                <option value="0" selected="">Hàng bán</option><option value="1">Hàng KM</option></select></td><td class="grid-cell gia_nt1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="477">5 125 120</td><td class="grid-cell tien_nt1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="478">5 125 120</td><td class="grid-cell gia_nt2 N txt-right canfocus" style="" tabindex="479">5 637 632</td><td class="grid-cell tien_nt2 N txt-right canfocus" style="" tabindex="480">5 637 632</td><td class="grid-cell gia_nt3 N txt-right canfocus" style="" tabindex="481">5 637 632</td><td class="grid-cell tien_nt3 N txt-right canfocus" style="" tabindex="482">5 637 632</td><td class="grid-cell tl_ck N txt-right canfocus" style="display:none;" tabstop="0" tabindex="483"></td><td class="grid-cell ck_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="484"></td><td class="grid-cell ma_nt C canfocus" style="" tabindex="485">VND</td><td class="grid-cell ten_nt C canfocus" style="" tabstop="0" tabindex="486">Việt Nam Đồng</td><td class="grid-cell ty_gia N txt-right canfocus" style="" tabindex="487">1</td><td class="grid-cell gia1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="488">5 125 120</td><td class="grid-cell gia2 N txt-right canfocus" style="" tabstop="0" tabindex="489">5 637 632</td><td class="grid-cell gia3 N txt-right canfocus" style="" tabstop="0" tabindex="490">5 637 632</td><td class="grid-cell tien1 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="491">5 125 120</td><td class="grid-cell tien2 N txt-right canfocus" style="" tabstop="0" tabindex="492">5 637 632</td><td class="grid-cell tien3 N txt-right canfocus" style="" tabstop="0" tabindex="493">5 637 632</td><td class="grid-cell ck N txt-right canfocus" style="display:none;" tabstop="0" tabindex="494"></td><td class="grid-cell thue_suat N txt-right canfocus" style="" tabindex="495">10</td><td class="grid-cell thue_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="496">563 763.2</td><td class="grid-cell thue N txt-right canfocus" style="display:none;" tabstop="0" tabindex="497">563 763</td><td class="grid-cell tc_tien2 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="498">5 637 632</td><td class="grid-cell tc_tien_nt2 N txt-right canfocus" style="display:none;" tabstop="0" tabindex="499">5 637 632</td><td class="grid-cell tt N txt-right canfocus" style="" tabindex="500">6 201 395</td><td class="grid-cell tt_nt N txt-right canfocus" style="display:none;" tabstop="0" tabindex="501">6 201 395</td><td class="grid-cell tien_ln N txt-right canfocus" style="display:none;" tabstop="0" tabindex="502">1 076 275</td><td class="grid-cell dien_giai C canfocus" style="" tabstop="0" tabindex="503"></td></tr></tbody></table></div></div></div><div id="s51_2" class="tab-pane tab-grid"><div style="padding-top: 3px;width: 100%;"><div class="grid-menubar grid-parent"><table class="table-itembar" grid-index="1"><tbody><tr><td title="Cố định cột" class="toolbar-freeze " id="TOOLBAR_s51_v513_freeze"><div></div></td><td title="Mở rộng" class="toolbar-extend mobile-show" id="TOOLBAR_s51_v513_extend"><div>Mở rộng <span class="caret caret-extend"></span></div></td></tr></tbody></table><img id="WAIT_s51_v513" class="grid-icon-loading" style="display:none" src="../Images/ic_loading.gif"></div></div><div class="table-detail"><div class="table-scroll-horizontal"><table id="TABLE_s51_v513" grid-index="1" class="table"><colgroup><col style="width: auto;"><col class="grid-colgroup id" style="width: 0px;display:none;"><col class="grid-colgroup line" style="width: 0px;display:none;"><col class="grid-colgroup ma_phi" style="width: 100px;"><col class="grid-colgroup ten_phi" style="width: 250px;"><col class="grid-colgroup chon_yn" style="width: 80px;"><col class="grid-colgroup so_luongx" style="width: 100px;"><col class="grid-colgroup gia_ntx2" style="width: 100px;"><col class="grid-colgroup tien_ntx2" style="width: 100px;"><col class="grid-colgroup ma_nt" style="width: 70px;"><col class="grid-colgroup ten_nt" style="width: 0px;"><col class="grid-colgroup ty_giax" style="width: 100px;"><col class="grid-colgroup giax2" style="width: 0px;"><col class="grid-colgroup tienx2" style="width: 100px;"></colgroup><thead><tr><th style="position: relative; z-index: 10;"></th><th class="grid-column id N" style="display:none;"><div class="col-header-resize"></div><span></span></th><th class="grid-column line I" style="display:none;"><div class="col-header-resize"></div><span>Dòng</span></th><th class="grid-column ma_phi C" style=""><div class="col-header-resize"></div><span>Mã phí</span></th><th class="grid-column ten_phi C" style=""><div class="col-header-resize"></div><span>Tên phí</span></th><th class="grid-column chon_yn B" style=""><div class="col-header-resize"></div><span>Chọn</span></th><th class="grid-column so_luongx N" style=""><div class="col-header-resize"></div><span>Số lượng</span></th><th class="grid-column gia_ntx2 N" style=""><div class="col-header-resize"></div><span>Giá bán</span></th><th class="grid-column tien_ntx2 N" style=""><div class="col-header-resize"></div><span>Tiền bán</span></th><th class="grid-column ma_nt C" style=""><div class="col-header-resize"></div><span>Mã NT</span></th><th class="grid-column ten_nt C" style=""><div class="col-header-resize"></div><span>Tên phí</span></th><th class="grid-column ty_giax N" style=""><div class="col-header-resize"></div><span>Tỷ giá</span></th><th class="grid-column giax2 N" style=""><div class="col-header-resize"></div><span>Giá bán</span></th><th class="grid-column tienx2 N" style="">
                                <div class="col-header-resize"></div><span>Tiền quy đổi</span></th></tr></thead><tbody id="BODY_s51_v513" class="data"><tr><td class="txt-right" style="position: relative; z-index: 9;">1</td><td class="grid-cell id N txt-right canfocus" style="display:none;" tabstop="0" tabindex="504"></td><td class="grid-cell line I txt-right canfocus" style="display:none;" tabstop="0" tabindex="505"></td><td class="grid-cell ma_phi C canfocus" style="" tabstop="0" tabindex="506"></td><td class="grid-cell ten_phi C canfocus" style="" tabstop="0" tabindex="507"></td><td class="grid-cell chon_yn B txt-center canfocus" style="" tabindex="508"><div class="checkbox"><label><input type="checkbox" disabled="true"><span class="checkbox-material"><span class="check"></span></span></label></div></td><td class="grid-cell so_luongx N txt-right canfocus" style="" tabindex="509">1</td><td class="grid-cell gia_ntx2 N txt-right canfocus" style="" tabindex="510"></td><td class="grid-cell tien_ntx2 N txt-right canfocus" style="" tabindex="511"></td><td class="grid-cell ma_nt C canfocus" style="" tabstop="0" tabindex="512"></td><td class="grid-cell ten_nt C canfocus" style="" tabstop="0" tabindex="513"></td><td class="grid-cell ty_giax N txt-right canfocus" style="" tabindex="514">1</td><td class="grid-cell giax2 N txt-right canfocus" style="" tabstop="0" tabindex="515"></td><td class="grid-cell tienx2 N txt-right canfocus" style="" tabstop="0" tabindex="516"></td></tr></tbody></table></div></div></div><div id="s51_5" class="tab-pane"><div class="row"><div class="modal-left-0"><div class="form-group"><div class="col-xs-24 col-120"><label class="control-label ma_nvbh">Mã nhân viên</label></div><div class="col-xs-24 col-120"><input value="" spellcheck="false" type="text" class="input-field ma_nvbh C Lookup form-control materail-input C" style="text-transform: uppercase;" disabled="" maxlength="32" tabindex="517"><span class="icon-lookup btn-lookup" data-toggle="modal"></span></div><div class="col-xs-24 col-fill-240"><input value="" spellcheck="false" type="text" class="input-field ten_nvbh C  form-control materail-input C" tabstop="0" style="" readonly="" disabled="" tabindex="518"></div></div><div class="form-group"><div class="col-xs-24 col-120"><label class="control-label ma_ptvc">Phương tiện v/c</label></div><div class="col-xs-24 col-120"><input value="" spellcheck="false" type="text" class="input-field ma_ptvc C Lookup form-control materail-input C" style="text-transform: uppercase;" disabled="" maxlength="32" tabindex="519"><span class="icon-lookup btn-lookup" data-toggle="modal"></span></div><div class="col-xs-24 col-fill-240"><input value="" spellcheck="false" type="text" class="input-field ten_ptvc C  form-control materail-input C" tabstop="0" style="" readonly="" disabled="" tabindex="520"></div></div><div class="form-group"><div class="col-xs-24 col-120"><label class="control-label ma_pttt">Ph/th thanh toán</label></div><div class="col-xs-24 col-120"><input value="" spellcheck="false" type="text" class="input-field ma_pttt C Lookup form-control materail-input C" style="text-transform: uppercase;" disabled="" maxlength="32" tabindex="521"><span class="icon-lookup btn-lookup" data-toggle="modal"></span></div><div class="col-xs-24 col-fill-240"><input value="" spellcheck="false" type="text" class="input-field ten_pttt C  form-control materail-input C" tabstop="0" style="" readonly="" disabled="" tabindex="522"></div></div><div class="form-group"><div class="col-xs-24 col-120"><label class="control-label ma_ptgh">Ph/th giao hàng</label></div><div class="col-xs-24 col-120"><input value="" spellcheck="false" type="text" class="input-field ma_ptgh C Lookup form-control materail-input C" style="text-transform: uppercase;" disabled="" maxlength="32" tabindex="523"><span class="icon-lookup btn-lookup" data-toggle="modal"></span></div><div class="col-xs-24 col-fill-240"><input value="" spellcheck="false" type="text" class="input-field ten_ptgh C  form-control materail-input C" tabstop="0" style="" readonly="" disabled="" tabindex="524"></div></div><div class="form-group form-group-hidden"><div class="col-xs-24 col-120"><label class="control-label ma_gd">Giao dịch</label></div><div class="col-xs-24 col-180"><select class="input-field ma_gd C form-control materail-input" tabstop="0" disabled="" style="" tabindex="525"><option value="BQ" selected="">Tạo phiếu mới</option><option value="BG">Lấy từ báo giá</option></select></div></div><div class="form-group form-group-hidden"><div class="col-xs-24 col-120"><label class="control-label t_ck_nt">Tổng chiết khấu</label></div><div class="col-xs-24 col-120"><input value="0.00" spellcheck="false" type="text" class="input-field t_ck_nt N  txt-right form-control materail-input N" tabstop="0" style="" disabled="" maxlength="13" tabindex="526"></div><div class="col-xs-24 col-120"><input value="0" spellcheck="false" type="text" class="input-field t_ck N  txt-right form-control materail-input N" tabstop="0" style="" disabled="" maxlength="13" tabindex="527"></div></div><div class="form-group"><div class="col-xs-24 col-120"><label class="control-label t_tc_tien_nt2">Tổng tiền hàng</label></div><div class="col-xs-24 col-120"><input value="13 539 043.00" spellcheck="false" type="text" class="input-field t_tc_tien_nt2 N  txt-right form-control materail-input N" style="" disabled="" maxlength="13" tabindex="528"></div><div class="col-xs-24 col-120"><input value="67 706 233" spellcheck="false" type="text" class="input-field t_tc_tien2 N  txt-right form-control materail-input N" style="" disabled="" maxlength="13" tabindex="529"></div></div><div class="form-group form-group-hidden"><div class="col-xs-24 col-120"><label class="control-label t_km_nt">Tổng tiền KM</label></div><div class="col-xs-24 col-120"><input value="0.00" spellcheck="false" type="text" class="input-field t_km_nt N  txt-right form-control materail-input N" tabstop="0" style="" disabled="" tabindex="530"></div><div class="col-xs-24 col-120"><input value="0" spellcheck="false" type="text" class="input-field t_km N  txt-right form-control materail-input N" tabstop="0" style="" disabled="" tabindex="531"></div></div></div></div></div><div id="s51_7" class="tab-pane"><div class="row"><div class="modal-left-0"><div class="form-group css4control-xfile"><div class="col-xs-24 col-120">
                                <label class="control-label xfile">Chọn files</label></div><div class="col-xs-24 col-480"><div class="upload-field xfile C File" style="" old-val=""><div class="ajax-file-upload" style="position: relative; overflow: hidden; cursor: default;"><img src="../Images/ic_file_upload.png" class="btn-file-upload"><form method="POST" action="../AppHandler/FileHandler.ashx?param=VXBsb2FkW0AjXTA=" enctype="multipart/form-data" style="margin: 0px; padding: 0px;"><input type="file" id="ajax-upload-id-1684897103648" name="file-xfile[]" accept="*" multiple="" disabled="disabled" style="position: absolute; cursor: pointer; top: 0px; width: 100%; height: 100%; left: 0px; z-index: 100; opacity: 0;"></form></div><div></div></div><div class=""><div class="container-file-multiple"></div></div></div></div></div></div></div></div></div></div><div class="modal-body-fotter"><div class="modal-left-0"><div class="form-group"><div class="col-xs-24 col-100"><label class="control-label t_so_luong" style="font-weight: bold;">Tổng số lượng</label></div><div class="col-xs-24 col-100"><input value="12" spellcheck="false" type="text" class="input-field t_so_luong N  txt-right form-control materail-input N" style="font-weight: bold;" disabled="" maxlength="13" tabindex="532"></div><div class="col-xs-24 col-100"><label class="control-label t_tien_nt2" style="font-weight: bold;">Tổng thanh toán</label></div><div class="col-xs-24 col-100"><input value="13 539 043.10" spellcheck="false" type="text" class="input-field t_tien_nt2 N  txt-right form-control materail-input N" style="font-weight: bold;" disabled="" maxlength="13" tabindex="533"></div><div class="col-xs-24 col-100"><input value="67 706 233" spellcheck="false" type="text" class="input-field t_tien2 N  txt-right form-control materail-input N" tabstop="0" style="font-weight: bold;" disabled="" maxlength="13" tabindex="534"></div><div class="col-xs-24 col-100"><input value="74 476 856" spellcheck="false" type="text" class="input-field t_tt N  txt-right form-control materail-input N" style="font-weight: bold;" disabled="" maxlength="13" tabindex="535"></div></div><div class="form-group"><div class="col-xs-24 col-200"><label class="control-label test"></label></div></div><div class="form-group form-group-hidden"><div class="col-xs-24 col-80"><label class="control-label t_tl_ln">% Lợi nhuận</label></div><div class="col-xs-24 col-60"><input value="17.36" spellcheck="false" type="text" class="input-field t_tl_ln N  txt-right form-control materail-input N" tabstop="0" style="" disabled="" maxlength="13" tabindex="536"></div></div><div class="form-group form-group-hidden"><div class="col-xs-24 col-200"></div><div class="col-xs-24 col-100"><label class="control-label t_thue_nt" style="font-weight: bold;">Tổng thuế</label></div><div class="col-xs-24 col-100"><input value="1 353 904.31" spellcheck="false" type="text" class="input-field t_thue_nt N  txt-right form-control materail-input N" tabstop="0" style="font-weight: bold;" disabled="" maxlength="13" tabindex="537"></div><div class="col-xs-24 col-100"><input value="6 770 623" spellcheck="false" type="text" class="input-field t_thue N  txt-right form-control materail-input N" tabstop="0" style="font-weight: bold;" disabled="" maxlength="13" tabindex="538"></div><div class="col-xs-24 col-100"><label class="control-label t_tt_nt" style="font-weight: bold;">Tổng thanh toán</label></div><div class="col-xs-24 col-130"><input value="14 892 947.00" spellcheck="false" type="text" class="input-field t_tt_nt N  txt-right form-control materail-input N" tabstop="0" style="font-weight: bold;" disabled="" maxlength="13" tabindex="539"></div></div><div class="form-group form-group-hidden"><div class="col-xs-24 col-100"><label class="control-label t_so_luongx">Tổng số lượng</label></div><div class="col-xs-24 col-100">
                                <input value="0" spellcheck="false" type="text" class="input-field t_so_luongx N  txt-right form-control materail-input N" tabstop="0" style="" disabled="" maxlength="13" tabindex="540"></div></div><div class="form-group form-group-hidden"><div class="col-xs-24 col-200"></div><div class="col-xs-24 col-100"><label class="control-label t_tien_ntx2">Tổng tiền bán</label></div><div class="col-xs-24 col-100"><input value="0.00" spellcheck="false" type="text" class="input-field t_tien_ntx2 N  txt-right form-control materail-input N" tabstop="0" style="" disabled="" maxlength="13" tabindex="541"></div><div class="col-xs-24 col-100"><label class="control-label t_tien_nt1">Tổng tiền mua</label></div><div class="col-xs-24 col-100"><input value="12 308 221.00" spellcheck="false" type="text" class="input-field t_tien_nt1 N  txt-right form-control materail-input N" tabstop="0" style="" disabled="" maxlength="13" tabindex="542"></div><div class="col-xs-24 col-130"><input value="61 551 121" spellcheck="false" type="text" class="input-field t_tien1 N  txt-right form-control materail-input N" tabstop="0" style="" disabled="" maxlength="13" tabindex="543"></div><div class="col-xs-24 col-60"><label class="control-label t_tienx2">Phụ thêm</label></div><div class="col-xs-24 col-100"><input value="0" spellcheck="false" type="text" class="input-field t_tienx2 N  txt-right form-control materail-input N" tabstop="0" style="" disabled="" maxlength="13" tabindex="544"></div></div></div></div></div></div></div><div class="modal-footer"><img id="WAIT_s51" class="dir-icon-loading" style="display: none;" src="../Images/ic_loading.gif"><button type="button" title="" btnid="printForm" class="btn btn-default" tabindex="545">In</button><button type="button" title="" btnid="deleteForm" class="btn btn-default" tabindex="546">Xóa</button><button type="button" title="Sửa (Ctrl + E, Alt + E)" btnid="editForm" class="btn btn-default" tabindex="547">Sửa</button><button type="button" title="Hủy (ESC)" btnid="cancel" class="btn btn-default" tabindex="548">Hủy</button></div></div></div></div>
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" class="btn btn-primary text-white py-2 px-4 btn-block trigger-button" style="margin-right: auto; margin-left: auto;" id="btnSchemaFCL trigger" value="Search Schdules" />
                                    </div>
									
									<div class="col-12">
										<table class="table" id="table_FCL">
										</table>
									</div>

                                </form>


                            </div>
                            <div class="tab-panel" id="tabs-profile3">

                                <form method="post">
                                    <div class="form-group text-primary flaticon-barn" style="text-align:left">
                                        <label for="from">Cảng đi</label>
                                        <input type="text" class="form-control btn-block" id="fq_fromLCL" name="fq_fromLCL" placeholder="From" />
                                    </div>
                                    <div class="form-group mb-4 text-primary flaticon-car" style="text-align:left">
                                        <label for="to">Cảng đến</label>
                                        <input type="text" class="form-control btn-block" id="fq_toLCL" name="fq_toLCL" placeholder="To" />

                                    </div>
									
									
									<!--
									<div class="form-group col-12 d-inline-flex" style="padding-left: 0; padding-right: 0;">
										<div class="form-control-wrap col-6 text-primary  flaticon-car" style="text-align:left; padding-left: 0;">					
											<label for="to">Trọng lượng</label>		</br>
											<input type="number" class="form-control btn-block" id="fq_weightLCL" name="fq_weightLCL" placeholder="0" />
											
										</div>
										<div class="form-control-wrap col-6 text-primary  flaticon-car" style="text-align:left; padding-right: 0;">					
											<label for="to">Tổng khối</label>		</br>
											<input type="number" class="form-control btn-block" id="fq_volumeLCL" name="fq_volumeLCL" placeholder="0" />
											
										</div>
									</div>
									-->

                                    <div class="form-group col-12 d-inline-flex" style="padding-left: 0; padding-right: 0;">
                                        <div class="form-control-wrap col-6 text-primary icon-date_range" style="padding-left: 0; text-align: left; width: 30%; margin-bottom: 20px;">
											<label for="timedi" style="font-family: 'Roboto', arial, sans-serif; font-weight: 300;">Thời gian đi </label>
											<input type="text" id="cf-FromLCL" placeholder="" class="form-control datepicker px-3">

                                        </div>
                                        <div class="form-control-wrap col-6 text-primary icon-calendar-check-o" style="padding-right: 0; text-align: left; width: 30%; margin-bottom: 20px;">
                                            <label for="timeden" style="font-family: 'Roboto', arial, sans-serif; font-weight: 300;">Thời gian đến </label>
											<input type="text" id="cf-ToLCL" placeholder="" class="form-control datepicker px-3">

                                        </div>
                                    </div>

                           
                                    <div class="form-group">
                                        <input type="submit" class="btn btn-primary text-white py-2 px-4 btn-block" style="margin-right: auto; margin-left: auto;" id="btnSchemaLCL" value="Search Schdules" />
                                    </div>
									
									<div class="col-12">
										<table class="table" id="table_LCL">
											
										</table>
									</div>

                                </form>
                            </div>
                            <div class="tab-panel" id="tabs-messages3">
                                <form method="post">
                                    <div class="form-group text-primary " style="text-align:left">
                                        <label class="icon-plane"> </label>      <label for="from">Cảng đi</label>
                                        <input type="text" class="form-control btn-block" id="fq_fromAIR" name="fq_fromAIR" placeholder="From" />
                                    </div>
                                    <div class="form-group mb-4 text-primary " style="text-align:left">
                                        <label class="icon-room"> </label>     <label for="to">Cảng đến</label>
                                        <input type="text" class="form-control btn-block" id="fq_toAIR" name="fq_toAIR" placeholder="To" />

                                    </div>
									<div class="form-group col-12 d-inline-flex" style="padding-left: 0; padding-right: 0;">
										<div class="form-control-wrap col-6 text-primary   " style="text-align:left; padding-left: 0;">					
                                            <label class="icon-iso">	<label for="to">Trọng lượng</label>		</br>
											<input type="number" class="form-control btn-block" id="fq_weightAIR" name="fq_weightAIR" placeholder="0" />
											
										</div>
										<!--
										<div class="form-control-wrap col-6 text-primary  flaticon-car" style="text-align:left; padding-right: 0;">					
											<label for="to">Tổng khối</label>		</br>
											<input type="number" class="form-control btn-block" id="fq_volumeAIR" name="fq_volumeAIR" placeholder="0" />
											
										</div>
										-->
									</div>

								 
                                    <div class="form-group col-12 d-inline-flex" style="padding-left: 0; padding-right: 0;">
                                        <div class="form-control-wrap col-6 text-primary icon-date_range" style="padding-left: 0; text-align: left; width: 30%; margin-bottom: 20px;">
											<label for="timedi" style="font-family: 'Roboto', arial, sans-serif; font-weight: 300;">Thời gian đi </label>
											<input type="text" id="cf-FromAIR" placeholder="" class="form-control datepicker px-3">

                                        </div>
                                        <div class="form-control-wrap col-6 text-primary icon-calendar-check-o" style="padding-right: 0; text-align: left; width: 30%; margin-bottom: 20px;">
                                            <label for="timeden" style="font-family: 'Roboto', arial, sans-serif; font-weight: 300;">Thời gian đến </label>
											<input type="text" id="cf-ToAIR" placeholder="" class="form-control datepicker px-3">

                                        </div>
                                    </div>

                           
                                    <div class="form-group">
                                        <input type="submit" class="btn btn-primary text-white py-2 px-4 btn-block" style="margin-right: auto; margin-left: auto;" id="btnSchemaAIR" value="Search Schdules" />
                                    </div>
									<!------>
									<div class="col-12">
										<table class="table" id="table_AIR">
											
										</table>
									</div>
									
									<div class="col-12">
										<div id="pageOverlay"></div>
											<table id="dataTable" class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp dataTable no-footer" role="grid">
											  <thead>
												<tr role="row">
												  <th class="mdl-data-table__cell--non-numeric sorting_asc" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Shape Name: activate to sort column descending" style="width: 401px;">Shape Name</th>
												  <th class="mdl-data-table__cell--non-numeric sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Number Edges: activate to sort column ascending" style="width: 436px;">Number Edges</th>
												  <th class="mdl-data-table__cell--non-numeric sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Sum of Interior Angles: activate to sort column ascending" style="width: 638px;">Sum of Interior Angles</th>
												</tr>
											  </thead>
											  <tbody>
												<tr class="rowEditData odd" value="7924" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">Hexagon</td>
												  <td class="mdl-data-table__cell--non-numeric">6</td>
												  <td class="mdl-data-table__cell--non-numeric">null</td>
												</tr>
												<tr class="rowEditData even" value="7923" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">null</td>
												  <td class="mdl-data-table__cell--non-numeric">6</td>
												  <td class="mdl-data-table__cell--non-numeric">null</td>
												</tr>
												<tr class="rowEditData odd" value="7930" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">null</td>
												  <td class="mdl-data-table__cell--non-numeric">3</td>
												  <td class="mdl-data-table__cell--non-numeric">180</td>
												</tr>
												<tr class="rowEditData even" value="7931" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">null</td>
												  <td class="mdl-data-table__cell--non-numeric">4</td>
												  <td class="mdl-data-table__cell--non-numeric">360</td>
												</tr>
												<tr class="rowEditData odd" value="7932" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">null</td>
												  <td class="mdl-data-table__cell--non-numeric">5</td>
												  <td class="mdl-data-table__cell--non-numeric">540</td>
												</tr>
												<tr class="rowEditData even" value="7933" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">null</td>
												  <td class="mdl-data-table__cell--non-numeric">6</td>
												  <td class="mdl-data-table__cell--non-numeric">120</td>
												</tr>
												<tr class="rowEditData odd" value="7934" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">null</td>
												  <td class="mdl-data-table__cell--non-numeric">10</td>
												  <td class="mdl-data-table__cell--non-numeric">1440</td>
												</tr>
												<tr class="rowEditData even" value="7925" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">Octagon</td>
												  <td class="mdl-data-table__cell--non-numeric">8</td>
												  <td class="mdl-data-table__cell--non-numeric">null</td>
												</tr>
												<tr class="rowEditData odd" value="7922" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">pentagon</td>
												  <td class="mdl-data-table__cell--non-numeric">null</td>
												  <td class="mdl-data-table__cell--non-numeric">null</td>
												</tr>
												<tr class="rowEditData even" value="7926" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">Pentagon</td>
												  <td class="mdl-data-table__cell--non-numeric">null</td>
												  <td class="mdl-data-table__cell--non-numeric">null</td>
												</tr>
												<tr class="rowEditData odd" value="7920" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">square</td>
												  <td class="mdl-data-table__cell--non-numeric">4</td>
												  <td class="mdl-data-table__cell--non-numeric">null</td>
												</tr>
												<tr class="rowEditData even" value="7927" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">Square</td>
												  <td class="mdl-data-table__cell--non-numeric">null</td>
												  <td class="mdl-data-table__cell--non-numeric">null</td>
												</tr>
												<tr class="rowEditData odd" value="7928" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">Square</td>
												  <td class="mdl-data-table__cell--non-numeric">4</td>
												  <td class="mdl-data-table__cell--non-numeric">null</td>
												</tr>
												<tr class="rowEditData even" value="7921" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">trapezoid</td>
												  <td class="mdl-data-table__cell--non-numeric">4</td>
												  <td class="mdl-data-table__cell--non-numeric">null</td>
												</tr>
												<tr class="rowEditData odd" value="7919" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">triangle</td>
												  <td class="mdl-data-table__cell--non-numeric">3</td>
												  <td class="mdl-data-table__cell--non-numeric">null</td>
												</tr>
												<tr class="rowEditData even" value="7929" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">Triangle</td>
												  <td class="mdl-data-table__cell--non-numeric">3</td>
												  <td class="mdl-data-table__cell--non-numeric">null</td>
												</tr>
											  </tbody>
											</table>
									</div>

                                </form>
                            </div>

                        </div>

                    </div>
                </div>


            </div>
        </div>
    </div>
</div>


 

<div class="site-section">
    <div class="container">
        <div class="row justify-content-center mb-5">
            <div class="col-md-7 text-center border-primary">
                <h2 class="mb-0 text-primary">What We Offer</h2>
                <p class="color-black-opacity-5">Lorem ipsum dolor sit amet.</p>
            </div>
        </div>
        <div class="row align-items-stretch">
            <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
                <div class="unit-4 d-flex">
                    <div class="unit-4-icon mr-4"><span class="text-primary icon-laptop2"></span></div>
                    <div>
                        <h3>Website Business</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p>
                        <p class="mb-0"><a href="#">Learn More</a></p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
                <div class="unit-4 d-flex">
                    <div class="unit-4-icon mr-4"><span class="text-primary icon-internet-explorer"></span></div>
                    <div>
                        <h3>NetWork Solutions</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p>
                        <p class="mb-0"><a href="#">Learn More</a></p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
                <div class="unit-4 d-flex">
                    <div class="unit-4-icon mr-4"><span class="text-primary flaticon-frontal-truck"></span></div>
                    <div>
                        <h3>Shipping Solutions</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p>
                        <p class="mb-0"><a href="#">Learn More</a></p>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>


<div class="site-section block-13">
    <!-- <div class="container"></div> -->


    <div class="owl-carousel nonloop-block-13">
        <div>
            <a href="#" class="unit-1 text-center">
                <img src="../Js/Schema/images/it.jpg" alt="Image" class="img-fluid">
                <div class="unit-1-text">
                    <h3 class="unit-1-heading">Website Business</h3>
                    <p class="px-5">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eos tempore ullam minus voluptate libero.</p>
                </div>
            </a>
        </div>

        <div>
            <a href="#" class="unit-1 text-center">
                <img src="../Js/Schema/images/net.jpg" alt="Image" class="img-fluid">
                <div class="unit-1-text">
                    <h3 class="unit-1-heading">NetWork Solutions</h3>
                    <p class="px-5">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eos tempore ullam minus voluptate libero.</p>
                </div>
            </a>
        </div>

        <div>
            <a href="#" class="unit-1 text-center">
                <img src="../Js/Schema/images/img_3.jpg" alt="Image" class="img-fluid">
                <div class="unit-1-text">
                    <h3 class="unit-1-heading">Shipping Solutions</h3>
                    <p class="px-5">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eos tempore ullam minus voluptate libero.</p>
                </div>
            </a>
        </div>

        <div>
            <a href="#" class="unit-1 text-center">
                <img src="../Js/Schema/images/wh.jpg" alt="Image" class="img-fluid">
                <div class="unit-1-text">
                    <h3 class="unit-1-heading">Delivery Van</h3>
                    <p class="px-5">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eos tempore ullam minus voluptate libero.</p>
                </div>
            </a>
        </div>

        <div>
            <a href="#" class="unit-1 text-center">
                <img src="../Js/Schema/images/img_5.jpg" alt="Image" class="img-fluid">
                <div class="unit-1-text">
                    <h3 class="unit-1-heading">Warehousing</h3>
                    <p class="px-5">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eos tempore ullam minus voluptate libero.</p>
                </div>
            </a>
        </div>


    </div>
</div>




<div class="site-section bg-light">
    <div class="container">
        <div class="row justify-content-center mb-5">
            <div class="col-md-7 text-center border-primary">
                <h2 class="font-weight-light text-primary">More Services</h2>
                <p class="color-black-opacity-5">We Offer The Following Services</p>
            </div>
        </div>
        <div class="row align-items-stretch">
            <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
                <div class="unit-4 d-flex">
                    <div class="unit-4-icon mr-4"><span class="text-primary icon-laptop"></span></div>
                    <div>
                        <h3>Website Business </h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p>
                        <p><a href="#">Learn More</a></p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
                <div class="unit-4 d-flex">
                    <div class="unit-4-icon mr-4"><span class="text-primary icon-internet-explorer"></span></div>
                    <div>
                        <h3>NetWork Solutions</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p>
                        <p><a href="#">Learn More</a></p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
                <div class="unit-4 d-flex">
                    <div class="unit-4-icon mr-4"><span class="text-primary flaticon-frontal-truck"></span></div>
                    <div>
                        <h3>Shipping Solutions</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p>
                        <p><a href="#">Learn More</a></p>
                    </div>
                </div>
            </div>


            <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
                <div class="unit-4 d-flex">
                    <div class="unit-4-icon mr-4"><span class="text-primary flaticon-barn"></span></div>
                    <div>
                        <h3>Warehousing</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p>
                        <p><a href="#">Learn More</a></p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
                <div class="unit-4 d-flex">
                    <div class="unit-4-icon mr-4"><span class="text-primary icon-phonelink"></span></div>
                    <div>
                        <h3>Peace of Mind Solutions</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p>
                        <p><a href="#">Learn More</a></p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-4 mb-lg-4">
                <div class="unit-4 d-flex">
                    <div class="unit-4-icon mr-4"><span class="text-primary flaticon-car"></span></div>
                    <div>
                        <h3>Delivery Van</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis quis molestiae vitae eligendi at.</p>
                        <p><a href="#">Learn More</a></p>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<div class="site-blocks-cover overlay inner-page-cover" style="background-image: url(../Js/Schema/images/sg.jpg); background-attachment: fixed;">
    <div class="container">
        <div class="row align-items-center justify-content-center text-center">

            <div class="col-md-7" data-aos="fade-up" data-aos-delay="400">
                <a href="https://www.youtube.com/watch?v=9w1OiEBMGWs" class="play-single-big mb-4 d-inline-block popup-vimeo"><span class="icon-play"></span></a>
                <h2 class="text-white font-weight-light mb-5 h1">View Our Services By Watching This Short Video</h2>

            </div>
        </div>
    </div>
</div>

<div class="site-section border-bottom">
    <div class="container">

        <div class="row justify-content-center mb-5">
            <div class="col-md-7 text-center border-primary">
                <h2 class="font-weight-light text-primary">Customer Advisories</h2>
            </div>
        </div>

        <div class="slide-one-item home-slider owl-carousel">
            <div>
                <div class="testimonial">
                    <figure class="mb-4">
                        <img src="../Js/Schema/images/ntl.jpg" alt="Image" class="img-fluid mb-3">
                        <p>Nguyễn Trung Lễ</p>
                    </figure>
                    <blockquote>
                        <p>&ldquo;Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur unde reprehenderit aperiam quaerat fugiat repudiandae explicabo animi minima fuga beatae illum eligendi incidunt consequatur. Amet dolores excepturi earum unde iusto.&rdquo;</p>
                    </blockquote>
                </div>
            </div>
            <div>
                <div class="testimonial">
                    <figure class="mb-4">
                        <img src="../Js/Schema/images/person_2.jpg" alt="Image" class="img-fluid mb-3">
                        <p>Christine Aguilar</p>
                    </figure>
                    <blockquote>
                        <p>&ldquo;Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur unde reprehenderit aperiam quaerat fugiat repudiandae explicabo animi minima fuga beatae illum eligendi incidunt consequatur. Amet dolores excepturi earum unde iusto.&rdquo;</p>
                    </blockquote>
                </div>
            </div>

            <div>
                <div class="testimonial">
                    <figure class="mb-4">
                        <img src="../Js/Schema/images/person_4.jpg" alt="Image" class="img-fluid mb-3">
                        <p>Robert Spears</p>
                    </figure>
                    <blockquote>
                        <p>&ldquo;Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur unde reprehenderit aperiam quaerat fugiat repudiandae explicabo animi minima fuga beatae illum eligendi incidunt consequatur. Amet dolores excepturi earum unde iusto.&rdquo;</p>
                    </blockquote>
                </div>
            </div>

            <div>
                <div class="testimonial">
                    <figure class="mb-4">
                        <img src="../Js/Schema/images/person_5.jpg" alt="Image" class="img-fluid mb-3">
                        <p>Bruce Rogers</p>
                    </figure>
                    <blockquote>
                        <p>&ldquo;Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur unde reprehenderit aperiam quaerat fugiat repudiandae explicabo animi minima fuga beatae illum eligendi incidunt consequatur. Amet dolores excepturi earum unde iusto.&rdquo;</p>
                    </blockquote>
                </div>
            </div>

        </div>
    </div>
</div>

<div class="site-section">
    <div class="container">
        <div class="row justify-content-center mb-5">
            <div class="col-md-7 text-center border-primary">
                <h2 class="font-weight-light text-primary">Our Blog</h2>
                <p class="color-black-opacity-5">See Our Daily News &amp; Updates</p>
            </div>
        </div>
        <div class="row mb-3 align-items-stretch">
            <div class="col-md-6 col-lg-6 mb-4 mb-lg-4">
                <div class="h-entry">
                    <img src="../Js/Schema/images/blog_1.jpg" alt="Image" class="img-fluid">
                    <h2 class="font-size-regular"><a href="#">Warehousing Your Packages</a></h2>
                    <div class="meta mb-4">by Theresa Winston <span class="mx-2">&bullet;</span> Jan 18, 2019 at 2:00 pm <span class="mx-2">&bullet;</span> <a href="#">News</a></div>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus eligendi nobis ea maiores sapiente veritatis reprehenderit suscipit quaerat rerum voluptatibus a eius.</p>
                </div>
            </div>
            <div class="col-md-6 col-lg-6 mb-4 mb-lg-4">
                <div class="h-entry">
                    <img src="../Js/Schema/images/blog_2.jpg" alt="Image" class="img-fluid">
                    <h2 class="font-size-regular"><a href="#">Warehousing Your Packages</a></h2>
                    <div class="meta mb-4">by Theresa Winston <span class="mx-2">&bullet;</span> Jan 18, 2019 at 2:00 pm <span class="mx-2">&bullet;</span> <a href="#">News</a></div>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus eligendi nobis ea maiores sapiente veritatis reprehenderit suscipit quaerat rerum voluptatibus a eius.</p>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="site-section border-top">
    <div class="container">
        <div class="row text-center">
            <div class="col-md-12">
                <h2 class="mb-5 text-black">Try Our Services</h2>
                <p class="mb-0"><a href="booking.html" class="btn btn-primary py-3 px-5 text-white">Get Started</a></p>
            </div>
        </div>
    </div>
</div>

    <footer class="site-footer"   >

        <div class="container">
            <div class="row">
                <div class="col-md-9">
                    <div class="row">
                        <div class="col-md-3">
                            <h2 class="footer-heading mb-4">Quick Links</h2>
                            <ul class="list-unstyled">
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Services</a></li>
                                <li><a href="#">Testimonials</a></li>
                                <li><a href="#">Contact Us</a></li>
                            </ul>
                        </div>
                        <div class="col-md-3">
                            <h2 class="footer-heading mb-4">Products</h2>
                            <ul class="list-unstyled">
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Services</a></li>
                                <li><a href="#">Testimonials</a></li>
                                <li><a href="#">Contact Us</a></li>
                            </ul>
                        </div>
                        <div class="col-md-3">
                            <h2 class="footer-heading mb-4">Features</h2>
                            <ul class="list-unstyled">
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Services</a></li>
                                <li><a href="#">Testimonials</a></li>
                                <li><a href="#">Contact Us</a></li>
                            </ul>
                        </div>
                        <div class="col-md-3">
                            <h2 class="footer-heading mb-4">Follow Us</h2>
                            <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
                            <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                            <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                            <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <h2 class="footer-heading mb-4">Subscribe Newsletter</h2>
                    <form action="#" method="post">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control border-secondary text-white bg-transparent" placeholder="Enter Email" aria-label="Enter Email" aria-describedby="button-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary text-white" type="button" id="button-addon2">Send</button>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
            <div class="row pt-5 mt-5 text-center">
                <div class="col-md-12">
                    <div class="border-top pt-5">
                        <p>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Copyright &copy;
                            <script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-user-circle" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">NTL</a>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </p>
                    </div>
                </div>

            </div>
        </div>
    </footer>
    </div>

    <script src="../Js/Schema/js/jquery-3.3.1.min.js"></script>
    <script src="../Js/Schema/js/jquery-migrate-3.0.1.min.js"></script>
    <script src="../Js/Schema/js/jquery-ui.js"></script>
    <script src="../Js/Schema/js/popper.min.js"></script>
    <script src="../Js/Schema/js/bootstrap.min.js"></script>
    <script src="../Js/Schema/js/owl.carousel.min.js"></script>
    <script src="../Js/Schema/js/jquery.stellar.min.js"></script>
    <script src="../Js/Schema/js/jquery.countdown.min.js"></script>
    <script src="../Js/Schema/js/jquery.magnific-popup.min.js"></script>
    <script src="../Js/Schema/js/bootstrap-datepicker.min.js"></script>
    <script src="../Js/Schema/js/aos.js"></script>
	<script src="../Js/Schema/chosen/chosen.jquery.js"></script>

    <script src="../Js/Schema/js/main.js"></script>
    <script src="../Js/Schema/js/auto.js"></script>
	<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<script>
		$(document).ready(function () {
		
			dmcong();							
			
			$("#fq_fromFCL").autocomplete({
				source: function(request, response) {
					var m = new Memvars();
					var p = window.location.href.toString();
					p = p.substring(0, p.indexOf("Main/")) + 'AppService/EService.asmx/' + "GetData";//GetValue	
					var controller = 'KHO2'; 
					m.val('ten_kho','C', $("#fq_fromFCL").val());
					$.ajax({
						type: "POST",
						url: p,
						header: '',
						data: JSON.stringify({ controller: controller, oMemvar: m.val()}),
						contentType: "application/json; charset=utf-8",
						dataType: "json",
						timeout: 30000,
						success: function (msg, s) {
							// ket qua o day
							var result = [];
							response($.map(msg.d, function (item) {
								return { label: item.ten_kho + " | " + item.ma_kho, value: item.ma_kho };
							}));
						},
						complete: function() {
							//console.log(array);
						},
						error: function (e) {
						// loi o day
							console.log(e);
						}
					})
				}
			});
			
			$("#fq_toFCL").autocomplete({
				source: function(request, response) {
					var m = new Memvars();
					var p = window.location.href.toString();
					p = p.substring(0, p.indexOf("Main/")) + 'AppService/EService.asmx/' + "GetData";//GetValue	
					var controller = 'KHO2'; 
					m.val('ten_kho','C', $("#fq_toFCL").val());
					$.ajax({
						type: "POST",
						url: p,
						header: '',
						data: JSON.stringify({ controller: controller, oMemvar: m.val() }),
						contentType: "application/json; charset=utf-8",
						dataType: "json",
						timeout: 30000,
						success: function (msg, s) {
							// ket qua o day
							response($.map(msg.d, function (item) {
								return { label: item.ten_kho + " | " + item.ma_kho, value: item.ma_kho };
							}));
						},
						complete: function() {
							//console.log(array);
						},
						error: function (e) {
						// loi o day
							console.log(e);
						}
					})
				}
			});
			
			$("#fq_fromLCL").autocomplete({
				source: function(request, response) {
					var m = new Memvars();
					var p = window.location.href.toString();
					p = p.substring(0, p.indexOf("Main/")) + 'AppService/EService.asmx/' + "GetData";//GetValue	
					var controller = 'KHO2'; 
					m.val('ten_kho','C', $("#fq_fromLCL").val());
					$.ajax({
						type: "POST",
						url: p,
						header: '',
						data: JSON.stringify({ controller: controller, oMemvar: m.val()}),
						contentType: "application/json; charset=utf-8",
						dataType: "json",
						timeout: 30000,
						success: function (msg, s) {
							// ket qua o day
							var result = [];
							response($.map(msg.d, function (item) {
								return { label: item.ten_kho + " | " + item.ma_kho, value: item.ma_kho };
							}));
						},
						complete: function() {
							//console.log(array);
						},
						error: function (e) {
						// loi o day
							console.log(e);
						}
					})
				}
			});
			
			$("#fq_toLCL").autocomplete({
				source: function(request, response) {
					var m = new Memvars();
					var p = window.location.href.toString();
					p = p.substring(0, p.indexOf("Main/")) + 'AppService/EService.asmx/' + "GetData";//GetValue	
					var controller = 'KHO2'; 
					m.val('ten_kho','C', $("#fq_toLCL").val());
					$.ajax({
						type: "POST",
						url: p,
						header: '',
						data: JSON.stringify({ controller: controller, oMemvar: m.val() }),
						contentType: "application/json; charset=utf-8",
						dataType: "json",
						timeout: 30000,
						success: function (msg, s) {
							// ket qua o day
							response($.map(msg.d, function (item) {
								return { label: item.ten_kho + " | " + item.ma_kho, value: item.ma_kho };
							}));
						},
						complete: function() {
							//console.log(array);
						},
						error: function (e) {
						// loi o day
							console.log(e);
						}
					})
				}
			});
			
			$("#fq_fromAIR").autocomplete({
				source: function(request, response) {
					var m = new Memvars();
					var p = window.location.href.toString();
					p = p.substring(0, p.indexOf("Main/")) + 'AppService/EService.asmx/' + "GetData";//GetValue	
					var controller = 'KHO2'; 
					m.val('ten_kho','C', $("#fq_fromAIR").val());
					$.ajax({
						type: "POST",
						url: p,
						header: '',
						data: JSON.stringify({ controller: controller, oMemvar: m.val()}),
						contentType: "application/json; charset=utf-8",
						dataType: "json",
						timeout: 30000,
						success: function (msg, s) {
							// ket qua o day
							var result = [];
							response($.map(msg.d, function (item) {
								return { label: item.ten_kho + " | " + item.ma_kho, value: item.ma_kho };
							}));
						},
						complete: function() {
							//console.log(array);
						},
						error: function (e) {
						// loi o day
							console.log(e);
						}
					})
				}
			});
			
			$("#fq_toAIR").autocomplete({
				source: function(request, response) {
					var m = new Memvars();
					var p = window.location.href.toString();
					p = p.substring(0, p.indexOf("Main/")) + 'AppService/EService.asmx/' + "GetData";//GetValue	
					var controller = 'KHO2'; 
					m.val('ten_kho','C', $("#fq_toAIR").val());
					$.ajax({
						type: "POST",
						url: p,
						header: '',
						data: JSON.stringify({ controller: controller, oMemvar: m.val() }),
						contentType: "application/json; charset=utf-8",
						dataType: "json",
						timeout: 30000,
						success: function (msg, s) {
							// ket qua o day
							response($.map(msg.d, function (item) {
								return { label: item.ten_kho + " | " + item.ma_kho, value: item.ma_kho };
							}));
						},
						complete: function() {
							//console.log(array);
						},
						error: function (e) {
						// loi o day
							console.log(e);
						}
					})
				}
			});
			
			$('#btnSchemaFCL').click(function(e) {
				debugger;
				e.preventDefault();
				document.getElementById("table_FCL").innerHTML = "";
				var m = new Memvars();	
				var p = window.location.href.toString();
				p = p.substring(0, p.indexOf("Main/")) + 'AppService/EService.asmx/' + "GetData";//GetValue		
				var controller = "st_loading_qoute_master_FCL";
				var str = "";
                str = ($('#multi-cong').val()).toString();
				var cangDi, cangDen, tgDi, tgDen, timeNow;
                cangDi = ($('#fq_fromFCL').val()).toString();
                cangDen = ($('#fq_toFCL').val()).toString();
                tgDi = $('#cf-FromFCL').val().toString();
                tgDen = $('#cf-ToFCL').val().toString();
				var curDate = new Date();
				var curDay = curDate.getDate();
				var curMonth = curDate.getMonth() + 1;
				var curYear = curDate.getFullYear();
				timeNow = (curMonth + "/" + curDay + "/" + curYear).toString();
				m.val('ngay_ct1', 'C', tgDi);
				m.val('ngay_ct2','C', tgDen);
				m.val('ngay_ct','C', timeNow);
				m.val('ma_noi_di','C', cangDi);
				m.val('ma_noi_den','C', cangDen);
				m.val('ds_cong','C', str);

                if (str.length > 0) {
                    //var conf = confirm('Bạn có muốn xóa tất cả các bản ghi này không?');
                    //if (conf) {
						$.ajax({
							type: "POST",
							url: p,
							header: '',
							data: JSON.stringify({ controller: controller, oMemvar: m.val() }),
							contentType: "application/json; charset=utf-8",
							dataType: "json",
							timeout: 30000,
							success: function (msg, s) {
								// ket qua o day
								console.log(msg.d);
								var row = "";
								if ((msg.d).length > 0) {
									for (let item of msg.d) {
										/*Table row*/								
										row += 	"<tr>" +
													"<td>"+item.ma_kh+"</td>" +
													"<td>"+item.ma_noi_di+"</td>" +
													"<td>"+item.ten_noi_di+"</td>" +
													"<td>"+item.ma_noi_den+"</td>" +
													"<td>"+item.ten_noi_den+"</td>" +
													"<td><a href='https://iswift.com.vn/Main/Default.aspx?id=s41' target='_blank' class='btn btn-sm btn-success'>Xem</a></td>" +
												"</tr>";					
									};

									// get the current table body html as a string, and append the new row
									var html = document.getElementById("table_FCL").innerHTML + "<thead>" +
																									"<tr>" +
																										"<th>Mã hãng tàu</th>" +
																										"<th>Mã nơi đi</th>" +
																										"<th>Tên nơi đi</th>" +
																										"<th>Mã nơi đến</th>" +
																										"<th>Tên nơi đến</th>" +
																										"<th></th>" +
																									"</tr>" +
																								"</thead>" +
																								"<tbody id='tbody-schemaFCL'>" +
																									row +
																								"</tbody>";	
									// set the table body to the new html code
									document.getElementById("table_FCL").innerHTML = html;
								} else {
									// get the current table body html as a string, and append the new row
									var html = document.getElementById("table_FCL").innerHTML + "<thead>" +
																									"<tr>" +
																										"<th>Mã hãng tàu</th>" +
																										"<th>Mã nơi đi</th>" +
																										"<th>Tên nơi đi</th>" +
																										"<th>Mã nơi đến</th>" +
																										"<th>Tên nơi đến</th>" +
																									"</tr>" +
																								"</thead>" +
																								"<tbody id='tbody-schemaFCL'>" +
																									"<tr>" +
																										"<td colspan='5'>Không có kết quả!</td>" +
																									"</tr>" +
																								"</tbody>";	
									// set the table body to the new html code
									document.getElementById("table_FCL").innerHTML = html;
								}
							},
							complete: function() {
								//console.log();
							},
							error: function (e) {
							// loi o day
								console.log(e);
							}
						});
                    //}
                }
			});
			
			$('#btnSchemaLCL').click(function(e) {
				debugger;
				e.preventDefault();
				document.getElementById("table_LCL").innerHTML = "";
				var m = new Memvars();	
				var p = window.location.href.toString();
				p = p.substring(0, p.indexOf("Main/")) + 'AppService/EService.asmx/' + "GetData";//GetValue		
				var controller = "st_loading_qoute_master_LCL";
				var str = "success";
                //str = ($('#multi-cong').val()).toString();
				var cangDi, cangDen, tgDi, tgDen, timeNow;
                cangDi = ($('#fq_fromLCL').val()).toString();
                cangDen = ($('#fq_toLCL').val()).toString();
                tgDi = $('#cf-FromLCL').val().toString();
                tgDen = $('#cf-ToLCL').val().toString();
				var curDate = new Date();
				var curDay = curDate.getDate();
				var curMonth = curDate.getMonth() + 1;
				var curYear = curDate.getFullYear();
				timeNow = (curMonth + "/" + curDay + "/" + curYear).toString();
				m.val('ngay_ct1', 'C', tgDi);
				m.val('ngay_ct2','C', tgDen);
				m.val('ngay_ct','C', timeNow);
				m.val('ma_noi_di','C', cangDi);
				m.val('ma_noi_den','C', cangDen);
				//m.val('ds_cong','C', str);

                if (str.length > 0) {
                    //var conf = confirm('Bạn có muốn xóa tất cả các bản ghi này không?');
                    //if (conf) {
						$.ajax({
							type: "POST",
							url: p,
							header: '',
							data: JSON.stringify({ controller: controller, oMemvar: m.val() }),
							contentType: "application/json; charset=utf-8",
							dataType: "json",
							timeout: 30000,
							success: function (msg, s) {
								// ket qua o day
								console.log(msg.d);
								var row = "";
								if ((msg.d).length > 0) {
									for (let item of msg.d) {
										/*Table row*/								
										row += 	"<tr>" +
													"<td>"+item.ds_ngay+"</td>" +
													"<td>"+item.so_ngay_vc+"</td>" +
													"<td>"+
														(item.t_tien_xuat).toLocaleString('en-US', {
															style: 'currency',
															currency: 'VND',
														})+
													"</td>" +
													"<td>"+
														(item.t_tien_nhap).toLocaleString('en-US', {
															style: 'currency',
															currency: 'VND',
														})+
													"</td>" +
													"<td>"+
														(item.t_tien_cuoc).toLocaleString('en-US', {
															style: 'currency',
															currency: 'VND',
														})+
													"</td>" +
													"<td>"+
														(item.t_tien_tong).toLocaleString('en-US', {
															style: 'currency',
															currency: 'VND',
														})+"</td>" +
												"</tr>";					
									};

									// get the current table body html as a string, and append the new row
									var html = document.getElementById("table_LCL").innerHTML + "<thead>" +
																									"<tr>" +
																										"<th>Danh sách ngày</th>" +
																										"<th>Số ngày vận chuyển</th>" +
																										"<th>Tổng tiền xuất</th>" +
																										"<th>Tổng tiền nhập</th>" +
																										"<th>Tổng tiền cước</th>" +
																										"<th>Tổng tiền</th>" +
																									"</tr>" +
																								"</thead>" +
																								"<tbody id='tbody-schemaLCL'>" +
																									row +
																								"</tbody>";	
									// set the table body to the new html code
									document.getElementById("table_LCL").innerHTML = html;
								} else {
									// get the current table body html as a string, and append the new row
									var html = document.getElementById("table_LCL").innerHTML + "<thead>" +
																									"<tr>" +
																										"<th>Danh sách ngày</th>" +
																										"<th>Số ngày vận chuyển</th>" +
																										"<th>Tổng tiền xuất</th>" +
																										"<th>Tổng tiền nhập</th>" +
																										"<th>Tổng tiền</th>" +
																									"</tr>" +
																								"</thead>" +
																								"<tbody id='tbody-schemaLCL'>" +
																									"<tr>" +
																										"<td colspan='6'>Không có kết quả!</td>" +
																									"</tr>" +
																								"</tbody>";	
									// set the table body to the new html code
									document.getElementById("table_LCL").innerHTML = html;
								}
							},
							complete: function() {
								//console.log();
							},
							error: function (e) {
							// loi o day
								console.log(e);
							}
						});
                    //}
                }
			});
			
			$('#btnSchemaAIR').click(function(e) {
				debugger;
				e.preventDefault();
				document.getElementById("table_AIR").innerHTML = "";
				var m = new Memvars();	
				var p = window.location.href.toString();
				p = p.substring(0, p.indexOf("Main/")) + 'AppService/EService.asmx/' + "GetData";//GetValue		
				var controller = "st_loading_qoute_master_AIR";
				var str = "success";
                //str = ($('#multi-cong').val()).toString();
				var cangDi, cangDen, tgDi, tgDen, timeNow;
                cangDi = ($('#fq_fromAIR').val()).toString();
                cangDen = ($('#fq_toAIR').val()).toString();
                tgDi = $('#cf-FromAIR').val().toString();
                tgDen = $('#cf-ToAIR').val().toString();
				ttLuong = parseInt($('#fq_weightAIR').val().toString());
				var curDate = new Date();
				var curDay = curDate.getDate();
				var curMonth = curDate.getMonth() + 1;
				var curYear = curDate.getFullYear();
				timeNow = (curMonth + "/" + curDay + "/" + curYear).toString();
				m.val('ngay_ct1', 'C', tgDi);
				m.val('ngay_ct2','C', tgDen);
				m.val('ngay_ct','C', timeNow);
				m.val('ma_noi_di','C', cangDi);
				m.val('ma_noi_den','C', cangDen);
				m.val('t_tong_trong','I', ttLuong);

                if (str.length > 0) {
                    //var conf = confirm('Bạn có muốn xóa tất cả các bản ghi này không?');
                    //if (conf) {
						$.ajax({
							type: "POST",
							url: p,
							header: '',
							data: JSON.stringify({ controller: controller, oMemvar: m.val() }),
							contentType: "application/json; charset=utf-8",
							dataType: "json",
							timeout: 30000,
							success: function (msg, s) {
								// ket qua o day
								console.log(msg.d);
								var row = "";
								if ((msg.d).length > 0) {
									for (let item of msg.d) {
										/*Table row*/								
										row += 	"<tr>" +
													"<td>"+item.ma_kh+"</td>" +
													"<td>"+item.ma_noi_di+"</td>" +
													"<td>"+item.ten_noi_di+"</td>" +
													"<td>"+item.ma_noi_den+"</td>" +
													"<td>"+item.ten_noi_den+"</td>" +
												"</tr>";					
									};

									// get the current table body html as a string, and append the new row
									var html = document.getElementById("table_AIR").innerHTML + "<thead>" +
																									"<tr>" +
																										"<th>Mã hãng tàu</th>" +
																										"<th>Mã nơi đi</th>" +
																										"<th>Tên nơi đi</th>" +
																										"<th>Mã nơi đến</th>" +
																										"<th>Tên nơi đến</th>" +
																									"</tr>" +
																								"</thead>" +
																								"<tbody id='tbody-schemaAIR'>" +
																									row +
																								"</tbody>";	
									// set the table body to the new html code
									document.getElementById("table_AIR").innerHTML = html;
								} else {
									// get the current table body html as a string, and append the new row
									var html = document.getElementById("table_AIR").innerHTML + "<thead>" +
																									"<tr>" +
																										"<th>Mã hãng tàu</th>" +
																										"<th>Mã nơi đi</th>" +
																										"<th>Tên nơi đi</th>" +
																										"<th>Mã nơi đến</th>" +
																										"<th>Tên nơi đến</th>" +
																									"</tr>" +
																								"</thead>" +
																								"<tbody id='tbody-schemaAIR'>" +
																									"<tr>" +
																										"<td colspan='5'>Không có kết quả!</td>" +
																									"</tr>" +
																								"</tbody>";	
									// set the table body to the new html code
									document.getElementById("table_AIR").innerHTML = html;
								}
							},
							complete: function() {
								//console.log();
							},
							error: function (e) {
							// loi o day
								console.log(e);
							}
						});
                    //}
                }
			});
		});
	</script>
	
	<script>
		/*------------------------------------CONTINUE-------------------------------------------*/
		function Memvars(a) {
            this.obj = []; //{ Name: [0], DataType: [1], Value: [2], Extend: [3] }
            this.add(a);
        }
        Memvars.prototype = {
            val: function (n, t, v, e) {
                if ($.type(n) == 'undefined') return this.obj;
                var i = this.index(n);
                if ($.type(v) == 'undefined') {
                    if (i != -1)
                        return this.obj[i].Value
                    else
                        return null
                }
                else {
                    if ($.type(e) == 'undefined') e = null;
                    if (t == "D" && v != null) v = $.date(v, "yymmdd");
                    if (i != -1)
                        this.obj[i] = { Name: n, DataType: t, Value: v, Extend: e }
                    else
                        this.obj.push({ Name: n, DataType: t, Value: v, Extend: e })
                    return this;
                }
                return 1;
            },
            index: function (n) {
                for (var i = 0; i < this.obj.length; i++) {
                    if (this.obj[i].Name == n) return i;
                }
                return -1;
            },
            get: function (n) {
                var i = this.index(n);
                if (i != -1)
                    return this.obj[i];
                else
                    return null
            },
            remove: function (n) {
                var i = this.index(n);
                if (i != -1) this.obj.splice(i, 1);
            },
            add: function (a) {
                if (!a) return;
                var m = this;
                if ($.type(a[0]) != 'array') {
                    if (a[1] == 'D' && $.type(a[2]) == 'date')
                        a[2] = $.offsetDate(a[2]);
                    m.val(a[0], a[1], a[2], a[3]);
                }
                else $.each(a, function (i, v) {
                    if (v[1] == 'D' && $.type(a[2]) == 'date')
                        v[2] = $.offsetDate(v[2]);
                    m.val(v[0], v[1], v[2], v[3]);
                });
            },
            push: function (m) {
                var a = m.val();
                for (var i = 0; i < a.length; i++) this.obj.push(a[i]);
                return this;
            }
        };
	</script>
	
	<script>
		const tabs = document.querySelectorAll('[data-role="tab"]'),
			tabContents = document.querySelectorAll(".tab-panel");

		tabs.forEach((tab) => {
			tab.addEventListener("click", () => {
				const target = document.querySelector(tab.dataset.target);

				tabContents.forEach((tc) => {
					tc.classList.remove("is-active");
				});
				target.classList.add("is-active");

				tabs.forEach((t) => {
					t.classList.remove("is-active");
				});
				tab.classList.add("is-active");
			});
		});

	</script>

	<script>
		function dmcong() {
			var m = new Memvars();	
			var p = window.location.href.toString();
			p = p.substring(0, p.indexOf("Main/")) + 'AppService/EService.asmx/' + "GetData";//GetValue			
			var controller = 'dmcong';
			
			$.ajax({
				type: "POST",
				url: p,
				header: '',
				data: JSON.stringify({ controller: controller, oMemvar: m.val() }),
				contentType: "application/json; charset=utf-8",
				dataType: "json",
				timeout: 30000,
				success: function (msg, s) {
					// ket qua o day
					console.log(msg.d);
					for (let item of msg.d) {
						/*Table row*/
						var row = "";
						row += "<option value='"+item.ma_cong+"'>" + item.ten_cong + " | " + item.ten_loai + "</option>";

						// get the current table body html as a string, and append the new row
						var html = document.getElementById("multi-cong").innerHTML + row;

						// set the table body to the new html code
						document.getElementById("multi-cong").innerHTML = html;					
					}	
					document.getElementById('output').innerHTML = location.search;
					$(".chosen-select").chosen();
				},
				complete: function() {
					 
				},
				error: function (e) {
				// loi o day
					console.log(e);
				}
			});			 
		};			
		
		// overlay functions
		function openOverlay(){
			document.getElementById("pageOverlay").style.visibility = "visible";
		}
		function closeOverlay(){
			document.getElementById("pageOverlay").style.visibility = "hidden";
			$(".rowEditData").removeClass("selected");
		}
		// show row data to be edited or view single row
		$(".rowEditData").click(function() {
			html = "<div id='editableTableDiv'><label class='editRowLabel'>Shape Name:</label> <input type='text' class='mdl-textfield__input' value="+ $(this).find('td').eq(0).html() + "><br><label class='editRowLabel'>Number Edges:</label> <input type='text' class='mdl-textfield__input' value="+ $(this).find('td').eq(1).html() + "><br><label class='editRowLabel'>Sum of Interior Angles:</label> <input type='text' class='mdl-textfield__input' value="+ $(this).find('td').eq(2).html() + "><br><br><input type='button' class='mdl-button mdl-js-button mdl-button--raised mdl-button--colored' value='Save' onclick='saveNewRowData()'>&nbsp;&nbsp;&nbsp;<input type='button' class='mdl-button mdl-js-button mdl-button--raised mdl-button--colored' value='Close' onclick='closeOverlay()'></div>";
			$("#pageOverlay").html(html).show();
			openOverlay();
		});

		// $(document).on('click', '#editableTableDiv input', function() {
		//   $("#pageOverlay").hide();
		// })
	</script>



<script>
    // Create an immediately invoked functional expression to wrap our code
(function() {

// Define our constructor 
this.Modal = function() {

  // Create global element references
  this.closeButton = null;
  this.modal = null;
  this.overlay = null;

  // Determine proper prefix
  this.transitionEnd = transitionSelect();

  // Define option defaults 
  var defaults = {
    autoOpen: false,
    className: 'fade-and-drop',
    closeButton: true,
    content: "",
    maxWidth: 600,
    minWidth: 280,
    overlay: true
  }

  // Create options by extending defaults with the passed in arugments
  if (arguments[0] && typeof arguments[0] === "object") {
    this.options = extendDefaults(defaults, arguments[0]);
  }

  if(this.options.autoOpen === true) this.open();

}

// Public Methods

Modal.prototype.close = function() {
  var _ = this;
  this.modal.className = this.modal.className.replace(" scotch-open", "");
  this.overlay.className = this.overlay.className.replace(" scotch-open",
    "");
  this.modal.addEventListener(this.transitionEnd, function() {
    _.modal.parentNode.removeChild(_.modal);
  });
  this.overlay.addEventListener(this.transitionEnd, function() {
    if(_.overlay.parentNode) _.overlay.parentNode.removeChild(_.overlay);
  });
}

Modal.prototype.open = function() {
  buildOut.call(this);
  initializeEvents.call(this);
  window.getComputedStyle(this.modal).height;
  this.modal.className = this.modal.className +
    (this.modal.offsetHeight > window.innerHeight ?
      " scotch-open scotch-anchored" : " scotch-open");
  this.overlay.className = this.overlay.className + " scotch-open";
}

// Private Methods

function buildOut() {

  var content, contentHolder, docFrag;

  /*
   * If content is an HTML string, append the HTML string.
   * If content is a domNode, append its content.
   */

  if (typeof this.options.content === "string") {
    content = this.options.content;
  } else {
    content = this.options.content.innerHTML;
  }

  // Create a DocumentFragment to build with
  docFrag = document.createDocumentFragment();

  // Create modal element
  this.modal = document.createElement("div");
  this.modal.className = "scotch-modal " + this.options.className;
  this.modal.style.minWidth = this.options.minWidth + "px";
  this.modal.style.maxWidth = this.options.maxWidth + "px";

  // If closeButton option is true, add a close button
  if (this.options.closeButton === true) {
    this.closeButton = document.createElement("button");
    this.closeButton.className = "scotch-close close-button";
    this.closeButton.innerHTML = "&times;";
    this.modal.appendChild(this.closeButton);
  }

  // If overlay is true, add one
  if (this.options.overlay === true) {
    this.overlay = document.createElement("div");
    this.overlay.className = "scotch-overlay " + this.options.className;
    docFrag.appendChild(this.overlay);
  }

  // Create content area and append to modal
  contentHolder = document.createElement("div");
  contentHolder.className = "scotch-content";
  contentHolder.innerHTML = content;
  this.modal.appendChild(contentHolder);

  // Append modal to DocumentFragment
  docFrag.appendChild(this.modal);

  // Append DocumentFragment to body
  document.body.appendChild(docFrag);

}

function extendDefaults(source, properties) {
  var property;
  for (property in properties) {
    if (properties.hasOwnProperty(property)) {
      source[property] = properties[property];
    }
  }
  return source;
}

function initializeEvents() {

  if (this.closeButton) {
    this.closeButton.addEventListener('click', this.close.bind(this));
  }

  if (this.overlay) {
    this.overlay.addEventListener('click', this.close.bind(this));
  }

}

function transitionSelect() {
  var el = document.createElement("div");
  if (el.style.WebkitTransition) return "webkitTransitionEnd";
  if (el.style.OTransition) return "oTransitionEnd";
  return 'transitionend';
}

}());

var myContent = document.getElementById('content');

var myModal = new Modal({
content: myContent
});

var triggerButton = document.getElementById('trigger');

triggerButton.addEventListener('click', function() {
myModal.open();
});
</script>
</body>
</html>