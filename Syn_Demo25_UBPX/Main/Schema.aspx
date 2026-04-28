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
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

	
    <style>
		.col-1-5 {
		    -webkit-box-flex: 0;
			-ms-flex: 0 0 16.66667%;
			flex: 0 0 12.499999965%;
			max-width: 12.499999965%;
		}
		
		.col-1-5 {
			position: relative;
			width: 100%;
			min-height: 1px;
			padding-right: 5px;
			padding-left: 5px;
		}
	
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
		#pageOverlay #editableTableDiv {
			position: fixed;
			top: 50%;
			left: 50%;
			transform: translate(-50%, -50%);
			font-size: 13px;
			padding: 5px;
			width: 50%;
			height: auto;
			margin: auto;
			background-color: rgb(255, 255, 255);
		}

		#pageOverlay #editableTableDiv input {
			font-size: 13px;
		}

		#pageOverlay #editableTableDiv label {
			font-size: 13px;
		}

		.editRowLabel {
			font-weight:bold; 
			font-size: 13px;
		}

		.switch {
			position: relative;
			display: inline-block;
			width: 60px;
			height: 24px;
		}

		.switch input { 
			opacity: 0;
			width: 0;
			height: 0;
		}

		.slider {
			position: absolute;
			cursor: pointer;
			top: 0;
			left: 0;
			right: 0;
			bottom: 0;
			background-color: #ccc;
			-webkit-transition: .4s;
			transition: .4s;
		}

		.slider:before {
			position: absolute;
			content: "";
			height: 16px;
			width: 16px;
			left: 4px;
			bottom: 4px;
			background-color: white;
			-webkit-transition: .4s;
			transition: .4s;
		}

		input:checked + .slider {
			background-color: #2196F3;
		}

		input:focus + .slider {
			box-shadow: 0 0 1px #2196F3;
		}

		input:checked + .slider:before {
			-webkit-transform: translateX(36px);
			-ms-transform: translateX(36px);
			transform: translateX(36px);
		}

		/* Rounded sliders */
		.slider.round {
			border-radius: 34px;
		}

		.slider.round:before {
			border-radius: 50%;
		}

		  
		.table.table-condensed.table-striped {
			margin-bottom: 0px;
		}
		.BI_tablehead {
			background-color: #5e5e60 !important;
			color: #fff;
		}
		.table-condensed>thead.BI_tablehead>tr>th {
			padding: 20px 10px 20px 20px;
			text-transform: uppercase;
			font-weight: 400;
			font-size: 14px;
		}
		.table-striped>tbody>tr:nth-of-type(odd) {
			background-color: #f6f6f6;
		}
		.table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
			border-top: none;
			border-bottom: 2px solid #fff;
		}
		.table-condensed>tbody.BI_tablebody>tr>td {
			//padding: 15px 10px 15px 20px;
			text-transform: capitalize;
			font-weight: 400;
			font-size: 13px;
			color: #4d4d4f;
		}

		.fixed_header{
			table-layout: fixed;
			border-collapse: collapse;
		}

		.fixed_header tbody{
			display:block;
			width: 100%;
			overflow: auto;
			max-height: 200px;
			font-size: 13px;
		}

		.fixed_header thead tr {
			display: block;
		}

		.fixed_header th, .fixed_header td {
			padding: 5px;
			text-align: left;
			/*width: 200px;*/
		}
		
		.form-group {
			margin-bottom: 5px !important;
		}

		.form-control {
			font-size: 13px !important;
			margin-bottom: 5px !important;
		}
		
		.chosen-container {
			width: 100% !important;
		}
		
		.ui-menu .ui-menu-item {
			font-size: 13px !important;
			padding: 3px;
		}
    </style>
</head>
<body style="position: relative;">
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
								<li><a href="http://winwayspe.com" class="flaticon-barn"  > WinwaySpe</a></li>
                            </ul>
                        </nav>
                    </div>

                    <div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3" style="position: relative; top: 3px;"><a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a></div>

                </div>
            </div>
        </div>
    </header>
	<div id="pageOverlay" ></div>
	<div class="site-blocks-cover overlay" style="background-image: url(../Js/Schema/images/vn1.jpg); height: 100%; display: block;" data-aos="fade" data-stellar-background-ratio="0.5">
		
		<div class="container">
			<div class="row align-items-center justify-content-center text-center" style="height: 100%;">

				<div class="col-md-8" data-aos="fade-up" data-aos-delay="400" style="margin: 100px 0;">
					<h1 class="text-white font-weight-light mb-5 text-uppercase font-weight-bold">Logistics Solutions</h1>
						<div class="tabs-wrapper">
							<ul class="nav-tabs">
								<li class="nav-item tab is-active flaticon-sea-ship-with-containers "data-role="tab" data-target="#tabs-home3">
									Báo giá FCL
								</li>

								<li class="nav-item tab icon-archive" data-role="tab" data-target="#tabs-profile3">
									Báo giá LCL
								</li>

								<li class="nav-item tab icon-flight" data-role="tab" data-target="#tabs-messages3">
									Báo giá AIR
								</li>
							</ul>

							<div class="tab-content">
								<div class="tab-panel is-active" id="tabs-home3">
									<form method="post">
										<div class="form-group text-primary" style="text-align:left"> 
											<label class="icon-ship"></label>&nbsp;&nbsp;<label for="from">Cảng đi</label>
											<input type="text" class="form-control btn-block" id="fq_fromFCL" name="fq_fromFCL" placeholder="Từ" />
										</div>
										<div class="form-group text-primary" style="text-align:left;">
											<label class="icon-anchor"></label>&nbsp;&nbsp;<label for="to">Cảng đến</label>
											<input type="text" class="form-control btn-block" id="fq_toFCL" name="fq_toFCL" placeholder="Đến" />
										</div>
										<div class="form-group text-primary" style="text-align:left">
											<label class="flaticon-frontal-truck"></label>&nbsp;
											<label for="to">Loại công</label></br>
											<div id="output"></div>
											<form method="get">
												<select data-placeholder=" " name="tags[]" multiple class="form-control chosen-select" id="multi-cong">
												 
												</select>
												<!-- <input class="btn btn-primary text-white "style="line-height:" type="submit"> -->
											</form>
										</div>
										 
										<div class="form-group col-12 d-inline-flex" style="padding-left: 0; padding-right: 0;">
											<div class="form-control-wrap col-6 text-primary" style="padding-left: 0; text-align: left; width: 30%;">
												<label class="icon-date_range"></label>&nbsp;&nbsp;<label for="timedi" style="font-family: 'Roboto', arial, sans-serif; font-weight: 300;">Thời gian đi </label>
												<input type="text" id="cf-FromFCL" placeholder="MM/dd/yyyy" class="form-control datepicker px-3">
											</div>
											<div class="form-control-wrap col-6 text-primary" style="padding-right: 0; text-align: left; width: 30%;">
												<label class="icon-calendar-check-o"></label>&nbsp;&nbsp;<label for="timeden" style="font-family: 'Roboto', arial, sans-serif; font-weight: 300;">Thời gian đến </label>
												<input type="text" id="cf-ToFCL" placeholder="MM/dd/yyyy" class="form-control datepicker px-3">
											</div>
										</div>
										
										<div class="form-group col-12 d-inline-flex" style="padding-left: 0; padding-right: 0;">
											<div class="form-control-wrap col-2 text-primary" style="padding-left: 0;"> 
												<label class="icon-download"></label>&nbsp;&nbsp;<label> Nhập khẩu </label>
											</div>
											<div class="form-control-wrap col-1-5 text-primary" style="padding-right: 0;">
												<label class="switch">
													<input type="checkbox" name="switchFCL">
													<span class="slider round"></span>
												</label>										
											</div>
											<div class="form-control-wrap col-2 text-primary " style="padding-right: 0;">
												<label class="icon-public"></label>&nbsp;&nbsp;<label> Xuất khẩu </label>
											</div>
										</div>
							   
										<div class="form-group">
											<input type="submit" class="btn btn-primary text-white py-2 px-4 btn-block" style="margin-right: auto; margin-left: auto;" id="btnSchemaFCL" value="Thực hiện" />
										</div>
										
										
										<div class="form-group">
											<div class="table-responsive">
											  <table class="table_FCL table table-condensed table-striped fixed_header" id="table_FCL">
												
											  </table>
											</div>
										</div>

									</form>
								</div>
								
								<div class="tab-panel" id="tabs-profile3">

									<form method="post">
										<div class="form-group text-primary" style="text-align:left">
											<label class="flaticon-barn"></label>&nbsp;&nbsp;<label for="from">Cảng đi</label>
											<input type="text" class="form-control btn-block" id="fq_fromLCL" name="fq_fromLCL" placeholder="Từ" />
										</div>
										<div class="form-group text-primary" style="text-align:left">
											<label class="flaticon-car"></label>&nbsp;&nbsp;<label for="to">Cảng đến</label>
											<input type="text" class="form-control btn-block" id="fq_toLCL" name="fq_toLCL" placeholder="Đến" />
										</div>
										
										

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


										<div class="form-group col-12 d-inline-flex" style="padding-left: 0; padding-right: 0;">
											<div class="form-control-wrap col-6 text-primary" style="padding-left: 0; text-align: left; width: 30%;">
												<label class="icon-date_range"></label>&nbsp;&nbsp;<label for="timedi" style="font-family: 'Roboto', arial, sans-serif; font-weight: 300;">Thời gian đi </label>
												<input type="text" id="cf-FromLCL" placeholder="MM/dd/yyyy" class="form-control datepicker px-3">
											</div>
											<div class="form-control-wrap col-6 text-primary" style="padding-right: 0; text-align: left; width: 30%;">
												<label class="icon-calendar-check-o"></label>&nbsp;&nbsp;<label for="timeden" style="font-family: 'Roboto', arial, sans-serif; font-weight: 300;">Thời gian đến </label>
												<input type="text" id="cf-ToLCL" placeholder="MM/dd/yyyy" class="form-control datepicker px-3">
											</div>
										</div>
										
										<div class="form-group col-12 d-inline-flex" style="padding-left: 0; padding-right: 0;">
											<div class="form-control-wrap col-2 text-primary" style="padding-left: 0;"> 
												<label class="icon-download"></label>&nbsp;&nbsp;<label> Nhập khẩu </label>
											</div>
											<div class="form-control-wrap col-1-5 text-primary" style="padding-right: 0;">
												<label class="switch">
													<input type="checkbox" name="switchLCL">
													<span class="slider round"></span>
												</label>										
											</div>
											<div class="form-control-wrap col-2 text-primary " style="padding-right: 0;">
												<label class="icon-public"></label>&nbsp;&nbsp;<label> Xuất khẩu </label>
											</div>
										</div>

							   
										<div class="form-group">
											<input type="submit" class="btn btn-primary text-white py-2 px-4 btn-block" style="margin-right: auto; margin-left: auto;" id="btnSchemaLCL" value="Thực hiện" />
										</div>
										
										<div class="form-group">
											<div class="table-responsive">
											  <table class="table_LCL table table-condensed table-striped fixed_header" id="table_LCL">
												
											  </table>
											</div>
										</div>

									</form>
								</div>
								<div class="tab-panel" id="tabs-messages3">
									<form method="post">
										<div class="form-group text-primary" style="text-align:left">
											<label class="icon-plane"></label>&nbsp;&nbsp;<label for="from">Cảng đi</label>
											<input type="text" class="form-control btn-block" id="fq_fromAIR" name="fq_fromAIR" placeholder="Từ" />
										</div>
										<div class="form-group text-primary" style="text-align:left">
											<label class="icon-room"></label>&nbsp;&nbsp;<label for="to">Cảng đến</label>
											<input type="text" class="form-control btn-block" id="fq_toAIR" name="fq_toAIR" placeholder="Đến" />

										</div>
										<div class="form-group col-12 d-inline-flex" style="padding-left: 0; padding-right: 0;">
											<div class="form-control-wrap col-6 text-primary" style="text-align:left; padding-left: 0;">					
												<label class="icon-iso"></label>&nbsp;&nbsp;<label for="to">Trọng lượng</label></br>
												<input type="number" class="form-control btn-block" id="fq_weightAIR" name="fq_weightAIR" placeholder="0" />										
											</div>
											<div class="form-control-wrap col-6 text-primary  flaticon-car" style="text-align:left; padding-right: 0;">					
												<label for="to">Tổng khối</label></br>
												<input type="number" class="form-control btn-block" id="fq_volumeAIR" name="fq_volumeAIR" placeholder="0" />
												
											</div>
										</div>

									 
										<div class="form-group col-12 d-inline-flex" style="padding-left: 0; padding-right: 0;">
											<div class="form-control-wrap col-6 text-primary" style="padding-left: 0; text-align: left; width: 30%;">
												<label class="icon-date_range"></label>&nbsp;&nbsp;<label for="timedi" style="font-family: 'Roboto', arial, sans-serif; font-weight: 300;">Thời gian đi </label>
												<input type="text" id="cf-FromAIR" placeholder="MM/dd/yyyy" class="form-control datepicker px-3">
											</div>
											<div class="form-control-wrap col-6 text-primary" style="padding-right: 0; text-align: left; width: 30%;">
												<label class="icon-calendar-check-o"></label>&nbsp;&nbsp;<label for="timeden" style="font-family: 'Roboto', arial, sans-serif; font-weight: 300;">Thời gian đến </label>
												<input type="text" id="cf-ToAIR" placeholder="MM/dd/yyyy" class="form-control datepicker px-3">
											</div>
										</div>
										
										<div class="form-group col-12 d-inline-flex" style="padding-left: 0; padding-right: 0;">
											<div class="form-control-wrap col-2 text-primary" style="padding-left: 0;"> 
												<label class="icon-download"></label>&nbsp;&nbsp;<label> Nhập khẩu </label>
											</div>
											<div class="form-control-wrap col-1-5 text-primary" style="padding-right: 0;">
												<label class="switch">
													<input type="checkbox" name="switchAIR">
													<span class="slider round"></span>
												</label>										
											</div>
											<div class="form-control-wrap col-2 text-primary " style="padding-right: 0;">
												<label class="icon-public"></label>&nbsp;&nbsp;<label> Xuất khẩu </label>
											</div>
										</div>

							   
										<div class="form-group">
											<input type="submit" class="btn btn-primary text-white py-2 px-4 btn-block" style="margin-right: auto; margin-left: auto;" id="btnSchemaAIR" value="Thực hiện" />
										</div>
										
										<div class="form-group">
											<div class="table-responsive">
											  <table class="table_AIR table table-condensed table-striped fixed_header" id="table_AIR">
												
											  </table>
											</div>
										</div>

										<!--										
										<div class="form-group gridtable">
											<table id="table_AIR" class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp table_AIR no-footer table table-striped table-bordered" role="grid">
												<tr class="rowEditData odd" value="7930" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">null</td>
												  <td >3</td>
												  <td >180</td>
												</tr>
												<tr class="rowEditData even" value="7931" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">null</td>
												  <td >4</td>
												  <td >360</td>
												</tr>
												<tr class="rowEditData odd" value="7932" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">null</td>
												  <td >5</td>
												  <td >540</td>
												</tr>
												<tr class="rowEditData even" value="7933" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">null</td>
												  <td >6</td>
												  <td >120</td>
												</tr>
												<tr class="rowEditData odd" value="7934" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">null</td>
												  <td >10</td>
												  <td >1440</td>
												</tr>
												<tr class="rowEditData even" value="7925" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">Octagon</td>
												  <td >8</td>
												  <td >null</td>
												</tr>
												<tr class="rowEditData odd" value="7922" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">pentagon</td>
												  <td >null</td>
												  <td >null</td>
												</tr>
												<tr class="rowEditData even" value="7926" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">Pentagon</td>
												  <td >null</td>
												  <td >null</td>
												</tr>
												<tr class="rowEditData odd" value="7920" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">square</td>
												  <td >4</td>
												  <td >null</td>
												</tr>
												<tr class="rowEditData even" value="7927" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">Square</td>
												  <td >null</td>
												  <td >null</td>
												</tr>
												<tr class="rowEditData odd" value="7928" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">Square</td>
												  <td >4</td>
												  <td >null</td>
												</tr>
												<tr class="rowEditData even" value="7921" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">trapezoid</td>
												  <td >4</td>
												  <td >null</td>
												</tr>
												<tr class="rowEditData odd" value="7919" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">triangle</td>
												  <td >3</td>
												  <td >null</td>
												</tr>
												<tr class="rowEditData even" value="7929" role="row">
												  <td class="mdl-data-table__cell--non-numeric sorting_1">Triangle</td>
												  <td >3</td>
												  <td >null</td>
												</tr>			
											</table>											
										</div>	
										-->										
									</form>
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

	<footer class="site-footer">

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
	<script src="//cdnjs.cloudflare.com/ajax/libs/d3/4.2.2/d3.min.js"></script>
	
	<script>
		$(document).ready(function () {
		
			dmcong();	

			// 3 Capitalize string every 1st chacter of word to uppercase
			$('#fq_fromFCL').keyup(function() 
			{
				var str = $('#fq_fromFCL').val();
				var spart = str.split(" ");
				for ( var i = 0; i < spart.length; i++ )
				{
					var j = spart[i].charAt(0).toUpperCase();
					spart[i] = j + spart[i].substr(1);
				}
				$('#fq_fromFCL').val(spart.join(" "));
			});
			$('#fq_toFCL').keyup(function() 
			{
				var str = $('#fq_toFCL').val();
				var spart = str.split(" ");
				for ( var i = 0; i < spart.length; i++ )
				{
					var j = spart[i].charAt(0).toUpperCase();
					spart[i] = j + spart[i].substr(1);
				}
				$('#fq_toFCL').val(spart.join(" "));
			});
			
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
								return { label: item.ten_kho + " ( " + item.ma_kho + " )", value: item.ma_kho };
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
								return { label: item.ten_kho + " ( " + item.ma_kho + " )", value: item.ma_kho };
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
			
			$('#fq_fromLCL').keyup(function() 
			{
				var str = $('#fq_fromLCL').val();
				var spart = str.split(" ");
				for ( var i = 0; i < spart.length; i++ )
				{
					var j = spart[i].charAt(0).toUpperCase();
					spart[i] = j + spart[i].substr(1);
				}
				$('#fq_fromLCL').val(spart.join(" "));
			});
			$('#fq_toLCL').keyup(function() 
			{
				var str = $('#fq_toLCL').val();
				var spart = str.split(" ");
				for ( var i = 0; i < spart.length; i++ )
				{
					var j = spart[i].charAt(0).toUpperCase();
					spart[i] = j + spart[i].substr(1);
				}
				$('#fq_toLCL').val(spart.join(" "));
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
								return { label: item.ten_kho + " ( " + item.ma_kho + " )", value: item.ma_kho };
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
								return { label: item.ten_kho + " ( " + item.ma_kho + " )", value: item.ma_kho };
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
			
			$('#fq_fromAIR').keyup(function() 
			{
				var str = $('#fq_fromAIR').val();
				var spart = str.split(" ");
				for ( var i = 0; i < spart.length; i++ )
				{
					var j = spart[i].charAt(0).toUpperCase();
					spart[i] = j + spart[i].substr(1);
				}
				$('#fq_fromAIR').val(spart.join(" "));
			});
			$('#fq_toAIR').keyup(function() 
			{
				var str = $('#fq_toAIR').val();
				var spart = str.split(" ");
				for ( var i = 0; i < spart.length; i++ )
				{
					var j = spart[i].charAt(0).toUpperCase();
					spart[i] = j + spart[i].substr(1);
				}
				$('#fq_toAIR').val(spart.join(" "));
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
								return { label: item.ten_kho + " ( " + item.ma_kho + " )", value: item.ma_kho };
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
								return { label: item.ten_kho + " ( " + item.ma_kho + " )", value: item.ma_kho };
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
			
			var checkFCL = 1;
			var titleCheckFCL = "Nhập khẩu";
			$('[name="switchFCL"]').change(function(){
				if($('[name="switchFCL"]:checked').is(":checked")){
					checkFCL = 1;
					titleCheckFCL = "Xuất khẩu";
					console.log(checkFCL);
				}else{
					checkFCL = 2;
					titleCheckFCL = "Nhập khẩu";
					console.log(checkFCL);
				}
			});
			var checkLCL = 1;
			var titleCheckLCL = "Nhập khẩu";
			$('[name="switchLCL"]').change(function(){
				if($('[name="switchLCL"]:checked').is(":checked")){
					checkLCL = 1;
					titleCheckLCL = "Xuất khẩu";
					console.log(checkLCL);
				}else{
					checkLCL = 2;
					titleCheckLCL = "Nhập khẩu";
					console.log(checkLCL);
				}
			});
			var checkAIR = 1;
			var titleCheckAIR = "Nhập khẩu";
			$('[name="switchAIR"]').change(function(){
				if($('[name="switchAIR"]:checked').is(":checked")){
					checkAIR = 1;
					titleCheckAIR = "Xuất khẩu";
					console.log(checkAIR);
				}else{
					checkAIR = 2;
					titleCheckAIR = "Nhập khẩu";
					console.log(checkAIR);
				}
			});
			
			$('#btnSchemaFCL').click(function(e) {
				e.preventDefault();
				document.getElementById("table_AIR").innerHTML = "";
				document.getElementById("table_LCL").innerHTML = "";
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
				m.val('ifreight','I', parseInt(checkFCL));

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
								var id, line, unitId;
								if ((msg.d).length > 0) {
									for (let item of (msg.d)) {
										/*Table row*/								
										row += 	'<tr class="rowEditData d-inline-flex">' +
													'<td class="text-center d-none" style="width: 100px;">'+item.ma_nt+'</td>' + //0
													'<td class="text-center d-none" style="width: 70px;">'+item.ma_phi+'</td>' + //1
													'<td class="text-center d-inline-block" style="width: 120px;">'+item.ds_ngay+'</td>' + //2
													'<td class="text-center d-inline-block" style="width: 120px;">'+item.so_ngay_vc+'</td>' + //3
													'<td class="text-center d-inline-block" style="width: 100px;">'+item.ma_kh+'</td>' + //4
													'<td class="text-center d-inline-block" style="width: 150px;">'+item.so_ct+'</td>' + //5
													'<td class="text-center d-inline-block" style="width: 150px;">'+item.t_tien_cuoc+'</td>' + //6
													'<td class="text-center d-inline-block" style="width: 150px;">'+item.t_tien_xuat+'</td>' + //7
													'<td class="text-center d-inline-block" style="width: 150px;">'+item.t_tien_tong+'</td>' + //8
													'<td class="text-center d-inline-block" style="width: 350px;">'+item.dien_giai+'</td>' + //9
													'<td class="text-center d-none" style="width: 50px;">'+item.id+'</td>' + //10
													'<td class="text-center d-none" style="width: 70px;">'+item.line+'</td>' + //11
													'<td class="text-center d-none" style="width: 70px;">'+item.unit_id+'</td>' + //12
													'<td class="d-none">'+item.gia_20FL+'</td>' + //13
													'<td class="d-none">'+item.gia_20GP+'</td>' + //14
													'<td class="d-none">'+item.gia_20OT+'</td>' + //15
													'<td class="d-none">'+item.gia_20RF+'</td>' + //16
													'<td class="d-none">'+item.gia_20TK+'</td>' + //17
													'<td class="d-none">'+item.gia_40FL+'</td>' + //18
													'<td class="d-none">'+item.gia_40GP+'</td>' + //19
													'<td class="d-none">'+item.gia_40HFL+'</td>' + //20
													'<td class="d-none">'+item.gia_40HOT+'</td>' + //21
													'<td class="d-none">'+item.gia_40HQ+'</td>' + //22
													'<td class="d-none">'+item.gia_40OT+'</td>' + //23
													'<td class="d-none">'+item.gia_40RF+'</td>' + //24
													'<td class="d-none">'+item.gia_40TK+'</td>' + //25
													'<td class="d-none">'+item.gia_45HQ+'</td>' + //26
													'<td class="d-none">'+item.ma_noi_di+'</td>' + //27
													'<td class="d-none">'+item.ten_noi_di+'</td>' + //28
													'<td class="d-none">'+item.ma_noi_den+'</td>' + //29
													'<td class="d-none">'+item.ten_noi_den+'</td>' + //30	
													'<td class="d-none">'+item.ngay_hl+'</td>' + //31
													'<td class="d-none">'+item.ngay_hld+'</td>' + //32
													'<td class="d-none">'+item.ngay_ct+'</td>' + //33
													'<td class="d-none">'+item.ty_gia+'</td>' + //34		
													'<td class="d-none">'+item.ma_nt+'</td>' + //35			
													'<td class="d-none">'+item.ma_kh+'</td>' + //36		
													'<td class="d-none">'+item.ten_kh+'</td>' + //37		
													'<td class="d-none">'+item.ngay_ct+'</td>' + //38	
													'<td class="d-none">'+item.status+'</td>' + //39													
												'</tr>';				
									};
																				

									var text = 	'<tbody class="BI_tablebody">' +
													'<tr class="BI_tablehead d-inline-flex">' +
														'<th class="text-center d-none" style="width: 100px;" aria-controls="table_FCL">Ngoại tệ</th>' + //0
														'<th class="text-center d-none" style="width: 70px;" aria-controls="table_FCL">Phí</th>' + //1
														'<th class="text-center d-inline-block" style="width: 120px;" aria-controls="table_FCL">Danh sách ngày</th>' + //2
														'<th class="text-center d-inline-block" style="width: 120px;" aria-controls="table_FCL">Số ngày VC</th>' + //3
														'<th class="text-center d-inline-block" style="width: 100px;" aria-controls="table_FCL">Khách hàng</th>' + //4
														'<th class="text-center d-inline-block" style="width: 150px;" class="" aria-controls="table_FCL">Số chứng từ</th>' + //5
														'<th class="text-center d-inline-block" style="width: 150px;" aria-controls="table_FCL">Tiền cước</th>' + //6
														'<th class="text-center d-inline-block" style="width: 150px;" aria-controls="table_FCL">Tiền xuất</th>' + //7
														'<th class="text-center d-inline-block" style="width: 150px;" aria-controls="table_FCL">Tổng tiền</th>' + //8
														'<th class="text-center d-inline-block" style="width: 350px;" aria-controls="table_FCL">Diễn giải</th>' + //9
														'<th class="text-center d-none" style="width: 50px;" aria-controls="table_FCL">Id</th>' + //10
														'<th class="text-center d-none" style="width: 70px;" aria-controls="table_FCL">Line</th>' + //11
														'<th class="text-center d-none" style="width: 70px;" aria-controls="table_FCL">Mã ĐVị</th>' + //12
														'<th class="d-none" aria-controls="table_FCL">Giá 20FL</th>' + //13
														'<th class="d-none" aria-controls="table_FCL">Giá 20GP</th>' + //14
														'<th class="d-none" aria-controls="table_FCL">Giá 20OT</th>' + //15
														'<th class="d-none" aria-controls="table_FCL">Giá 20RF</th>' + //16
														'<th class="d-none" aria-controls="table_FCL">Giá 20TK</th>' + //17
														'<th class="d-none" aria-controls="table_FCL">Giá 40FL</th>' + //18
														'<th class="d-none" aria-controls="table_FCL">Giá 40GP</th>' + //19
														'<th class="d-none" aria-controls="table_FCL">Giá 40HFL</th>' + //20
														'<th class="d-none" aria-controls="table_FCL">Giá 40HOT</th>' + //21
														'<th class="d-none" aria-controls="table_FCL">Giá 40HQ</th>' + //22
														'<th class="d-none" aria-controls="table_FCL">Giá 40OT</th>' + //23
														'<th class="d-none" aria-controls="table_FCL">Giá 40RF</th>' + //24
														'<th class="d-none" aria-controls="table_FCL">Giá 40TK</th>' + //25
														'<th class="d-none" aria-controls="table_FCL">Giá 45HQ</th>' + //26
														'<th class="d-none" aria-controls="table_FCL">Mã nơi đi</th>' + //27
														'<th class="d-none" aria-controls="table_FCL">Tên nơi đi</th>' + //28
														'<th class="d-none" aria-controls="table_FCL">Mã nơi đến</th>' + //29
														'<th class="d-none" aria-controls="table_FCL">Tên nơi đến</th>' + //30
														'<th class="d-none" aria-controls="table_FCL">Ngày đi</th>' + //31
														'<th class="d-none" aria-controls="table_FCL">Ngày đến</th>' + //32
														'<th class="d-none" aria-controls="table_FCL">Ngày hiệu lực</th>' + //33		
														'<th class="d-none" aria-controls="table_FCL">Tỷ giá</th>' + //34	
														'<th class="d-none" aria-controls="table_FCL">Mã ngoại tệ</th>' + //35		
														'<th class="d-none" aria-controls="table_FCL">Mã KH</th>' + //36	
														'<th class="d-none" aria-controls="table_FCL">Tên KH</th>' + //37			
														'<th class="d-none" aria-controls="table_FCL">Ngày Ct</th>' + //38		
														'<th class="d-none" aria-controls="table_FCL">Trạng thái</th>' + //39													
													'</tr>' +
													row +
												'</tbody>';

									// get the current table body html as a string, and append the new row
									var html = document.getElementById("table_FCL").innerHTML + text;
									// set the table body to the new html code
									document.getElementById("table_FCL").innerHTML = html;
									// show row data to be edited or view single row
									$(".rowEditData").click(function() {
										var m = new Memvars();	
										var p = window.location.href.toString();
										p = p.substring(0, p.indexOf("Main/")) + 'AppService/EService.asmx/' + "GetData";//GetValue		
										var controller = "st_loading_qoute_detail_FCL";

										
										m.val('ngay_ct1', 'C', tgDi);
										m.val('ngay_ct2','C', tgDen);
										m.val('ngay_ct','C', timeNow);
										m.val('ma_noi_di','C', cangDi);
										m.val('ma_noi_den','C', cangDen);
										m.val('id','I', parseInt($(this).find('td').eq(10).html()));
										m.val('line','I', parseInt($(this).find('td').eq(11).html()));
										m.val('unit_id','I', parseInt($(this).find('td').eq(12).html()));
										m.val('ds_cong','C', str);
										m.val('ma_ngv','I', parseInt(checkFCL));
										
										var date = new Date(parseInt(($(this).find('td').eq(38).html()).substr(6))); 
										var datehl = new Date(parseInt(($(this).find('td').eq(31).html()).substr(6)));
										var datehld = new Date(parseInt(($(this).find('td').eq(32).html()).substr(6)));
										var datect = new Date(parseInt(($(this).find('td').eq(33).html()).substr(6)));
										var trangThai = ($(this).find('td').eq(33).html() == "5") ? "Lập báo giá" : "Hoàn tất";
										
										html = 	"<div id='editableTableDiv'>" +
													"<div class='form-group mb-2 col-12 text-right'>" +
														"<input type='button' class='btn btn-sm btn-danger' value='X' onclick='closeOverlay()'>" + 													
													"</div>" +
													"<div class='form-group col-12 d-inline-flex'>" +
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Mã khách hàng:</label>" + 															
														"</div>" +
														"<div class='col-1-5'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(36).html() + "'>" + 															
														"</div>" +
														"<div class='col-6'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(37).html() + "'>" + 
														"</div>"+														
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Số c/từ:</label>" + 															
														"</div>" +
														"<div class='col-1-5'>" +															
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(5).html() + "'>" +
														"</div>" +
													"</div>" +
													"<div class='form-group col-12 d-inline-flex'>" +
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Mã nơi đến:</label>" + 														
														"</div>"+
														"<div class='col-1-5'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(27).html() + "'>" +										
														"</div>"+
														"<div class='col-6'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(28).html() + "'>" + 
														"</div>" +	
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Ngày c/từ:</label>" + 
														"</div>" +	
														"<div class='col-1-5'>" +
															"<input type='text' class='form-control' value='"+ datect.toLocaleDateString('en-GB') + "'>" + 																																						
														"</div>" +	
													"</div>" + 	
													"<div class='form-group col-12 d-inline-flex'>" +	
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Mã nơi đến:</label>" + 															
														"</div>" +
														"<div class='col-1-5'>" +															
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(29).html() + "'>" +
														"</div>" +
														"<div class='col-6'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(30).html() + "'>" + 
														"</div>"+
														"<div class='col-1'>" +
															"<label class='editRowLabel'>Tỷ giá:</label>" + 															
														"</div>" +	
														"<div class='col-1'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(34).html() + "'>" + 																													
														"</div>" +	
														"<div class='col-1'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(35).html() + "'>" +
														"</div>" +	
													"</div>" + 
													"<div class='form-group col-12 d-inline-flex'>" +
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Container:</label>" + 
														"</div>"+
														"<div class='col-7'>" + 
															"<input type='text' class='form-control' value='"+ str + "'>" +
														"</div>"+
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Trạng thái:</label>" + 
														"</div>"+
														"<div class='col-2'>" +
															"<input type='text' class='form-control' value='"+ trangThai + "'>" +
														"</div>"+
													"</div>" +
													"<div class='form-group col-12 d-inline-flex'>" +
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Lịch vận chuyển:</label>" + 															
														"</div>"+
														"<div class='col-1-5'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(2).html() + "'>" +
														"</div>"+
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Hiệu lực từ/đến:</label>" + 															
														"</div>" +	
														"<div class='col-2'>" +
															"<input type='text' class='form-control' value='"+ datehl.toLocaleDateString('en-GB') + "'>" + 																										
														"</div>" +
														"<div class='col-2'>" +
															"<input type='text' class='form-control' value='"+ datehld.toLocaleDateString('en-GB') + "'>" +
														"</div>" +	
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Loại hàng hóa:</label>" + 															
														"</div>" +														
														"<div class='col-2'>" +
															"<input type='text' class='form-control' value='"+ titleCheckFCL + "'>" +
														"</div>" +
													"</div>" +
													"<div class='form-group col-12 d-inline-flex'>" +
														"<div class='col-3'>" +
															"<label class='editRowLabel'>Thời gian v/chuyển (ngày):</label>" + 
														"</div>"+
														"<div class='col-1-5'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(3).html() + "'>" +
														"</div>"+
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Diễn giải:</label>" + 
														"</div>"+
														"<div class='col-6'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(9).html() + "'>" +
														"</div>"+
													"</div>";
										
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
												var rows = "";
												console.log(msg.d);
												var i = 1;
												for (var item of (msg.d)) {
													var loai_phi = (item.ma_dk_phi == "1") ? "Cước vận chuyển" : (item.ma_dk_phi == "2") ? "Phí nhập khẩu" : "Phí xuất khẩu";
													rows += "<tr class='d-inline-flex'>" +
																"<td class='text-center d-inline-block' style='width: 50px;'>"+i+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.ma_phi+"</td>" +
																"<td class='text-center d-inline-block' style='width: 300px;'>"+item.ten_phi+"</td>" +
																"<td class='text-center d-inline-block' style='width: 150px;'>"+item.ten_cong+"</td>" +
																"<td class='text-center d-inline-block' style='width: 150px;'>"+ loai_phi + "</td>" +
																"<td class='text-center d-inline-block' style='width: 70px;'>"+item.ma_dvt+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.so_luong+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.gia_nt1+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.tien_nt1+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.gia_nt2+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.tien_nt2+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.ma_nt+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.ty_gia+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.tien1+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.tien2+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.thue_suat+"</td>" +
																"<td class='text-center d-inline-block' style='width: 150px;'>"+item.tt_nt+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.tien_ln+"</td>" +
																"<td class='text-center d-inline-block' style='width: 200px;'></td>" +
															"</tr>";
													i++;
												}
												
												html = html + 
													"<div class='form-group col-12'>" +
														"<div class='table-responsive col-12'>" +
															"<table class='table_FCL table table-condensed table-striped fixed_header' id='table_FCL_two'>" +
																"<tbody>" +
																	"<tr class='BI_tablehead d-inline-flex'>" +
																		"<th class='text-center d-inline-block' style='width: 50px;'>STT</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Mã phí</th>" +
																		"<th class='text-center d-inline-block' style='width: 300px;'>Tên phí</th>" +
																		"<th class='text-center d-inline-block' style='width: 150px;'>Container</th>" +
																		"<th class='text-center d-inline-block' style='width: 150px;'>Loại phí</th>" +
																		"<th class='text-center d-inline-block' style='width: 70px;'>Đơn vị</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Số lượng</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Giá mua</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Tiền mua</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Giá bán</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Tiền bán</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Mã NT</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Tỷ giá</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Chi phí</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Doanh thu</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>VAT(%)</th>" +
																		"<th class='text-center d-inline-block' style='width: 150px;'>Tổng cộng</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Lợi nhuận</th>" +
																		"<th class='text-center d-inline-block' style='width: 200px;'>Diễn giải</th>" +
																	"</tr>" +
																	rows +
																"</tbody>" +
															"</table>" +
														"</div>" +
													"</div>" +
													"<div class='form-group col-12 text-right'>" +									
														"<input type='button' class='btn btn-sm btn-success' value='Lưu báo giá' onclick='saveNewRowData()'>" + 
													"</div>" +
												"</div>";
												$("#pageOverlay").html(html).show();
												openOverlay();
												
												addRowHandlers('table_FCL_two');
													
												function addRowHandlers(tableId) {
													if(document.getElementById(tableId)!=null){
														var table = document.getElementById(tableId);
														var rows = table.getElementsByTagName('tr');
														var stt = '';
														var ma_phi = '';
														var ten_phi = '';
														var container = '';
														var loai_phi = '';
														var don_vi = '';
														var so_luong = '';
														var gia_mua = '';
														var tien_mua = '';
														var gia_ban = '';
														var tien_ban = '';
														var ma_nt = '';
														var ty_gia = '';
														var chi_phi = '';
														var doanh_thu = '';
														var vat = '';
														var tong_cong = '';
														var loi_nhuan = '';
														var dien_giai = '';														
														for ( var i = 1; i < rows.length; i++) {
															
															rows[i].i = i;
															rows[i].onclick = function() {
																												
																stt = table.rows[this.i].cells[0].innerHTML;				
																ma_phi = table.rows[this.i].cells[1].innerHTML;
																ten_phi = table.rows[this.i].cells[2].innerHTML;
																container = table.rows[this.i].cells[3].innerHTML;
																loai_phi = table.rows[this.i].cells[4].innerHTML;
																don_vi = table.rows[this.i].cells[5].innerHTML;																	ocb = table.rows[this.i].cells[0].innerHTML;				
																so_luong = table.rows[this.i].cells[6].innerHTML;
																gia_mua = table.rows[this.i].cells[7].innerHTML;
																tien_mua = table.rows[this.i].cells[8].innerHTML;
																gia_ban = table.rows[this.i].cells[9].innerHTML;
																tien_ban = table.rows[this.i].cells[10].innerHTML;				
																ma_nt = table.rows[this.i].cells[11].innerHTML;
																ty_gia = table.rows[this.i].cells[12].innerHTML;
																chi_phi = table.rows[this.i].cells[13].innerHTML;
																doanh_thu = table.rows[this.i].cells[14].innerHTML;
																vat = table.rows[this.i].cells[15].innerHTML;																	ocb = table.rows[this.i].cells[0].innerHTML;				
																tong_cong = table.rows[this.i].cells[16].innerHTML;
																loi_nhuan = table.rows[this.i].cells[17].innerHTML;
																dien_giai = table.rows[this.i].cells[18].innerHTML;
																
																console.log('STT: '+stt+', Mã phí: '+ma_phi+', Tên phí: '+ten_phi+', Container: '+container+', Loại phí: '+loai_phi +
																', Đơn vị: '+don_vi+', Số lượng: '+so_luong+', Giá mua: '+gia_mua+', Tiền mua: '+tien_mua+', Giá bán: '+gia_ban +
																', Tiền bán: '+tien_ban+', Mã NT: '+ma_nt+', Tỷ giá: '+ty_gia+', Chi phí: '+chi_phi+', Doanh thu: '+doanh_thu +
																', VAT(%): '+vat+', Tổng cộng: '+tong_cong+', Lợi nhuận: '+loi_nhuan+', Diễn giải: '+dien_giai);
															};
														}
													}
												}
												
												saveNewRowData = function () {
													console.log($('#editableTableDiv').find('input').eq(0).val()); 
													console.log($('#editableTableDiv').find('input').eq(1).val()); //makh
													console.log($('#editableTableDiv').find('input').eq(2).val()); //ten kh
													console.log($('#editableTableDiv').find('input').eq(3).val()); //soct
													console.log($('#editableTableDiv').find('input').eq(4).val()); //ma noi di
													console.log($('#editableTableDiv').find('input').eq(5).val()); //ten noi di
													console.log($('#editableTableDiv').find('input').eq(6).val()); //ngay ct
													console.log($('#editableTableDiv').find('input').eq(7).val()); //ma noi den
													console.log($('#editableTableDiv').find('input').eq(8).val()); //ten noi den
													console.log($('#editableTableDiv').find('input').eq(9).val()); //ty gia
													console.log($('#editableTableDiv').find('input').eq(10).val()); //ten ngoai te
													console.log($('#editableTableDiv').find('input').eq(11).val()); //container
													//console.log($('#editableTableDiv').find('input').eq(12).val()); //tổng tỷ khối
													console.log($('#editableTableDiv').find('input').eq(12).val()); //status
													console.log($('#editableTableDiv').find('input').eq(13).val()); //ngày vận chuyển
													console.log($('#editableTableDiv').find('input').eq(14).val()); //ngày hiệu lực
													console.log($('#editableTableDiv').find('input').eq(15).val()); //ngày hết hiệu lực
													console.log($('#editableTableDiv').find('input').eq(16).val()); //loại hàng hóa
													console.log($('#editableTableDiv').find('input').eq(17).val()); //ngày vc
													console.log($('#editableTableDiv').find('input').eq(18).val()); //dien giải

													/*
													$('#table_FCL tr').each(function(){
														$(this).find('td').each(function( data ){
															//do your stuff, you can use $(this) to get current cell
															console.log(data);
														})
													})
													*/
												}
											}
										});																												
									});
									/*
									$(document).on('click', '#editableTableDiv input', function() {
										$("#pageOverlay").hide();
									})
									*/
								} else {
								var row = 	'<tbody class="BI_tablebody">' +
												'<tr class="BI_tablehead d-inline-flex">' +
													'<th class="text-center d-none" style="width: 100px;" aria-controls="table_LCL">Ngoại tệ</th>' + //0
													'<th class="text-center d-none" style="width: 70px;" aria-controls="table_LCL">Phí</th>' + //1
													'<th class="text-center d-inline-block" style="width: 120px;" aria-controls="table_LCL">Danh sách ngày</th>' + //2
													'<th class="text-center d-inline-block" style="width: 120px;" aria-controls="table_LCL">Số ngày VC</th>' + //3
													'<th class="text-center d-inline-block" style="width: 100px;" aria-controls="table_LCL">Khách hàng</th>' + //4
													'<th class="text-center d-inline-block" style="width: 150px;" class="" aria-controls="table_LCL">Số chứng từ</th>' + //5
													'<th class="text-center d-inline-block" style="width: 150px;" aria-controls="table_LCL">Tiền cước</th>' + //6
													'<th class="text-center d-inline-block" style="width: 150px;" aria-controls="table_LCL">Tiền xuất</th>' + //7
													'<th class="text-center d-inline-block" style="width: 150px;" aria-controls="table_LCL">Tổng tiền</th>' + //8
													'<th class="text-center d-inline-block" style="width: 350px;" aria-controls="table_LCL">Diễn giải</th>' + //9
													'<th class="text-center d-none" style="width: 50px;" aria-controls="table_LCL">Id</th>' + //10
													'<th class="text-center d-none" style="width: 70px;" aria-controls="table_LCL">Line</th>' + //11
													'<th class="text-center d-none" style="width: 70px;" aria-controls="table_LCL">Mã ĐVị</th>' + //12
													'<th class="d-none" aria-controls="table_LCL">Giá 20FL</th>' + //13
													'<th class="d-none" aria-controls="table_LCL">Giá 20GP</th>' + //14
													'<th class="d-none" aria-controls="table_LCL">Giá 20OT</th>' + //15
													'<th class="d-none" aria-controls="table_LCL">Giá 20RF</th>' + //16
													'<th class="d-none" aria-controls="table_LCL">Giá 20TK</th>' + //17
													'<th class="d-none" aria-controls="table_LCL">Giá 40FL</th>' + //18
													'<th class="d-none" aria-controls="table_LCL">Giá 40GP</th>' + //19
													'<th class="d-none" aria-controls="table_LCL">Giá 40HFL</th>' + //20
													'<th class="d-none" aria-controls="table_LCL">Giá 40HOT</th>' + //21
													'<th class="d-none" aria-controls="table_LCL">Giá 40HQ</th>' + //22
													'<th class="d-none" aria-controls="table_LCL">Giá 40OT</th>' + //23
													'<th class="d-none" aria-controls="table_LCL">Giá 40RF</th>' + //24
													'<th class="d-none" aria-controls="table_LCL">Giá 40TK</th>' + //25
													'<th class="d-none" aria-controls="table_LCL">Giá 45HQ</th>' + //26
													'<th class="d-none" aria-controls="table_LCL">Mã nơi đi</th>' + //27
													'<th class="d-none" aria-controls="table_LCL">Tên nơi đi</th>' + //28
													'<th class="d-none" aria-controls="table_LCL">Mã nơi đến</th>' + //29
													'<th class="d-none" aria-controls="table_LCL">Tên nơi đến</th>' + //30
													'<th class="d-none" aria-controls="table_LCL">Ngày đi</th>' + //31
													'<th class="d-none" aria-controls="table_LCL">Ngày đến</th>' + //32
													'<th class="d-none" aria-controls="table_LCL">Ngày hiệu lực</th>' + //33		
													'<th class="d-none" aria-controls="table_LCL">Tỷ giá</th>' + //34	
													'<th class="d-none" aria-controls="table_LCL">Mã ngoại tệ</th>' + //35		
													'<th class="d-none" aria-controls="table_LCL">Mã KH</th>' + //36	
													'<th class="d-none" aria-controls="table_LCL">Tên KH</th>' + //37			
													'<th class="d-none" aria-controls="table_LCL">Ngày Ct</th>' + //38		
													'<th class="d-none" aria-controls="table_LCL">Trạng thái</th>' + //39													
												'</tr>' +
												'<tr>' +
													'<td colspan="8">Không có kết quả!</td>' +
												'</tr>' + 
											'</tbody>';
									// get the current table body html as a string, and append the new row
									var html = document.getElementById("table_FCL").innerHTML + row;	
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
				e.preventDefault();
				document.getElementById("table_AIR").innerHTML = "";
				document.getElementById("table_LCL").innerHTML = "";
				document.getElementById("table_FCL").innerHTML = "";
				var m = new Memvars();	
				var p = window.location.href.toString();
				p = p.substring(0, p.indexOf("Main/")) + 'AppService/EService.asmx/' + "GetData";//GetValue		
				var controller = "st_loading_qoute_master_LCL";
				var str = "success";
                //str = ($('#multi-cong').val()).toString();
				var cangDi, cangDen, tgDi, tgDen, timeNow, tTrLuong, tTyKhoi;
                cangDi = ($('#fq_fromLCL').val()).toString();
                cangDen = ($('#fq_toLCL').val()).toString();
                tgDi = $('#cf-FromLCL').val().toString();
                tgDen = $('#cf-ToLCL').val().toString();
				tTrLuong = $('#fq_weightLCL').val().toString();
                tTyKhoi = $('#fq_volumeLCL').val().toString();
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
				m.val('ifreight','I', parseInt(checkLCL));
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
								var id, line, unitId;
								if ((msg.d).length > 0) {
									for (let item of msg.d) {
										/*Table row*/								
										row += 	'<tr class="rowEditData d-inline-flex">' +
													'<td class="text-center d-none" style="width: 100px;">'+item.ma_nt+'</td>' + //0
													'<td class="text-center d-none" style="width: 70px;">'+item.ma_phi+'</td>' + //1
													'<td class="text-center d-inline-block" style="width: 120px;">'+item.ds_ngay+'</td>' + //2
													'<td class="text-center d-inline-block" style="width: 120px;">'+item.so_ngay_vc+'</td>' + //3
													'<td class="text-center d-inline-block" style="width: 100px;">'+item.ma_kh+'</td>' + //4
													'<td class="text-center d-inline-block" style="width: 150px;">'+item.so_ct+'</td>' + //5
													'<td class="text-center d-inline-block" style="width: 150px;">'+item.t_tien_cuoc+'</td>' + //6
													'<td class="text-center d-inline-block" style="width: 150px;">'+item.t_tien_xuat+'</td>' + //7
													'<td class="text-center d-inline-block" style="width: 150px;">'+item.t_tien_tong+'</td>' + //8
													'<td class="text-center d-inline-block" style="width: 350px;">'+item.dien_giai+'</td>' + //9
													'<td class="text-center d-none" style="width: 50px;">'+item.id+'</td>' + //10
													'<td class="text-center d-none" style="width: 70px;">'+item.line+'</td>' + //11
													'<td class="text-center d-none" style="width: 70px;">'+item.unit_id+'</td>' + //12
													'<td class="d-none">'+item.gia_20FL+'</td>' + //13
													'<td class="d-none">'+item.gia_20GP+'</td>' + //14
													'<td class="d-none">'+item.gia_20OT+'</td>' + //15
													'<td class="d-none">'+item.gia_20RF+'</td>' + //16
													'<td class="d-none">'+item.gia_20TK+'</td>' + //17
													'<td class="d-none">'+item.gia_40FL+'</td>' + //18
													'<td class="d-none">'+item.gia_40GP+'</td>' + //19
													'<td class="d-none">'+item.gia_40HFL+'</td>' + //20
													'<td class="d-none">'+item.gia_40HOT+'</td>' + //21
													'<td class="d-none">'+item.gia_40HQ+'</td>' + //22
													'<td class="d-none">'+item.gia_40OT+'</td>' + //23
													'<td class="d-none">'+item.gia_40RF+'</td>' + //24
													'<td class="d-none">'+item.gia_40TK+'</td>' + //25
													'<td class="d-none">'+item.gia_45HQ+'</td>' + //26
													'<td class="d-none">'+item.ma_noi_di+'</td>' + //27
													'<td class="d-none">'+item.ten_noi_di+'</td>' + //28
													'<td class="d-none">'+item.ma_noi_den+'</td>' + //29
													'<td class="d-none">'+item.ten_noi_den+'</td>' + //30	
													'<td class="d-none">'+item.ngay_hl+'</td>' + //31
													'<td class="d-none">'+item.ngay_hld+'</td>' + //32
													'<td class="d-none">'+item.ngay_ct+'</td>' + //33
													'<td class="d-none">'+item.ty_gia+'</td>' + //34		
													'<td class="d-none">'+item.ma_nt+'</td>' + //35			
													'<td class="d-none">'+item.ma_kh+'</td>' + //36		
													'<td class="d-none">'+item.ten_kh+'</td>' + //37		
													'<td class="d-none">'+item.ngay_ct+'</td>' + //38	
													'<td class="d-none">'+item.status+'</td>' + //39													
												'</tr>';				
									};
																				

									var text = 	'<tbody class="BI_tablebody">' +
													'<tr class="BI_tablehead d-inline-flex">' +
														'<th class="text-center d-none" style="width: 100px;" aria-controls="table_LCL">Ngoại tệ</th>' + //0
														'<th class="text-center d-none" style="width: 70px;" aria-controls="table_LCL">Phí</th>' + //1
														'<th class="text-center d-inline-block" style="width: 120px;" aria-controls="table_LCL">Danh sách ngày</th>' + //2
														'<th class="text-center d-inline-block" style="width: 120px;" aria-controls="table_LCL">Số ngày VC</th>' + //3
														'<th class="text-center d-inline-block" style="width: 100px;" aria-controls="table_LCL">Khách hàng</th>' + //4
														'<th class="text-center d-inline-block" style="width: 150px;" class="" aria-controls="table_LCL">Số chứng từ</th>' + //5
														'<th class="text-center d-inline-block" style="width: 150px;" aria-controls="table_LCL">Tiền cước</th>' + //6
														'<th class="text-center d-inline-block" style="width: 150px;" aria-controls="table_LCL">Tiền xuất</th>' + //7
														'<th class="text-center d-inline-block" style="width: 150px;" aria-controls="table_LCL">Tổng tiền</th>' + //8
														'<th class="text-center d-inline-block" style="width: 350px;" aria-controls="table_LCL">Diễn giải</th>' + //9
														'<th class="text-center d-none" style="width: 50px;" aria-controls="table_LCL">Id</th>' + //10
														'<th class="text-center d-none" style="width: 70px;" aria-controls="table_LCL">Line</th>' + //11
														'<th class="text-center d-none" style="width: 70px;" aria-controls="table_LCL">Mã ĐVị</th>' + //12
														'<th class="d-none" aria-controls="table_LCL">Giá 20FL</th>' + //13
														'<th class="d-none" aria-controls="table_LCL">Giá 20GP</th>' + //14
														'<th class="d-none" aria-controls="table_LCL">Giá 20OT</th>' + //15
														'<th class="d-none" aria-controls="table_LCL">Giá 20RF</th>' + //16
														'<th class="d-none" aria-controls="table_LCL">Giá 20TK</th>' + //17
														'<th class="d-none" aria-controls="table_LCL">Giá 40FL</th>' + //18
														'<th class="d-none" aria-controls="table_LCL">Giá 40GP</th>' + //19
														'<th class="d-none" aria-controls="table_LCL">Giá 40HFL</th>' + //20
														'<th class="d-none" aria-controls="table_LCL">Giá 40HOT</th>' + //21
														'<th class="d-none" aria-controls="table_LCL">Giá 40HQ</th>' + //22
														'<th class="d-none" aria-controls="table_LCL">Giá 40OT</th>' + //23
														'<th class="d-none" aria-controls="table_LCL">Giá 40RF</th>' + //24
														'<th class="d-none" aria-controls="table_LCL">Giá 40TK</th>' + //25
														'<th class="d-none" aria-controls="table_LCL">Giá 45HQ</th>' + //26
														'<th class="d-none" aria-controls="table_LCL">Mã nơi đi</th>' + //27
														'<th class="d-none" aria-controls="table_LCL">Tên nơi đi</th>' + //28
														'<th class="d-none" aria-controls="table_LCL">Mã nơi đến</th>' + //29
														'<th class="d-none" aria-controls="table_LCL">Tên nơi đến</th>' + //30
														'<th class="d-none" aria-controls="table_LCL">Ngày đi</th>' + //31
														'<th class="d-none" aria-controls="table_LCL">Ngày đến</th>' + //32
														'<th class="d-none" aria-controls="table_LCL">Ngày hiệu lực</th>' + //33		
														'<th class="d-none" aria-controls="table_LCL">Tỷ giá</th>' + //34	
														'<th class="d-none" aria-controls="table_LCL">Mã ngoại tệ</th>' + //35		
														'<th class="d-none" aria-controls="table_LCL">Mã KH</th>' + //36	
														'<th class="d-none" aria-controls="table_LCL">Tên KH</th>' + //37			
														'<th class="d-none" aria-controls="table_LCL">Ngày Ct</th>' + //38		
														'<th class="d-none" aria-controls="table_LCL">Trạng thái</th>' + //39													
													'</tr>' +
													row +
												'</tbody>';

									// get the current table body html as a string, and append the new row
									var html = document.getElementById("table_LCL").innerHTML + text;
									// set the table body to the new html code
									document.getElementById("table_LCL").innerHTML = html;
									// show row data to be edited or view single row
									$(".rowEditData").click(function() {
										var m = new Memvars();	
										var p = window.location.href.toString();
										p = p.substring(0, p.indexOf("Main/")) + 'AppService/EService.asmx/' + "GetData";//GetValue		
										var controller = "st_loading_qoute_detail_LCL";

										
										m.val('ngay_ct1', 'C', tgDi);
										m.val('ngay_ct2','C', tgDen);
										m.val('ngay_ct','C', timeNow);
										m.val('ma_noi_di','C', cangDi);
										m.val('ma_noi_den','C', cangDen);
										m.val('id','I', parseInt($(this).find('td').eq(10).html()));
										m.val('line','I', parseInt($(this).find('td').eq(11).html()));
										m.val('unit_id','I', parseInt($(this).find('td').eq(12).html()));
										m.val('t_trong_luong','I', parseInt(tTrLuong));
										m.val('t_ty_khoi','I', parseFloat(tTyKhoi));
										m.val('ma_ngv','I', parseInt(checkLCL));
										
										
										var date = new Date(parseInt(($(this).find('td').eq(38).html()).substr(6))); 
										var datehl = new Date(parseInt(($(this).find('td').eq(31).html()).substr(6)));
										var datehld = new Date(parseInt(($(this).find('td').eq(32).html()).substr(6)));
										var datect = new Date(parseInt(($(this).find('td').eq(33).html()).substr(6)));
										var trangThai = ($(this).find('td').eq(33).html() == "5") ? "Lập báo giá" : "Hoàn tất";
										
										html = "<div id='editableTableDiv'>" +
													"<div class='form-group mb-2 col-12 text-right'>" +
														"<input type='button' class='btn btn-sm btn-danger' value='X' onclick='closeOverlay()'>" + 													
													"</div>" +
													"<div class='form-group col-12 d-inline-flex'>" +
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Mã khách hàng:</label>" + 															
														"</div>" +
														"<div class='col-1-5'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(36).html() + "'>" + 															
														"</div>" +
														"<div class='col-6'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(37).html() + "'>" + 
														"</div>"+														
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Số c/từ:</label>" + 															
														"</div>" +
														"<div class='col-1-5'>" +															
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(5).html() + "'>" +
														"</div>" +
													"</div>" +
													"<div class='form-group col-12 d-inline-flex'>" +
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Mã nơi đến:</label>" + 														
														"</div>"+
														"<div class='col-1-5'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(27).html() + "'>" +										
														"</div>"+
														"<div class='col-6'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(28).html() + "'>" + 
														"</div>" +	
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Ngày c/từ:</label>" + 
														"</div>" +	
														"<div class='col-1-5'>" +
															"<input type='text' class='form-control' value='"+ datect.toLocaleDateString('en-GB') + "'>" + 																																						
														"</div>" +	
													"</div>" + 	
													"<div class='form-group col-12 d-inline-flex'>" +	
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Mã nơi đến:</label>" + 															
														"</div>" +
														"<div class='col-1-5'>" +															
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(29).html() + "'>" +
														"</div>" +
														"<div class='col-6'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(30).html() + "'>" + 
														"</div>"+
														"<div class='col-1'>" +
															"<label class='editRowLabel'>Tỷ giá:</label>" + 															
														"</div>" +	
														"<div class='col-1'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(34).html() + "'>" + 																													
														"</div>" +	
														"<div class='col-1'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(35).html() + "'>" +
														"</div>" +	
													"</div>" + 
													"<div class='form-group col-12 d-inline-flex'>" +
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Tổng trọng:</label>" + 
														"</div>"+
														"<div class='col-3'>" + 
															"<input type='text' class='form-control' value='"+ tTrLuong + "'>" +
														"</div>"+
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Tổng khối:</label>" + 
														"</div>"+
														"<div class='col-3'>" + 
															"<input type='text' class='form-control' value='"+ tTyKhoi + "'>" +
														"</div>"+
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Trạng thái:</label>" + 
														"</div>"+
														"<div class='col-1-5'>" +
															"<input type='text' class='form-control' value='"+ trangThai + "'>" +
														"</div>"+
													"</div>" +
													"<div class='form-group col-12 d-inline-flex'>" +
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Lịch vận chuyển:</label>" + 															
														"</div>"+
														"<div class='col-1-5'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(2).html() + "'>" +
														"</div>"+
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Hiệu lực từ/đến:</label>" + 															
														"</div>" +	
														"<div class='col-2'>" +
															"<input type='text' class='form-control' value='"+ datehl.toLocaleDateString('en-GB') + "'>" + 																										
														"</div>" +
														"<div class='col-2'>" +
															"<input type='text' class='form-control' value='"+ datehld.toLocaleDateString('en-GB') + "'>" +
														"</div>" +	
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Loại hàng hóa:</label>" + 															
														"</div>" +														
														"<div class='col-2'>" +
															"<input type='text' class='form-control' value='"+ titleCheckLCL + "'>" +
														"</div>" +
													"</div>" +
													"<div class='form-group col-12 d-inline-flex'>" +
														"<div class='col-3'>" +
															"<label class='editRowLabel'>Thời gian v/chuyển (ngày):</label>" + 
														"</div>"+
														"<div class='col-1-5'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(3).html() + "'>" +
														"</div>"+
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Diễn giải:</label>" + 
														"</div>"+
														"<div class='col-6'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(9).html() + "'>" +
														"</div>"+
													"</div>";
										
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
												var rows = "";
												console.log(msg.d);
												var i = 1;
												for (var item of (msg.d)) {
													var loai_phi = (item.ma_dk_phi == "1") ? "Cước vận chuyển" : (item.ma_dk_phi == "2") ? "Phí nhập khẩu" : "Phí xuất khẩu";
													rows += "<tr class='d-inline-flex'>" +
																"<td class='text-center d-inline-block' style='width: 50px;'>"+i+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.ma_phi+"</td>" +
																"<td class='text-center d-inline-block' style='width: 300px;'>"+item.ten_phi+"</td>" +
																"<td class='text-center d-none' style='width: 150px;'>"+item.ten_cong+"</td>" +
																"<td class='text-center d-inline-block' style='width: 150px;'>"+ loai_phi + "</td>" +
																"<td class='text-center d-inline-block' style='width: 70px;'>"+item.ma_dvt+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.so_luong+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.gia_nt1+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.tien_nt1+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.gia_nt2+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.tien_nt2+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.ma_nt+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.ty_gia+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.tien1+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.tien2+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.thue_suat+"</td>" +
																"<td class='text-center d-inline-block' style='width: 150px;'>"+item.tt_nt+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.tien_ln+"</td>" +
																"<td class='text-center d-inline-block' style='width: 200px;'></td>" +
															"</tr>";
													i++;
												}
												
												html = html + 
													"<div class='form-group col-12'>" +
														"<div class='table-responsive col-12'>" +
															"<table class='table_LCL table table-condensed table-striped fixed_header' id='myTable_LCL'>" +
																"<tbody>" +
																	"<tr class='BI_tablehead d-inline-flex'>" +
																		"<th class='text-center d-inline-block' style='width: 50px;'>STT</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Mã phí</th>" +
																		"<th class='text-center d-inline-block' style='width: 300px;'>Tên phí</th>" +
																		"<th class='text-center d-none' style='width: 150px;'>Container</th>" +
																		"<th class='text-center d-inline-block' style='width: 150px;'>Loại phí</th>" +
																		"<th class='text-center d-inline-block' style='width: 70px;'>Đơn vị</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Số lượng</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Giá mua</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Tiền mua</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Giá bán</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Tiền bán</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Mã NT</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Tỷ giá</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Chi phí</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Doanh thu</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>VAT(%)</th>" +
																		"<th class='text-center d-inline-block' style='width: 150px;'>Tổng cộng</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Lợi nhuận</th>" +
																		"<th class='text-center d-inline-block' style='width: 200px;'>Diễn giải</th>" +
																	"</tr>" +
																	rows +
																"</tbody>" +
															"</table>" +
														"</div>" +
													"</div>" +
													"<div class='form-group col-12 text-right'>" +									
														"<input type='button' class='btn btn-sm btn-success' value='Lưu báo giá' onclick='saveNewRowData()'>" + 
													"</div>" +
												"</div>";
												$("#pageOverlay").html(html).show();
												openOverlay();
												saveNewRowData = function () {
													console.log($('#editableTableDiv').find('input').eq(0).val()); 
													console.log($('#editableTableDiv').find('input').eq(1).val()); //makh
													console.log($('#editableTableDiv').find('input').eq(2).val()); //ten kh
													console.log($('#editableTableDiv').find('input').eq(3).val()); //soct
													console.log($('#editableTableDiv').find('input').eq(4).val()); //ma noi di
													console.log($('#editableTableDiv').find('input').eq(5).val()); //ten noi di
													console.log($('#editableTableDiv').find('input').eq(6).val()); //ngay ct
													console.log($('#editableTableDiv').find('input').eq(7).val()); //ma noi den
													console.log($('#editableTableDiv').find('input').eq(8).val()); //ten noi den
													console.log($('#editableTableDiv').find('input').eq(9).val()); //ty gia
													console.log($('#editableTableDiv').find('input').eq(10).val()); //ten ngoai te
													console.log($('#editableTableDiv').find('input').eq(11).val()); //tong trọng lượng
													console.log($('#editableTableDiv').find('input').eq(12).val()); //tổng tỷ khối
													console.log($('#editableTableDiv').find('input').eq(13).val()); //status
													console.log($('#editableTableDiv').find('input').eq(14).val()); //ngày vận chuyển
													console.log($('#editableTableDiv').find('input').eq(15).val()); //ngày hiệu lực
													console.log($('#editableTableDiv').find('input').eq(16).val()); //ngày hết hiệu lực
													console.log($('#editableTableDiv').find('input').eq(17).val()); //loại hàng hóa
													console.log($('#editableTableDiv').find('input').eq(18).val()); //ngày vc
													console.log($('#editableTableDiv').find('input').eq(19).val()); //dien giải
													for ( let [i,row] of [...myTable_LCL.rows].entries() ) 
													{
														for( let [j,cell] of [...myTable_LCL.cells].entries() ) 
														{
														   console.log(`[${i},${j}] = ${cell.innerText}`)
														}
													}
												}
											}
										});							
												
									});
									/*
									$(document).on('click', '#editableTableDiv input', function() {
										$("#pageOverlay").hide();
									})
									*/
								} else {
									var row = 	'<tbody class="BI_tablebody">' +
													'<tr class="BI_tablehead d-inline-flex">' +
														'<th class="text-center d-none" style="width: 100px;" aria-controls="table_LCL">Ngoại tệ</th>' + //0
														'<th class="text-center d-none" style="width: 70px;" aria-controls="table_LCL">Phí</th>' + //1
														'<th class="text-center d-inline-block" style="width: 120px;" aria-controls="table_LCL">Danh sách ngày</th>' + //2
														'<th class="text-center d-inline-block" style="width: 120px;" aria-controls="table_LCL">Số ngày VC</th>' + //3
														'<th class="text-center d-inline-block" style="width: 100px;" aria-controls="table_LCL">Khách hàng</th>' + //4
														'<th class="text-center d-inline-block" style="width: 150px;" class="" aria-controls="table_LCL">Số chứng từ</th>' + //5
														'<th class="text-center d-inline-block" style="width: 150px;" aria-controls="table_LCL">Tiền cước</th>' + //6
														'<th class="text-center d-inline-block" style="width: 150px;" aria-controls="table_LCL">Tiền xuất</th>' + //7
														'<th class="text-center d-inline-block" style="width: 150px;" aria-controls="table_LCL">Tổng tiền</th>' + //8
														'<th class="text-center d-inline-block" style="width: 350px;" aria-controls="table_LCL">Diễn giải</th>' + //9
														'<th class="text-center d-none" style="width: 50px;" aria-controls="table_LCL">Id</th>' + //10
														'<th class="text-center d-none" style="width: 70px;" aria-controls="table_LCL">Line</th>' + //11
														'<th class="text-center d-none" style="width: 70px;" aria-controls="table_LCL">Mã ĐVị</th>' + //12
														'<th class="d-none" aria-controls="table_LCL">Giá 20FL</th>' + //13
														'<th class="d-none" aria-controls="table_LCL">Giá 20GP</th>' + //14
														'<th class="d-none" aria-controls="table_LCL">Giá 20OT</th>' + //15
														'<th class="d-none" aria-controls="table_LCL">Giá 20RF</th>' + //16
														'<th class="d-none" aria-controls="table_LCL">Giá 20TK</th>' + //17
														'<th class="d-none" aria-controls="table_LCL">Giá 40FL</th>' + //18
														'<th class="d-none" aria-controls="table_LCL">Giá 40GP</th>' + //19
														'<th class="d-none" aria-controls="table_LCL">Giá 40HFL</th>' + //20
														'<th class="d-none" aria-controls="table_LCL">Giá 40HOT</th>' + //21
														'<th class="d-none" aria-controls="table_LCL">Giá 40HQ</th>' + //22
														'<th class="d-none" aria-controls="table_LCL">Giá 40OT</th>' + //23
														'<th class="d-none" aria-controls="table_LCL">Giá 40RF</th>' + //24
														'<th class="d-none" aria-controls="table_LCL">Giá 40TK</th>' + //25
														'<th class="d-none" aria-controls="table_LCL">Giá 45HQ</th>' + //26
														'<th class="d-none" aria-controls="table_LCL">Mã nơi đi</th>' + //27
														'<th class="d-none" aria-controls="table_LCL">Tên nơi đi</th>' + //28
														'<th class="d-none" aria-controls="table_LCL">Mã nơi đến</th>' + //29
														'<th class="d-none" aria-controls="table_LCL">Tên nơi đến</th>' + //30
														'<th class="d-none" aria-controls="table_LCL">Ngày đi</th>' + //31
														'<th class="d-none" aria-controls="table_LCL">Ngày đến</th>' + //32
														'<th class="d-none" aria-controls="table_LCL">Ngày hiệu lực</th>' + //33		
														'<th class="d-none" aria-controls="table_LCL">Tỷ giá</th>' + //34	
														'<th class="d-none" aria-controls="table_LCL">Mã ngoại tệ</th>' + //35		
														'<th class="d-none" aria-controls="table_LCL">Mã KH</th>' + //36	
														'<th class="d-none" aria-controls="table_LCL">Tên KH</th>' + //37			
														'<th class="d-none" aria-controls="table_LCL">Ngày Ct</th>' + //38		
														'<th class="d-none" aria-controls="table_LCL">Trạng thái</th>' + //39													
													'</tr>' +
													'<tr>' +
														'<td colspan="8">Không có kết quả!</td>' +
													'</tr>' + 
												'</tbody>';
									// get the current table body html as a string, and append the new row
									var html = document.getElementById("table_LCL").innerHTML + row;	
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
				e.preventDefault();
				document.getElementById("table_AIR").innerHTML = "";
				document.getElementById("table_LCL").innerHTML = "";
				document.getElementById("table_FCL").innerHTML = "";
				var m = new Memvars();	
				var p = window.location.href.toString();
				p = p.substring(0, p.indexOf("Main/")) + 'AppService/EService.asmx/' + "GetData";//GetValue		
				var controller = "st_loading_qoute_master_AIR";
				var str = "success";
                //str = ($('#multi-cong').val()).toString();
				var cangDi, cangDen, tgDi, tgDen, timeNow, tTrLuong, tTyKhoi;
                cangDi = ($('#fq_fromAIR').val()).toString();
                cangDen = ($('#fq_toAIR').val()).toString();
                tgDi = $('#cf-FromAIR').val().toString();
                tgDen = $('#cf-ToAIR').val().toString();
				var curDate = new Date();
				var curDay = curDate.getDate();
				var curMonth = curDate.getMonth() + 1;
				var curYear = curDate.getFullYear();
				tTrLuong = $('#fq_weightAIR').val().toString();
                tTyKhoi = $('#fq_volumeAIR').val().toString();
				timeNow = (curMonth + "/" + curDay + "/" + curYear).toString();
				m.val('ngay_ct1', 'C', tgDi);
				m.val('ngay_ct2','C', tgDen);
				m.val('ngay_ct','C', timeNow);
				m.val('ma_noi_di','C', cangDi);
				m.val('ma_noi_den','C', cangDen);
				m.val('t_tong_trong','I', parseInt(tTrLuong));
				m.val('ifreight','I', parseInt(checkAIR));

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
								var id, line, unitId;
								if ((msg.d).length > 0) {
									for (let item of msg.d) {
										/*Table row*/			
										var ds_ngay = (item.ds_ngay == "") ? "Chưa có" : item.ds_ngay;										
										row += 	'<tr class="rowEditData d-inline-flex">' +
													'<td class="text-center d-none" style="width: 100px;">'+item.ma_nt+'</td>' + //0
													'<td class="text-center d-none" style="width: 70px;">'+item.ma_phi+'</td>' + //1
													'<td class="text-center d-inline-block" style="width: 120px;">'+ds_ngay+'</td>' + //2
													'<td class="text-center d-inline-block" style="width: 120px;">'+item.so_ngay_vc+'</td>' + //3
													'<td class="text-center d-inline-block" style="width: 100px;">'+item.ma_kh+'</td>' + //4
													'<td class="text-center d-inline-block" style="width: 150px;">'+item.so_ct+'</td>' + //5
													'<td class="text-center d-inline-block" style="width: 150px;">'+item.t_tien_cuoc+'</td>' + //6
													'<td class="text-center d-inline-block" style="width: 150px;">'+item.t_tien_xuat+'</td>' + //7
													'<td class="text-center d-inline-block" style="width: 150px;">'+item.t_tien_tong+'</td>' + //8
													'<td class="text-center d-inline-block" style="width: 350px;">'+item.dien_giai+'</td>' + //9
													'<td class="text-center d-none" style="width: 50px;">'+item.id+'</td>' + //10
													'<td class="text-center d-none" style="width: 70px;">'+item.line+'</td>' + //11
													'<td class="text-center d-none" style="width: 70px;">'+item.unit_id+'</td>' + //12
													'<td class="d-none">'+item.gia_20FL+'</td>' + //13
													'<td class="d-none">'+item.gia_20GP+'</td>' + //14
													'<td class="d-none">'+item.gia_20OT+'</td>' + //15
													'<td class="d-none">'+item.gia_20RF+'</td>' + //16
													'<td class="d-none">'+item.gia_20TK+'</td>' + //17
													'<td class="d-none">'+item.gia_40FL+'</td>' + //18
													'<td class="d-none">'+item.gia_40GP+'</td>' + //19
													'<td class="d-none">'+item.gia_40HFL+'</td>' + //20
													'<td class="d-none">'+item.gia_40HOT+'</td>' + //21
													'<td class="d-none">'+item.gia_40HQ+'</td>' + //22
													'<td class="d-none">'+item.gia_40OT+'</td>' + //23
													'<td class="d-none">'+item.gia_40RF+'</td>' + //24
													'<td class="d-none">'+item.gia_40TK+'</td>' + //25
													'<td class="d-none">'+item.gia_45HQ+'</td>' + //26
													'<td class="d-none">'+item.ma_noi_di+'</td>' + //27
													'<td class="d-none">'+item.ten_noi_di+'</td>' + //28
													'<td class="d-none">'+item.ma_noi_den+'</td>' + //29
													'<td class="d-none">'+item.ten_noi_den+'</td>' + //30	
													'<td class="d-none">'+item.ngay_hl+'</td>' + //31
													'<td class="d-none">'+item.ngay_hld+'</td>' + //32
													'<td class="d-none">'+item.ngay_ct+'</td>' + //33
													'<td class="d-none">'+item.ty_gia+'</td>' + //34		
													'<td class="d-none">'+item.ma_nt+'</td>' + //35			
													'<td class="d-none">'+item.ma_kh+'</td>' + //36		
													'<td class="d-none">'+item.ten_kh+'</td>' + //37		
													'<td class="d-none">'+item.ngay_ct+'</td>' + //38	
													'<td class="d-none">'+item.status+'</td>' + //39													
												'</tr>';				
									};
																				

									var text = 	'<tbody class="BI_tablebody">' +
													'<tr class="BI_tablehead d-inline-flex">' +
														'<th class="text-center d-none" style="width: 100px;" aria-controls="table_AIR">Ngoại tệ</th>' + //0
														'<th class="text-center d-none" style="width: 70px;" aria-controls="table_AIR">Phí</th>' + //1
														'<th class="text-center d-inline-block" style="width: 120px;" aria-controls="table_AIR">Danh sách ngày</th>' + //2
														'<th class="text-center d-inline-block" style="width: 120px;" aria-controls="table_AIR">Số ngày VC</th>' + //3
														'<th class="text-center d-inline-block" style="width: 100px;" aria-controls="table_AIR">Khách hàng</th>' + //4
														'<th class="text-center d-inline-block" style="width: 150px;" class="" aria-controls="table_AIR">Số chứng từ</th>' + //5
														'<th class="text-center d-inline-block" style="width: 150px;" aria-controls="table_AIR">Tiền cước</th>' + //6
														'<th class="text-center d-inline-block" style="width: 150px;" aria-controls="table_AIR">Tiền xuất</th>' + //7
														'<th class="text-center d-inline-block" style="width: 150px;" aria-controls="table_AIR">Tổng tiền</th>' + //8
														'<th class="text-center d-inline-block" style="width: 350px;" aria-controls="table_AIR">Diễn giải</th>' + //9
														'<th class="text-center d-none" style="width: 50px;" aria-controls="table_AIR">Id</th>' + //10
														'<th class="text-center d-none" style="width: 70px;" aria-controls="table_AIR">Line</th>' + //11
														'<th class="text-center d-none" style="width: 70px;" aria-controls="table_AIR">Mã ĐVị</th>' + //12
														'<th class="d-none" aria-controls="table_AIR">Giá 20FL</th>' + //13
														'<th class="d-none" aria-controls="table_AIR">Giá 20GP</th>' + //14
														'<th class="d-none" aria-controls="table_AIR">Giá 20OT</th>' + //15
														'<th class="d-none" aria-controls="table_AIR">Giá 20RF</th>' + //16
														'<th class="d-none" aria-controls="table_AIR">Giá 20TK</th>' + //17
														'<th class="d-none" aria-controls="table_AIR">Giá 40FL</th>' + //18
														'<th class="d-none" aria-controls="table_AIR">Giá 40GP</th>' + //19
														'<th class="d-none" aria-controls="table_AIR">Giá 40HFL</th>' + //20
														'<th class="d-none" aria-controls="table_AIR">Giá 40HOT</th>' + //21
														'<th class="d-none" aria-controls="table_AIR">Giá 40HQ</th>' + //22
														'<th class="d-none" aria-controls="table_AIR">Giá 40OT</th>' + //23
														'<th class="d-none" aria-controls="table_AIR">Giá 40RF</th>' + //24
														'<th class="d-none" aria-controls="table_AIR">Giá 40TK</th>' + //25
														'<th class="d-none" aria-controls="table_AIR">Giá 45HQ</th>' + //26
														'<th class="d-none" aria-controls="table_AIR">Mã nơi đi</th>' + //27
														'<th class="d-none" aria-controls="table_AIR">Tên nơi đi</th>' + //28
														'<th class="d-none" aria-controls="table_AIR">Mã nơi đến</th>' + //29
														'<th class="d-none" aria-controls="table_AIR">Tên nơi đến</th>' + //30
														'<th class="d-none" aria-controls="table_AIR">Ngày đi</th>' + //31
														'<th class="d-none" aria-controls="table_AIR">Ngày đến</th>' + //32
														'<th class="d-none" aria-controls="table_AIR">Ngày hiệu lực</th>' + //33		
														'<th class="d-none" aria-controls="table_AIR">Tỷ giá</th>' + //34	
														'<th class="d-none" aria-controls="table_AIR">Mã ngoại tệ</th>' + //35		
														'<th class="d-none" aria-controls="table_AIR">Mã KH</th>' + //36	
														'<th class="d-none" aria-controls="table_AIR">Tên KH</th>' + //37			
														'<th class="d-none" aria-controls="table_AIR">Ngày Ct</th>' + //38		
														'<th class="d-none" aria-controls="table_AIR">Trạng thái</th>' + //39													
													'</tr>' +
													row +
												'</tbody>';

									// get the current table body html as a string, and append the new row
									var html = document.getElementById("table_AIR").innerHTML + text;
									// set the table body to the new html code
									document.getElementById("table_AIR").innerHTML = html;
									// show row data to be edited or view single row
									$(".rowEditData").click(function() {
										var m = new Memvars();	
										var p = window.location.href.toString();
										p = p.substring(0, p.indexOf("Main/")) + 'AppService/EService.asmx/' + "GetData";//GetValue		
										var controller = "st_loading_qoute_detail_AIR";

										
										m.val('ngay_ct1', 'C', tgDi);
										m.val('ngay_ct2','C', tgDen);
										m.val('ngay_ct','C', timeNow);
										m.val('ma_noi_di','C', cangDi);
										m.val('ma_noi_den','C', cangDen);
										m.val('id','I', parseInt($(this).find('td').eq(10).html()));
										m.val('line','I', parseInt($(this).find('td').eq(11).html()));
										m.val('unit_id','I', parseInt($(this).find('td').eq(12).html()));
										m.val('t_trong_luong','I', parseInt(tTrLuong));
										m.val('t_ty_khoi','I', parseFloat(tTyKhoi));
										m.val('ma_ngv','I', parseInt(checkAIR));
										
										
										var date = new Date(parseInt(($(this).find('td').eq(38).html()).substr(6))); 
										var datehl = new Date(parseInt(($(this).find('td').eq(31).html()).substr(6)));
										var datehld = new Date(parseInt(($(this).find('td').eq(32).html()).substr(6)));
										var datect = new Date(parseInt(($(this).find('td').eq(33).html()).substr(6)));
										var trangThai = ($(this).find('td').eq(33).html() == "5") ? "Lập báo giá" : "Hoàn tất";
										
										html = "<div id='editableTableDiv'>" +
													"<div class='form-group mb-2 col-12 text-right'>" +
														"<input type='button' class='btn btn-sm btn-danger' value='X' onclick='closeOverlay()'>" + 													
													"</div>" +
													"<div class='form-group col-12 d-inline-flex'>" +
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Mã khách hàng:</label>" + 															
														"</div>" +
														"<div class='col-1-5'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(36).html() + "'>" + 															
														"</div>" +
														"<div class='col-6'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(37).html() + "'>" + 
														"</div>"+														
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Số c/từ:</label>" + 															
														"</div>" +
														"<div class='col-1-5'>" +															
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(5).html() + "'>" +
														"</div>" +
													"</div>" +
													"<div class='form-group col-12 d-inline-flex'>" +
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Mã nơi đến:</label>" + 														
														"</div>"+
														"<div class='col-1-5'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(27).html() + "'>" +										
														"</div>"+
														"<div class='col-6'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(28).html() + "'>" + 
														"</div>" +	
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Ngày c/từ:</label>" + 
														"</div>" +	
														"<div class='col-1-5'>" +
															"<input type='text' class='form-control' value='"+ datect.toLocaleDateString('en-GB') + "'>" + 																																						
														"</div>" +	
													"</div>" + 	
													"<div class='form-group col-12 d-inline-flex'>" +	
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Mã nơi đến:</label>" + 															
														"</div>" +
														"<div class='col-1-5'>" +															
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(29).html() + "'>" +
														"</div>" +
														"<div class='col-6'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(30).html() + "'>" + 
														"</div>"+
														"<div class='col-1'>" +
															"<label class='editRowLabel'>Tỷ giá:</label>" + 															
														"</div>" +	
														"<div class='col-1'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(34).html() + "'>" + 																													
														"</div>" +	
														"<div class='col-1'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(35).html() + "'>" +
														"</div>" +	
													"</div>" + 
													"<div class='form-group col-12 d-inline-flex'>" +
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Tổng trọng:</label>" + 
														"</div>"+
														"<div class='col-3'>" + 
															"<input type='text' class='form-control' value='"+ tTrLuong + "'>" +
														"</div>"+
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Tổng khối:</label>" + 
														"</div>"+
														"<div class='col-3'>" + 
															"<input type='text' class='form-control' value='"+ tTyKhoi + "'>" +
														"</div>"+
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Trạng thái:</label>" + 
														"</div>"+
														"<div class='col-1-5'>" +
															"<input type='text' class='form-control' value='"+ trangThai + "'>" +
														"</div>"+
													"</div>" +
													"<div class='form-group col-12 d-inline-flex'>" +
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Lịch vận chuyển:</label>" + 															
														"</div>"+
														"<div class='col-1-5'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(2).html() + "'>" +
														"</div>"+
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Hiệu lực từ/đến:</label>" + 															
														"</div>" +	
														"<div class='col-2'>" +
															"<input type='text' class='form-control' value='"+ datehl.toLocaleDateString('en-GB') + "'>" + 																										
														"</div>" +
														"<div class='col-2'>" +
															"<input type='text' class='form-control' value='"+ datehld.toLocaleDateString('en-GB') + "'>" +
														"</div>" +	
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Loại hàng hóa:</label>" + 															
														"</div>" +														
														"<div class='col-2'>" +
															"<input type='text' class='form-control' value='"+ titleCheckAIR + "'>" +
														"</div>" +
													"</div>" +
													"<div class='form-group col-12 d-inline-flex'>" +
														"<div class='col-3'>" +
															"<label class='editRowLabel'>Thời gian v/chuyển (ngày):</label>" + 
														"</div>"+
														"<div class='col-1-5'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(3).html() + "'>" +
														"</div>"+
														"<div class='col-1-5'>" +
															"<label class='editRowLabel'>Diễn giải:</label>" + 
														"</div>"+
														"<div class='col-6'>" +
															"<input type='text' class='form-control' value='"+ $(this).find('td').eq(9).html() + "'>" +
														"</div>"+
													"</div>";
										
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
												var rows = "";
												console.log(msg.d);
												var i = 1;
												for (var item of (msg.d)) {
													var loai_phi = (item.ma_dk_phi == "1") ? "Cước vận chuyển" : (item.ma_dk_phi == "2") ? "Phí nhập khẩu" : "Phí xuất khẩu";
													
													rows += "<tr class='d-inline-flex'>" +
																"<td class='text-center d-inline-block' style='width: 50px;'>"+i+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.ma_phi+"</td>" +
																"<td class='text-center d-inline-block' style='width: 300px;'>"+item.ten_phi+"</td>" +
																"<td class='text-center d-none' style='width: 150px;'>"+item.ten_cong+"</td>" +
																"<td class='text-center d-inline-block' style='width: 150px;'>"+ loai_phi + "</td>" +
																"<td class='text-center d-inline-block' style='width: 70px;'>"+item.ma_dvt+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.so_luong+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.gia_nt1+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.tien_nt1+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.gia_nt2+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.tien_nt2+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.ma_nt+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.ty_gia+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.tien1+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.tien2+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.thue_suat+"</td>" +
																"<td class='text-center d-inline-block' style='width: 150px;'>"+item.tt_nt+"</td>" +
																"<td class='text-center d-inline-block' style='width: 100px;'>"+item.tien_ln+"</td>" +
																"<td class='text-center d-inline-block' style='width: 200px;'></td>" +
															"</tr>";
													i++;
												}
												
												html = html + 
													"<div class='form-group col-12'>" +
														"<div class='table-responsive col-12'>" +
															"<table class='table_AIR table table-condensed table-striped fixed_header'>" +
																"<tbody>" +
																	"<tr class='BI_tablehead d-inline-flex'>" +
																		"<th class='text-center d-inline-block' style='width: 50px;'>STT</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Mã phí</th>" +
																		"<th class='text-center d-inline-block' style='width: 300px;'>Tên phí</th>" +
																		"<th class='text-center d-none' style='width: 150px;'>Container</th>" +
																		"<th class='text-center d-inline-block' style='width: 150px;'>Loại phí</th>" +
																		"<th class='text-center d-inline-block' style='width: 70px;'>Đơn vị</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Số lượng</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Giá mua</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Tiền mua</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Giá bán</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Tiền bán</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Mã NT</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Tỷ giá</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Chi phí</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Doanh thu</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>VAT(%)</th>" +
																		"<th class='text-center d-inline-block' style='width: 150px;'>Tổng cộng</th>" +
																		"<th class='text-center d-inline-block' style='width: 100px;'>Lợi nhuận</th>" +
																		"<th class='text-center d-inline-block' style='width: 200px;'>Diễn giải</th>" +
																	"</tr>" +
																	rows +
																"</tbody>" +
															"</table>" +
														"</div>" +
													"</div>" +
													"<div class='form-group col-12 text-right'>" +									
														"<input type='button' class='btn btn-sm btn-success' value='Lưu báo giá' onclick='saveNewRowData()'>" + 
													"</div>" +
												"</div>";
												$("#pageOverlay").html(html).show();
												openOverlay();
												saveNewRowData = function () {
													console.log($('#editableTableDiv').find('input').eq(0).val()); 
													console.log($('#editableTableDiv').find('input').eq(1).val()); //makh
													console.log($('#editableTableDiv').find('input').eq(2).val()); //ten kh
													console.log($('#editableTableDiv').find('input').eq(3).val()); //soct
													console.log($('#editableTableDiv').find('input').eq(4).val()); //ma noi di
													console.log($('#editableTableDiv').find('input').eq(5).val()); //ten noi di
													console.log($('#editableTableDiv').find('input').eq(6).val()); //ngay ct
													console.log($('#editableTableDiv').find('input').eq(7).val()); //ma noi den
													console.log($('#editableTableDiv').find('input').eq(8).val()); //ten noi den
													console.log($('#editableTableDiv').find('input').eq(9).val()); //ty gia
													console.log($('#editableTableDiv').find('input').eq(10).val()); //ten ngoai te
													console.log($('#editableTableDiv').find('input').eq(11).val()); //tong trọng lượng
													console.log($('#editableTableDiv').find('input').eq(12).val()); //tổng tỷ khối
													console.log($('#editableTableDiv').find('input').eq(13).val()); //status
													console.log($('#editableTableDiv').find('input').eq(14).val()); //ngày vận chuyển
													console.log($('#editableTableDiv').find('input').eq(15).val()); //ngày hiệu lực
													console.log($('#editableTableDiv').find('input').eq(16).val()); //ngày hết hiệu lực
													console.log($('#editableTableDiv').find('input').eq(17).val()); //loại hàng hóa
													console.log($('#editableTableDiv').find('input').eq(18).val()); //ngày vc
													console.log($('#editableTableDiv').find('input').eq(19).val()); //dien giải
												}
											}
										});							
												
									});
									/*
									$(document).on('click', '#editableTableDiv input', function() {
										$("#pageOverlay").hide();
									})
									*/
								} else {
									var row = 	'<tbody class="BI_tablebody">' +
													'<tr class="BI_tablehead d-inline-flex">' +
														'<th class="text-center d-none" style="width: 100px;" aria-controls="table_AIR">Ngoại tệ</th>' + //0
														'<th class="text-center d-none" style="width: 70px;" aria-controls="table_AIR">Phí</th>' + //1
														'<th class="text-center d-inline-block" style="width: 120px;" aria-controls="table_AIR">Danh sách ngày</th>' + //2
														'<th class="text-center d-inline-block" style="width: 120px;" aria-controls="table_AIR">Số ngày VC</th>' + //3
														'<th class="text-center d-inline-block" style="width: 100px;" aria-controls="table_AIR">Khách hàng</th>' + //4
														'<th class="text-center d-inline-block" style="width: 150px;" class="" aria-controls="table_AIR">Số chứng từ</th>' + //5
														'<th class="text-center d-inline-block" style="width: 150px;" aria-controls="table_AIR">Tiền cước</th>' + //6
														'<th class="text-center d-inline-block" style="width: 150px;" aria-controls="table_AIR">Tiền xuất</th>' + //7
														'<th class="text-center d-inline-block" style="width: 150px;" aria-controls="table_AIR">Tổng tiền</th>' + //8
														'<th class="text-center d-inline-block" style="width: 350px;" aria-controls="table_AIR">Diễn giải</th>' + //9
														'<th class="text-center d-none" style="width: 50px;" aria-controls="table_AIR">Id</th>' + //10
														'<th class="text-center d-none" style="width: 70px;" aria-controls="table_AIR">Line</th>' + //11
														'<th class="text-center d-none" style="width: 70px;" aria-controls="table_AIR">Mã ĐVị</th>' + //12
														'<th class="d-none" aria-controls="table_AIR">Giá 20FL</th>' + //13
														'<th class="d-none" aria-controls="table_AIR">Giá 20GP</th>' + //14
														'<th class="d-none" aria-controls="table_AIR">Giá 20OT</th>' + //15
														'<th class="d-none" aria-controls="table_AIR">Giá 20RF</th>' + //16
														'<th class="d-none" aria-controls="table_AIR">Giá 20TK</th>' + //17
														'<th class="d-none" aria-controls="table_AIR">Giá 40FL</th>' + //18
														'<th class="d-none" aria-controls="table_AIR">Giá 40GP</th>' + //19
														'<th class="d-none" aria-controls="table_AIR">Giá 40HFL</th>' + //20
														'<th class="d-none" aria-controls="table_AIR">Giá 40HOT</th>' + //21
														'<th class="d-none" aria-controls="table_AIR">Giá 40HQ</th>' + //22
														'<th class="d-none" aria-controls="table_AIR">Giá 40OT</th>' + //23
														'<th class="d-none" aria-controls="table_AIR">Giá 40RF</th>' + //24
														'<th class="d-none" aria-controls="table_AIR">Giá 40TK</th>' + //25
														'<th class="d-none" aria-controls="table_AIR">Giá 45HQ</th>' + //26
														'<th class="d-none" aria-controls="table_AIR">Mã nơi đi</th>' + //27
														'<th class="d-none" aria-controls="table_AIR">Tên nơi đi</th>' + //28
														'<th class="d-none" aria-controls="table_AIR">Mã nơi đến</th>' + //29
														'<th class="d-none" aria-controls="table_AIR">Tên nơi đến</th>' + //30
														'<th class="d-none" aria-controls="table_AIR">Ngày đi</th>' + //31
														'<th class="d-none" aria-controls="table_AIR">Ngày đến</th>' + //32
														'<th class="d-none" aria-controls="table_AIR">Ngày hiệu lực</th>' + //33		
														'<th class="d-none" aria-controls="table_AIR">Tỷ giá</th>' + //34	
														'<th class="d-none" aria-controls="table_AIR">Mã ngoại tệ</th>' + //35		
														'<th class="d-none" aria-controls="table_AIR">Mã KH</th>' + //36	
														'<th class="d-none" aria-controls="table_AIR">Tên KH</th>' + //37			
														'<th class="d-none" aria-controls="table_AIR">Ngày Ct</th>' + //38		
														'<th class="d-none" aria-controls="table_AIR">Trạng thái</th>' + //39													
													'</tr>' +
													'<tr>' +
														'<td colspan="8">Không có kết quả!</td>' +
													'</tr>' + 
												'</tbody>';
									// get the current table body html as a string, and append the new row
									var html = document.getElementById("table_AIR").innerHTML + row;	
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
						row += "<option value='"+item.ma_cong+"'>" + item.ten_cong + "</option>";

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
	</script>

</body>
</html>