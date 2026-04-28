<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Main/Main.Master" Inherits="ISWIFT.Sys.Web.APage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="server">
	<link rel="stylesheet" href="../Js/script/leaflet.css" />
	<link rel="stylesheet" href="../Js/script/magnific-popup.css" />
	<link rel="stylesheet" href="../Js/script/all.min.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
	<style>
	@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet');
	@import url(https://fonts.googleapis.com/css?family=Dosis:700);
	/* ------------- Responsive left side menu with pin state ------------- */
		#content .f-f-verdana * {
			font-family: Verdana !important;
			font-size: 11px !important;
			white-space: nowrap;
		}
		#mapwrap {
			width: 100%;
			height: 100%;
			border: 1px solid #333;
			position: relative;
			overflow: hidden;
		}

		#toolbar {
			background: rgba(255, 255, 255, 1);
			opacity: .6;
			width: 200px;
			height: 100%;
			position: absolute;
			left: -200px;
			z-index: 500;
			transition: .5s left;
			padding: 20px;
			box-sizing: border-box;
		}

		#toolbar.open {
			left: 0;
			opacity: .95;
		}

		#toolbar .hamburger {
			height: 100px;
			width: 25px;
			background: #000;
			box-shadow: 1px 0 2px rgba(0, 0, 0, .3);
			position: absolute;
			right: -25px;
			top: 40%;
			border-top-right-radius: 3px;
			border-bottom-right-radius: 3px;
			border: 1px solid #333;
			cursor: pointer;
			display: none;
		}

		.hamburger span {
			color: #fff;
			display: inline-block;
			position: relative;
			transform: rotate(90deg);
			top: 39px;
			left: -21px;
		}

		#tourstops {
			overflow-y: scroll;
			max-height: 95vh;
		}

		#toolbar ul {
			margin: 0;
			padding: 0;
		}

		#toolbar li {
			list-style-type: none;
			border-bottom: 1px solid #ccc;
			padding: 6px 3px;
			cursor: pointer;
		}

		#toolbar li:hover {
			color: #666;
		}

		.notify-icon span{
			display: inline-block;
			border: 1px solid orange;
			border-radius: 50%;
			height: 24px; 
			width: 24px;
			animation: pulse .6s 4 forwards;
			transform-origin: center center;
		}
		@keyframes pulse{
		  0%{
			transform: scale(5.5);
			opacity: .2;
		  }
		  50%{
			opacity: .8;
		  }
		  100%{
			transform: scale(.1);
			opacity: 1;
		  }
		}
	
		.cssMap {
		    border: 1px solid #000000;
			height: 100%; 
			width: 100%;
		}
		.i-upmap {
			position: absolute;
			z-index: 500;
			top: 0;
			left: 0;
			font-family: Verdana !important;
			font-size: 11px !important;
			color: #ffffff;
			/*background-color: #ddd;*/
		}
		.i-downmap {
			position: absolute;
			top: 17px;
			left: 0;
			right: 40px;
			z-index: 500;
			font-family: Verdana !important;
			font-size: 11px !important;
			color: #ffffff;
			/*background-color: #ddd;*/
		}
		.cssMap p:hover {
			background-color: #ddd;
			color: black;
		}
		
		.p-upmap {
			position: absolute;
			z-index: 500;
			font-family: Verdana !important;
			font-size: 11px !important;
			right: 5px;
			bottom: 5px;
		}
		.dp-none {
			display: none !important;
		}
		.dp-block {
			display: block !important;
		}
		.search-table {
			color: var(--text-color);
			background-color: var(--card-bg-color);
			padding: 10px;
		}

		
		/*Tooltip hover marker*/
		.leaflet-popup-content {
			box-sizing: border-box !important;
			font-family: Verdana;
			font-size: 11px;
			margin: 20px;

		}
		.leaflet-popup-content-wrapper, .leaflet-popup-tip {
			background-color: var(--card-bg-color);
		}
		.leaflet-container a.leaflet-popup-close-button {
			color: var(--switch-on-color);
		}
		.leaflet-popup-content {
			width: 360px;
		}
		.leaflet-tooltip-left:before {
			right: 0;
			margin-right: -12px;
			border-left-color: rgba(0, 0, 0, 0.4);
		}
		.leaflet-tooltip-right:before {
			left: 0;
			margin-left: -12px;
			border-right-color: rgba(0, 0, 0, 0.4);
			}
		.leaflet-tooltip-own {
			z-index: 9999999;
			font-family: Verdana !important;
			font-size: 11px !important;
			position: absolute;
			padding: 8px;
			background-color: rgba(255, 255, 255, 1);
			border: 0px solid #000;
			color: #000000;
			white-space: nowrap;
			-webkit-user-select: none;
			-moz-user-select: none;
			-ms-user-select: none;
			user-select: none;
			pointer-events: none;
			box-shadow: 0 1px 3px rgba(0,0,0,0.4);
		}
		
		.car-blue {
			width: 32px;
			height: 32px;
			z-index: 1;
			background: url(../Js/script/images/car-color/container-blue32.png) no-repeat center center rgba(255,255,255,0); 
		}
		
		.car-water {
			width: 32px;
			height: 32px;
			z-index: 1;
			background: url(../Js/script/images/car-color/container-water32.png) no-repeat center center rgba(255,255,255,0); 
		}
		
		.car-yellow {
			width: 32px;
			height: 32px;
			z-index: 1;
			background: url(../Js/script/images/car-color/container-yellow32.png) no-repeat center center rgba(255,255,255,0); 
		}
		
		.car-purple {
			width: 32px;
			height: 32px;
			background: url(../Js/script/images/car-color/container-purple32.png) no-repeat center center rgba(255,255,255,0);	
		}

		.car-green {
			width: 32px;
			height: 32px;
			background: url(../Js/script/images/car-color/container-green32.png) no-repeat center center rgba(255,255,255,0);	
		}

		.car-red {
			width: 32px;
			height: 32px;
			background: url(../Js/script/images/car-color/container-red32.png) no-repeat center center rgba(255,255,255,0);	
		}

		.car-black {
			width: 32px;
			height: 32px;
			background: url(../Js/script/images/car-color/container-black32.png) no-repeat center center rgba(255,255,255,0);	
		}

		.wrapper {
			display: inline-flex;
			list-style: none;
		}

		.wrapper .icon {
			position: relative;
			background: #ffffff;
			border-radius: 50%;
			padding: 15px;
			margin: 10px;
			width: 50px;
			height: 50px;
			font-size: 11px;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
			box-shadow: 0 10px 10px rgba(0, 0, 0, 0.1);
			cursor: pointer;
			transition: all 0.2s cubic-bezier(0.68, -0.55, 0.265, 1.55);
		}

		.wrapper .box {
			position: relative;
			background: #ffffff;
			border-radius: 10%;
			padding: 15px;
			margin: 10px;
			width: 50px;
			height: 50px;
			font-size: 11px;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
			box-shadow: 0 10px 10px rgba(0, 0, 0, 0.1);
			cursor: pointer;
			transition: all 0.2s cubic-bezier(0.68, -0.55, 0.265, 1.55);
		}

		.wrapper .tab {
			position: relative;
			background: #ffffff;
			//border-radius: 10%;
			border-right: 1px solid #000;
			padding: 15px;
			//margin: 10px;
			width: 120px;
			height: 50px;
			font-size: 11px;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
			box-shadow: 0 10px 10px rgba(0, 0, 0, 0.1);
			cursor: pointer;
			transition: all 0.2s cubic-bezier(0.68, -0.55, 0.265, 1.55);
		}

		.wrapper .button {
			position: relative;
			background: #ffffff;
			border-radius: 10%;
			padding: 5px;
			margin: 5px;
			width: 35px;
			height: 35px;
			font-size: 11px;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
			box-shadow: 0 10px 10px rgba(0, 0, 0, 0.1);
			cursor: pointer;
			transition: all 0.2s cubic-bezier(0.68, -0.55, 0.265, 1.55);
		}

		.wrapper .tooltip {
			position: absolute;
			top: 0;
			min-width: 65px;
			font-size: 11px;
			background: #ffffff;
			color: #ffffff;
			padding: 5px 8px;
			border-radius: 5px;
			box-shadow: 0 10px 10px rgba(0, 0, 0, 0.1);
			opacity: 0;
			pointer-events: none;
			transition: all 0.3s cubic-bezier(0.68, -0.55, 0.265, 1.55);
		}

		.wrapper .tooltip::before {
			position: absolute;
			content: "";
			height: 8px;
			width: 8px;
			background: #ffffff;
			bottom: -3px;
			left: 50%;
			transform: translate(-50%) rotate(45deg);
			transition: all 0.3s cubic-bezier(0.68, -0.55, 0.265, 1.55);
		}

		.wrapper .icon:hover .tooltip {
			top: -45px;
			opacity: 1;
			visibility: visible;
			pointer-events: auto;
		}

		.wrapper .icon:hover span,
		.wrapper .icon:hover .tooltip {
			text-shadow: 0px -1px 0px rgba(0, 0, 0, 0.1);
		}

		.wrapper .box:hover .tooltip {
			top: -45px;
			opacity: 1;
			visibility: visible;
			pointer-events: auto;
		}

		.wrapper .box:hover span,
		.wrapper .box:hover .tooltip {
			text-shadow: 0px -1px 0px rgba(0, 0, 0, 0.1);
		}

		.wrapper .facebook:hover,
		.wrapper .facebook:hover .tooltip,
		.wrapper .facebook:hover .tooltip::before {
			background: #1877F2;
			color: #ffffff;
		}

		.wrapper .twitter:hover,
		.wrapper .twitter:hover .tooltip,
		.wrapper .twitter:hover .tooltip::before {
			background: #1DA1F2;
			color: #ffffff;
		}

		.wrapper .instagram:hover,
		.wrapper .instagram:hover .tooltip,
		.wrapper .instagram:hover .tooltip::before {
			background: #E4405F;
			color: #ffffff;
		}

		.wrapper .github:hover,
		.wrapper .github:hover .tooltip,
		.wrapper .github:hover .tooltip::before {
			background: #778899;
			color: #ffffff;
		}

		.wrapper .youtube:hover,
		.wrapper .youtube:hover .tooltip,
		.wrapper .youtube:hover .tooltip::before {
			background: #CD201F;
			color: #ffffff;
		}

		.wrapper .qchat:hover,
		.wrapper .qchat:hover .tooltip,
		.wrapper .qchat:hover .tooltip::before {
			background: #006400;
			color: #ffffff;
		}

		.wrapper .kakao:hover,
		.wrapper .kakao:hover .tooltip,
		.wrapper .kakao:hover .tooltip::before {
			background: #FF8C00;
			color: #ffffff;
		}

		.list-menu-horizontal {
			width: 400px;
		}
		
		/* container */
		.responsive-two-columns {
			display:flex;
			flex-wrap:wrap;
			border-top: 1px solid;
			border-left: 1px solid
		}

		/* columns */
		.responsive-two-columns > * {
			width:100%;
			padding:1rem;
			border-bottom: 1px solid;
			border-right: 1px solid;
		}
		
		.left_col{
			background-color: var(--left-col-color);
		}
		.right_col{
			background-color: var(--right-col-color);
		}

		/* tablet breakpoint */
		@media (min-width:768px) {
			.responsive-two-columns > * {
				width:50%;
				border-bottom: 1px solid;
				border-right: 1px solid;
			}
		}
		
		/*Boostrap tabs*/
		.panel-heading-nav {
		  border-bottom: 0;
		  padding: 10px 0 0;
		}

		.panel-heading-nav .nav {
		  padding-left: 10px;
		  padding-right: 10px;
		}
		
		
		/* side menu */
		.wui-side-menu {
			position: absolute;
			top: 0;
			left: 0;
			bottom: 0;
			width: 300px;
			height: 100%;
			overflow-y: auto;
			backface-visibility: hidden;
			z-index: 3;
			-webkit-transform: translateX(-100%);
			transform: translateX(-100%);
			-webkit-transition: webkit-transform 220ms ease-in-out;
			transition: transform 220ms ease-in-out;
		}
		.wui-side-menu.open {
			-webkit-transform: translateX(0);
			transform: translateX(0);
		}
		.wui-side-menu-header {
			display: flex;
			justify-content: space-between;
			align-items: center;
			height: 12%;
		}
		.wui-side-menu.open ~ .content .side-menu-trigger {
			display: none;
		}
		.wui-side-menu.open {
			box-shadow: 2px 0 16px 0 rgba(0, 0, 0, 0.3);
		}
		.wui-side-menu .header,
		.wui-content-header {
			color: var(--text-color);
			background-color: var(--body-bg-color);
			position: absolute;
			left: 0;
			z-index: 99999;
			vertical-align: baseline;
			line-height: 50px;
			opacity: 0.8;
		}
		.wui-content-main {
			width: 100%;
			position: relative;
			height: 100%;
		}
		.wui-side-menu-pin-trigger,
		.wui-side-menu-trigger {
			width: 50px;
			height: 50px;
			text-align: center;
			display: inline-block;
			font-size: 18px;
			line-height: 50px;
		}

		.wui-side-menu .wui-side-menu-pin-trigger {
			display: none;
			float: right;
		}
		.wui-side-menu .wui-side-menu-pin-trigger i {
			-webkit-transition: all 0.22s ease-out;
			-moz-transition: all 0.22s ease-out;
			-o-transition: all 0.22s ease-out;
			transition: all 0.22s ease-out;
		}
		.wui-side-menu .wui-side-menu-items {
			overflow-y: auto;
			height: calc(100% - 50px);
		}
		.wui-side-menu .wui-side-menu-item {
			display: block;
			width: 100%;
			padding: 15px 12px;
			border-left: 5px solid transparent;
		}
		.wui-side-menu .wui-side-menu-item {
			height: 50px;
		}
		.wui-side-menu .wui-side-menu-item i.box-ico {
			margin-right: 4px;
		}

		/* overlay */
		.wui-overlay {
			position: absolute;
			top: 0;
			left: 0;
			right: 0;
			bottom: 0;
			z-index: 2;
			background-color: rgba(0, 0, 0, 0.1);
			opacity: 0.5;
			display: none;
		}
		.wui-side-menu.open ~ .wui-overlay,
		.wui-overlay.active {
			display: block;
		}

		/* content */
		.wui-content {
			z-index: 1;
			position: absolute;
			top: 0;
			right: 0;
			bottom: 0;
			left: 0;
			-webkit-transition: all 0.22s ease-out;
			-moz-transition: all 0.22s ease-out;
			-o-transition: all 0.22s ease-out;
			transition: all 0.22s ease-out;
		}
		.wui-content .wui-side-menu-trigger {
			margin-left: -10px;
		}
		@media only screen and (min-width: 768px) {
			.wui-side-menu .wui-side-menu-pin-trigger {
				display: inline-block;
			}
			.wui-side-menu.open {
				box-shadow: initial;
			}
			.wui-side-menu.open ~ .wui-overlay {
				display: none;
			}
			.wui-side-menu.open ~ .wui-content .wui-side-menu-trigger {
				display: none;
			}
			.wui-side-menu.open:not(.pinned) ~ .wui-overlay {
				display: block;
			}
			.wui-side-menu.open:not(.pinned) {
				box-shadow: 2px 0 16px 0 rgba(0, 0, 0, 0.3);
			}
			.wui-side-menu.open.pinned ~ .wui-content {
				left: 300px;
			}
		}
		ul.wui-side-menu-items {
			list-style: none;
			padding: 0;
		}

		.wui-side-menu {
			background-color: var(--nav-bg-color);
			color: #ddd;
		}
		.wui-side-menu .wui-side-menu-trigger:hover,
		.wui-side-menu-item:hover,
		.wui-side-menu-pin-trigger:hover {
			color: #fff;
			background-color: #383f45;
		}

		.wui-side-menu a {
			color: var(--a-bg-color);
			text-decoration: none;
		}
		.wui-side-menu .wui-side-menu-item.active {
			border-left-color: #158439;
			color: #158439;
		}
		.wui-content a {
			color: var(--text-color);
		}

		/* demo */
		*,
		*:after,
		*:before {
			-webkit-box-sizing: border-box;
			-moz-box-sizing: border-box;
			box-sizing: border-box;
		}
		#events {
			background-color: #ccc;
		}
		
		
		/* ------------- Light / Dark Mode Toggle ------------- */		
		/*** Light Mode Theme ***/
		:root, [data-theme="default"] {
			--header-table-color: #1d1e22;
			--left-col-color: #DCDCDC;
			--right-col-color: #F8F8FF;
			--a-bg-color: #ddd;
			--nav-bg-color: #1d1e22;
			--body-bg-color: #1d1e22;
			--scroll-light-color: #060606;
			--scroll-dark-color: #1d1e22;
			--card-bg-color: #545363;
			--box-shadow-color: rgb(18, 18, 19, 0.2);
			--text-color: #efefef;
			--toggler-color: #444352;
			--switch-on-color: #fff;
			--switch-off-color: #ccc;
		}
		/* Dark Mode Theme */
		[data-theme="dark"] {
			--header-table-color: #FFFAF0;
			--left-col-color: #fafafa;
			--right-col-color: #ffffff;
			--a-bg-color: #000000;;
			--nav-bg-color: #f4f4f4;
			--body-bg-color: #f6f6f8;
			--scroll-light-color: #e4e5e5;
			--scroll-dark-color: #f6f6f8;
			--card-bg-color: #fff;
			--box-shadow-color: rgba(0,0,0,0.2);
			--text-color: #333;
			--switch-on-color: #444352;
			--switch-off-color: #ccc;
			--toggler-color: #fff;
		}

		* {
			transition: color .45s ease-in;
			/*font-family: 'Poppins', sans-serif;*/		
		}
		
		.wui-side-menu {			
			color: var(--a-bg-color);
		}


		body {
			display: flex;
			height: 100vh;
			width: 100vw;
			overflow: hidden;
			margin: 0;
		}

		.main-container {
			height: 100%;
			width: 100%;
			padding: 0;
			display: block;
			background-color: var(--body-bg-color);
			transition: background-color .45s ease-in;
		}

		.inner-wrapper {
		  width: 500px;
		  margin: auto;
		}

		.controller-row {
		  text-align: right;
		}

		/*** Card ***/
		.card {
		  margin: auto;
		  width: 300px;
		  padding: 10px 15px;
		  box-shadow: 2px 3px 4px 1px var(--box-shadow-color);
		  box-shadow-color: var(--box-shadow-color);
		  background-color: var(--card-bg-color);
		  transition: background-color .45s ease-in,
					  box-shadow-color .45s ease-in;
		}
		.card__header,
		.card__body {
		  padding: 0 10px;
		}
		.__title {
		  font-size: 20px;
		  font-weight: 600;
		}
		.__detail {
		  font-size: 18px;
		}

		/*
		* Toggle switch credit from W3School
		* https://www.w3schools.com/howto/howto_css_switch.asp
		*/
		/* The switch - the box around the slider */
		.switch {
			position: relative;
			display: inline-block;
			width: 55px;
			height: 20px;
		}
		/* Hide default HTML checkbox */
		.switch input {
		  opacity: 0;
		  width: 0;
		  height: 0;
		}
		/* The slider */
		.slider {
		  position: absolute;
		  cursor: pointer;
		  top: 0;
		  left: 0;
		  right: 0;
		  bottom: 0;
		  background-color: var(--switch-off-color);
		  -webkit-transition: .4s;
		  transition: .4s;
		}
		.slider:before {
		  position: absolute;
		  content: "";
		  height: 12px;
		  width: 12px;
		  left: 4px;
		  bottom: 4px;
		  background-color: var(--toggler-color);
		  -webkit-transition: .4s;
		  transition: .4s;
		}
		input:checked + .slider {
		  background-color: var(--switch-on-color);
		}
		input:focus + .slider {
		  box-shadow: 0 0 1px var(--switch-on-color);
		}
		input:checked + .slider:before {
		  -webkit-transform: translateX(26px);
		  -ms-transform: translateX(26px);
		  transform: translateX(26px);
		}
		/* Rounded sliders */
		.slider.round {
		  border-radius: 20px;
		}
		.slider.round:before {
		  border-radius: 50%;
		}


		/*-------------------- Tabs Navigation UI ----------------------*/
		.tab-wrap {
			transition: 0.3s box-shadow ease;
			border-radius: 6px;
			max-width: 100%;
			display: flex;
			flex-wrap: wrap;
			position: relative;
			list-style: none;
			height: 88%;
			/*margin: 30px 0 40px 0;*/
			/*box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);*/
			/*background-color: #fff;*/
		}
		.tab-wrap:hover {
			/*box-shadow: 0 12px 23px rgba(0, 0, 0, 0.23), 0 10px 10px rgba(0, 0, 0, 0.19);*/
		}

		.tab {
			display: none;
		}
		.tab:checked:nth-of-type(1) ~ .tab__content:nth-of-type(1) {
			opacity: 1;
			transition: 0.5s opacity ease-in, 0.8s transform ease;
			position: relative;
			top: 0;
			z-index: 100;
			transform: translateY(0px);
			text-shadow: 0 0 0;
		}
		.tab:checked:nth-of-type(2) ~ .tab__content:nth-of-type(2) {
			opacity: 1;
			transition: 0.5s opacity ease-in, 0.8s transform ease;
			position: relative;
			top: 0;
			z-index: 100;
			transform: translateY(0px);
			text-shadow: 0 0 0;
		}
		.tab:checked:nth-of-type(3) ~ .tab__content:nth-of-type(3) {
			opacity: 1;
			transition: 0.5s opacity ease-in, 0.8s transform ease;
			position: relative;
			top: 0;
			z-index: 100;
			transform: translateY(0px);
			text-shadow: 0 0 0;
		}	
		.tab:checked:nth-of-type(4) ~ .tab__content:nth-of-type(4) {
			opacity: 1;
			transition: 0.5s opacity ease-in, 0.8s transform ease;
			position: relative;
			top: 0;
			z-index: 100;
			transform: translateY(0px);
			text-shadow: 0 0 0;
		}
		.tab:checked:nth-of-type(5) ~ .tab__content:nth-of-type(5) {
			opacity: 1;
			transition: 0.5s opacity ease-in, 0.8s transform ease;
			position: relative;
			top: 0;
			z-index: 100;
			transform: translateY(0px);
			text-shadow: 0 0 0;
		}
		.tab:first-of-type:not(:last-of-type) + label {
			border-top-right-radius: 0;
			border-bottom-right-radius: 0;
		}
		.tab:not(:first-of-type):not(:last-of-type) + label {
			border-radius: 0;
		}
		.tab:last-of-type:not(:first-of-type) + label {
			border-top-left-radius: 0;
			border-bottom-left-radius: 0;
		}
		.tab:checked + label {
			cursor: default;
			color: #1E90FF;
			/*background-color: #fff;*/
			/*box-shadow: 0 -1px 0 #fff inset;*/
		}
		.tab:checked + label:hover {
			/*box-shadow: 0 -1px 0 #fff inset;*/
			/*background-color: #fff;*/
		}
		.tab + label {	
			height: 5%;
			font-family: Verdana;		
		    font-weight: bold;
		    font-size: 16px;
			border-radius: 6px 6px 0 0;
			cursor: pointer;
			display: block;
			text-decoration: none;
			color: var(--text-color);
			flex-grow: 3;
			text-align: center;
			-webkit-user-select: none;
			-moz-user-select: none;
			-ms-user-select: none;
			user-select: none;
			text-align: center;
			transition: 0.3s background-color ease, 0.3s box-shadow ease;
			box-sizing: border-box;
			/*height: 50px;*/
			/*padding: 15px;*/
			/*box-shadow: 0 -1px 0 #eee inset;*/
			/*background-color: #f2f2f2;*/
		}
		.tab + label:hover {
			color: #1E90FF;
			/*background-color: #f9f9f9;*/
			/*box-shadow: 0 1px 0 #f4f4f4 inset;*/
		}
		.tab__content {
			padding: 10px 10px;
			background-color: transparent;
			position: absolute;
			width: 100%;
			z-index: -1;
			opacity: 0;
			left: 0;
			transform: translateY(-3px);
			border-radius: 6px;
			height: 90%;
		}
		
		
		/*--------------------------------- Table -------------------------------------*/
		.tab__content .custom-table tr > *:first-child {
			position: -webkit-sticky;
			position: sticky;
			left: 0;
			min-width: 6.5rem;
			z-index: 1;
			border-right: 1px solid #ddd;
			border-bottom: 1px solid #ddd;
			border-top: none;
			color: var(--text-color);
		}

		.tab__content .custom-table tr > *:first-child::before {
			content: "";
			position: absolute;
			top: 0; 
			right: 0; 
			bottom: 0; 
			left: 0;
			z-index: -1;
			background-color: var(--header-table-color);
			color: var(--text-color);
		}
		
		.tab__content .custom-table tr:nth-child(odd) > td {
			background-color: var(--nav-bg-color);
			color: var(--text-color);
		}
		.tab__content .custom-table tr:nth-child(even) > td {
			background-color: var(--nav-bg-color);
			color: var(--text-color);
		}
		.table > thead:first-child > tr:first-child > th {
		    color: #1E90FF;
			font-weight: bold;
			background-color: var(--header-table-color);
			/*color: var(--text-color);*/
		}
		.table > tbody > tr:hover > td:not(:first-child) {
			background-color: var(--switch-off-color) !important;
		}
		
		.tab__content .custom-table {
			max-height: 400px;
			margin: 8px 0;
		}
		
		.tab__content th, .tab__content td {
			padding: 8px 16px;
			width: 160px;
			overflow: hidden;
			text-overflow: ellipsis;
			white-space: nowrap;
			text-align: center;
			cursor: pointer;
			border: 1px solid #ddd;
		}
		
		
		/*--------------------------------- Scrollbar CSS ---------------------------------*/
		/* ===== Scrollbar CSS ===== */
		/* Firefox */
		.wui-side-menu * {
			scrollbar-width: auto;
			scrollbar-color: #666b7a #ffffff;
		}

		/* Chrome, Edge, and Safari */
		.wui-side-menu *::-webkit-scrollbar {
			width: 15px;
		}

		.wui-side-menu *::-webkit-scrollbar-track {
			background: var(--scroll-light-color);
		}

		.wui-side-menu *::-webkit-scrollbar-thumb {
			background-color: #666b7a;
			border-radius: 0px;
			border: 3px solid var(--switch-off-color);
		}
				
		/* ===== Scrollbar CSS ===== */
		/* Firefox */
		.wui-content {
			scrollbar-width: auto;
			scrollbar-color: #666b7a #ffffff;
		}

		/* Chrome, Edge, and Safari */
		.wui-content *::-webkit-scrollbar {
			width: 15px;
		}

		.wui-content *::-webkit-scrollbar-track {
			background: var(--scroll-dark-color);
		}

		.wui-content *::-webkit-scrollbar-thumb {
			background-color: #666b7a;
			border-radius: 0px;
			border: 3px solid var(--switch-off-color);
		}
		
		/*--------------------------------- Shopping Cart - Add and Remove ---------------------------------*/
		.item-wrap {
			display: flex;
			height: 100%;
			justify-content: space-between;
			padding: 10px;
			font-family: Arial, Helvetica, sans-serif;
			border: solid 1px #cccccc;
			border-radius: 6px;
		}

		.item-wrap .item-block {
			width: 100%;
		}
		
		.item-header {
			width: 60%;
			display: flex;
			padding: 0;
		}

		.item {
			background: var(--card-bg-color);
			margin: 0 0 10px 0;
			padding: 10px;
			border-radius: 6px;
			position: relative;
		}

		.cart-wrap .add {
		  height: 35px;
		  min-width: 150px;
		  background: green;
		  cursor: pointer;
		  border-radius: 6px;
		  border: none;
		  color: #ffffff;
		  font-size: 14px;
		}

		.cart-wrap .removeItem {
		  height: 35px;
		  min-width: 150px;
		  background: red;
		  cursor: pointer;
		  border-radius: 6px;
		  border: none;
		  color: #ffffff;
		  font-size: 14px;
		}

		#cartItems .itemDetails {
		  border-bottom: solid 1px #cccccc;
		  margin-bottom: 10px;
		  padding-bottom: 10px;
		}

		.overflow .add {
			position: absolute;
			right: 0;
			top: 0;
			padding: 6px 12px;
			cursor: pointer;
			font-size: 34px;
			background-color: rgba(217, 138, 58, 1);
			color: #fff;
			width: 35px;
			height: 35px;
			line-height: 25px;
			margin: 5px;
			border-radius: 6px;
		}

		.item-detail h4 {
			line-height: 32px;
			margin: 0;
			font-size: 20px;
		}

		.item-detail .price {
			justify-content: space-around;
			display: flex;
			margin: 15px 0 0 0;
			font-size: 23px;
			color: #02aa3c;
			font-weight: 700;
		}

		.item-detail .price:before {
			display: none;
			content: "-";
			left: 30%;
			top: 0;
			position: relative;
		}

		.heading h1 {
			margin: 0 0 15px 0;
			color: var(--text-color);
		}

		ol#list-item, section#list-item-weather {
			padding-left: 0;
			padding: 10px;
			border: solid 1px #cccccc;
			/*
			-webkit-column-count: 3;
			-moz-column-count: 3;
			column-count: 3;
			*/
		}

		ol#list-item li, section#list-item-weather div {
			display: inline-block;
			position: relative;
			margin: 5px 0;
		}

		ol#list-item li .removeli, section#list-item-weather div .removeli-weather {
			position: absolute;
			right: 5px;
			top: 3px;
			z-index: 500;
			background: red;
			border: none;
			padding: 5px 10px;
			border-radius: 6px;
			cursor: pointer;
			color: #fff;
			font-size: 12px;
			font-weight: 600;
			margin: 5px;
		}
		
		.total-text {
			color: var(--text-color);
		}

		#cart-items .total-text, #cart-items-weather .total-text {
			font-size: 20px;
			font-weight: 400;
			text-align: right;
			color: var(--text-color);
		}

		#cart-items .total-text span, #cart-items-weather .total-text span {
			font-weight: 700;
		}
		
		
		/*------------- Change brightness -------------*/
		.container {
			background: url("https://free4kwallpapers.com/uploads/originals/2020/07/19/night-city-k-wallpaper.jpg") no-repeat center;
			background-size: cover;
			min-height: 100%;
			display: flex;
			align-items: center;
			justify-content: center;
		}

		.brightness-box {
			width: 80%;
			height: 60px;
			background: var(--nav-bg-color);
			border-radius: 8px;
			padding: 0 5px;
			display: flex;
			align-items: center;
			justify-content: space-between;
		}

		.brightness-box i {
			margin: 0 10px;
		}

		#range {
			width: 52%;
			height: 3px;
			/*tira a barra do input range*/
			-webkit-appearance: none;
			background: #0a85ff;
			outline: none;
		}

		#range::-webkit-slider-thumb {
			-webkit-appearance: none;
			background: #333;
			width: 22px;
			height: 22px;
			border-radius: 50%;
			cursor: pointer;
		}

		/*------------- Perfect Range slider with value and progress colour -------------*/
		/*Range style*/
		.range-slider__range {
			display: inline-block !important;
			appearance: none;
			width: calc(100% - (104px)) !important;
			height: 10px;
			border-radius: 5px;
			background: #d7dcdf; 
			outline: none;
			padding: 0;
			margin: 0;
		}

		/*Range black ⚫ thumb*/
		.range-slider__range::-webkit-slider-thumb {
		  appearance: none;
		  width: 20px;
		  height: 20px;
		  border-radius: 100%;
		  background: #2c3e50;
		  cursor: pointer;
		  transition: background 0.15s ease-in-out;
		}

		/*On hover change colour of black thumb into green 🟢 and scale size*/
		.range-slider__range::-webkit-slider-thumb:hover {
		  transform: scale(1.1);
		  background: #1abc9c;}

		.range-slider__range:active::-webkit-slider-thumb {
		  transform: scale(1.1);
		  background: #1abc9c;}

		/*Range current value*/
		.range-slider__value {
		  display: inline-block;
		  position: relative;
		  width: 91px;
		  color: #fff;
		  line-height: 20px;
		  text-align: center;
		  border-radius: 3px;
		  background: #2c3e50;
		  padding: 5px 10px;
		  margin-left: 8px;
		}

		.range-slider__value:after {
		  position: absolute;
		  top: 8px;
		  left: -7px;
		  width: 0;
		  height: 0;
		  border-top: 7px solid transparent;
		  border-right: 7px solid #2c3e50;
		  border-bottom: 7px solid transparent;
		  content: "";
		}


		/*----------------------- Inline popup ----------------------*/
		.white-popup {
			position: relative;
			background: #FFF;
			padding: 20px;
			width:auto;
			max-width: 500px;
			margin: 20px auto;
		}
	
	
		/*----------------------- Tooltip Redes Sociales HTML5/CSS3 ----------------------*/		
		.wrapper-icon {
			display: inline-flex;
			position: absolute;
			left: 10px;
			bottom: 0;
		}

		.wrapper-icon .icon {
			position: relative;
			background-color: var(--card-bg-color);
			border-radius: 50%;
			padding: 10px;
			margin: 2px;
			width: 40px;
			height: 40px;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
			cursor: pointer;
			transition: all 0.2s cubic-bezier(0.68, -0.55, 0.265, 1.55);
		}

		.wrapper-icon .tooltip-icon {
		  position: absolute;
		  top: 0;
		  font-size: 14px;
		  background-color: #ffffff;
		  color: #ffffff;
		  padding: 5px 8px;
		  border-radius: 5px;
		  box-shadow: 0 10px 10px rgba(0, 0, 0, 0.1);
		  opacity: 0;
		  pointer-events: none;
		  transition: all 0.3s cubic-bezier(0.68, -0.55, 0.265, 1.55);
		}

		.wrapper-icon .tooltip-icon::before {
		  position: absolute;
		  content: "";
		  height: 8px;
		  width: 8px;
		  background-color: #ffffff;
		  bottom: -3px;
		  left: 50%;
		  transform: translate(-50%) rotate(45deg);
		  transition: all 0.3s cubic-bezier(0.68, -0.55, 0.265, 1.55);
		}

		.wrapper-icon .icon:hover .tooltip-icon {
			top: -45px;
			opacity: 1;
			visibility: visible;
			pointer-events: auto;
		}

		.wrapper-icon .icon:hover span,
		.wrapper-icon .icon:hover .tooltip-icon {
		  text-shadow: 0px -1px 0px rgba(0, 0, 0, 0.1);
		}

		.wrapper-icon .Github:hover,
		.wrapper-icon .Github:hover .tooltip-icon,
		.wrapper-icon .Github:hover .tooltip-icon::before {
		  background-color: #000000;
		  color: #ffffff;
		}

		.wrapper-icon .Twitch:hover,
		.wrapper-icon .Twitch:hover .tooltip-icon,
		.wrapper-icon .Twitch:hover .tooltip-icon::before {
		  background-color: #772ce8;
		  color: #ffffff;
		}

		.wrapper-icon .instagram:hover,
		.wrapper-icon .instagram:hover .tooltip-icon,
		.wrapper-icon .instagram:hover .tooltip-icon::before {
		  background-color: #e1306c;
		  color: #ffffff;
		}
		.wrapper-icon .youtube:hover,
		.wrapper-icon .youtube:hover .tooltip-icon,
		.wrapper-icon .youtube:hover .tooltip-icon::before {
		  background-color: #de463b;
		  color: #ffffff;
		}
		
		.wrapper-icon .kakaotalk:hover,
		.wrapper-icon .kakaotalk:hover .tooltip-icon,
		.wrapper-icon .kakaotalk:hover .tooltip-icon::before {
		  background-color: #de463b;
		  color: yellow;
		}
		
		.wrapper-icon .facebook:hover,
		.wrapper-icon .facebook:hover .tooltip-icon,
		.wrapper-icon .facebook:hover .tooltip-icon::before {
		  background-color: #de463b;
		  color: blue;
		}
		
		
		/*----------------------- Local Weather ----------------------*/		
		.city {
			font-size: 2rem;
			text-align: center;
			font-weight: bold;
		}

		#date {
			text-align: center;
			font-size: 1.5rem;
		}

		.Shell {
			border: 1px solid black;
			background-color: rgba(241, 246, 249, 0.89);
			margin: 3% 25% 4% 25%;
			margin-left: auto;
			margin-right: auto;
			width: 100%;
			border-radius: 10px;
			padding: 30px;
			display: flex;
			flex-direction: column;
			transform: scale(1);
		}

		#time {
			margin: -2.7% 0% 2.5% 0%;
			font-size: 1.5rem;
			text-align: center;
		}

		.Shell hr {
			width: 100%;
			border: 0;
			height: 1px;
			background: #333;
			margin: 3% 0% 3% 0%;
		}

		.Shell button {
		    margin: 10px auto;
			display: block;
			/*margin-left: 35%;*/
		}

		#fTemp {
			border-radius: 12px;
			box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
			padding: 16px 16px;
			font-weight: bold;
		}

		.well {
			font-size: 1.5rem;
			text-align: center;
			background-color: blue;
		}


		/*Card flex-wrap*/
		:root {
			--cardWidth: 33.333%;
			--cardHeight: 70%;
			--cardMargin: 16px;
		}
		.main-section {
			display: flex;
			justify-content: flex-start;
			flex-wrap: wrap;
			/*background: #bbb;*/
		}
		.card {
			width: var(--cardWidth);
			height: var(--cardHeight);		  
			border: 1px solid #ccc;
			border-radius: 8px;
			background: #fff;
			box-sizing: border-box;
			/*margin: var(--cardMargin);*/
		}
		
		* { -moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; }

		.wrapper-wap{
			overflow: hidden;
			border:10px solid goldenrod;    
		}

		.flexcontainer{
			display:flex !important;
			flex-wrap: wrap;
			justify-content: flex-start;
			margin-left: -1rem;
			margin-bottom:-1rem;
		}

		/* Some default styles to make each box visible */
		.box-wap {
			border: 1px solid #000000;
			color:white;
			text-align: center;
			text-shadow:4px 4px 0 rgba(0,0,0,0.1);
			padding:10px;
			margin-left:1rem;
			margin-bottom:1rem;
			background-color: #1E90FF;
		  }
		  
		  /* Colours for each box */
		  .box1-wap { background:#1abc9c;}
		  .box2-wap { background:#3498db;}
		  .box3-wap { background:#9b59b6;}
		  .box4-wap { background:#34495e;}
		  .box5-wap { background:#f1c40f;}
		  .box6-wap { background:#e67e22;}
		  .box7-wap { background:#e74c3c;}
		  .box8-wap { background:#bdc3c7;}
		  .box9-wap { background:#2ecc71;}
		  .box10-wap { background:#16a085;}
						 
		  .box-wap {
			width:calc(1/3*100% - 1rem);
		  }
		  
		  
		/*---------------------------- Increase/Decrease Input ------------------------*/
		.form-inputs {
			margin: 0 100px 0 0;
			text-align: center;
			/*width: 300px;*/
			/*padding-top: 50px;*/
		}

		.value-button {
			line-height: 0;
			display: inline-block;
			border: 1px solid #ddd;
			margin: 0px;
			width: 40px;
			height: 20px;
			text-align: center;
			vertical-align: middle;
			padding: 11px 0;
			background: #eee;
			-webkit-touch-callout: none;
			-webkit-user-select: none;
			-khtml-user-select: none;
			-moz-user-select: none;
			-ms-user-select: none;
			user-select: none;
		}

		.value-button:hover {
		  cursor: pointer;
		}

		.form-inputs #decreaseWidth, .form-inputs #decreaseHeight {
			font-weight: bold;
			color: red;
			margin-right: 4px;
			border-radius: 8px 0 0 8px;
		}

		.form-inputs #increaseWidth, .form-inputs #increaseHeight {
			font-weight: bold;
			color: green;
			margin-left: 4px;
			border-radius: 0 8px 8px 0;
		}

		.form-inputs #input-wrap {
		  margin: 0px;
		  padding: 0px;
		}

		input#numberWidth, input#numberHeight  {
			background-color: var(--body-bg-color);
			color: var(--text-color);
			text-align: center;
			border: 1px solid #ddd;
			margin: 0px;
			width: 50px;
			height: 40px;
		}

		input[type=number]::-webkit-inner-spin-button,
		input[type=number]::-webkit-outer-spin-button {
			-webkit-appearance: none;
			margin: 0;
		}
		
		
		/*Leftlet*/
		.map__marker {
		  background: #002147;
		  border-radius: 10px;
		  height: 10px;
		  position: relative;
		  width: 10px;
		}
		.map__marker::before {
		  -webkit-animation: blink 1s infinite ease-out;
				  animation: blink 1s infinite ease-out;
		  border-radius: 60px;
		  box-shadow: inset 0 0 0 1px #002147;
		  content: "";
		  height: 10px;
		  left: 50%;
		  opacity: 1;
		  position: absolute;
		  top: 50%;
		  transform: translate(-50%, -50%);
		  width: 10px;
		}

		@-webkit-keyframes blink {
		  100% {
			height: 30px;
			opacity: 0;
			width: 30px;
		  }
		}

		@keyframes blink {
		  100% {
			height: 30px;
			opacity: 0;
			width: 30px;
		  }
		}

	</style>
	
	<div id="content" data-theme="dark">
		<div class="wui-side-menu open pinned" data-wui-theme="light">
			<div class="wui-side-menu-header">
				<a href="#" class="wui-side-menu-trigger"><i class="fa fa-bars"></i></a>
				<div class="brightness-box">
					<label class="switch">
						<input id="toggler" type="checkbox">
						<span class="slider round"></span>
					</label>
					<i class="far fa-sun"></i>
					<input type="range" id="range" min="10" max="100" value="100">
					<i class="fas fa-sun"></i>
				</div>

				<a href="#" class="wui-side-menu-pin-trigger">
					<i class="fa fa-thumb-tack"></i>
				</a>			
			</div>
			
			<div class="tab-wrap">
			
				<!-- active tab on page load gets checked attribute -->
				<input type="radio" id="tab1" name="tabGroup1" class="tab" checked>
				<label for="tab1">Xe</label>

				<input type="radio" id="tab2" name="tabGroup1" class="tab">
				<label for="tab2">Kho</label>

				<input type="radio" id="tab3" name="tabGroup1" class="tab">
				<label for="tab3">Giám sát</label>

				<div class="tab__content">
					<input id="searchCar" type="text" class="form-control search-table f-f-verdana" placeholder="Nhập ......">
					
					<div class="table-responsive custom-table f-f-verdana">
						<table class="table" id="table-car">
							<!-- <caption>Fixed-width first column</caption> -->
							<thead>
								<tr>
									<th scope="col" style="width: 90px;">Mã xe</th>
									<th scope="col" style="width: 50px;">TT</th>
									<th scope="col" style="width: 50px;">#</th>
									<th scope="col" style="width: 100px;">Biển số xe</th>
									<th scope="col" style="width: 100px;">Điện thoại</th>
									<th scope="col" style="width: 100px;">CCCD</th>
									<th scope="col" style="width: 100px;">Đơn vị</th>
									<th scope="col" style="width: 400px;">Địa chỉ</th>
								</tr>
							</thead>
							<tbody id="CarData">	
							
							</tbody>
						</table>
					</div>
					<br />
					<div class="wrapper-icon f-f-verdana" id="wrap-list">
						<div class="icon instagram">
							<div class="tooltip-icon">Tổng xe</div>
							<span class="car-water">
								<p style="opacity: 0;">0</p>
							</span>
							<span id="status-total">
								<p>0</p>
							</span>
						</div>
						<div class="icon Twitch">
							<div class="tooltip-icon">Sẵn sàng</div>
							<span class="car-green">
								<p style="opacity: 0;">0</p>
							</span>
							<span id="status-1">
								<p>0</p>
							</span>
						</div>
						<div class="icon youtube">
							<div class="tooltip-icon">Hư hỏng</div>
							<span class="car-red">
								<p style="opacity: 0;">0</p>
							</span>
							<span id="status-5">
								<p>0</p>
							</span>
						</div>
						
						<div class="icon facebook">
							<div class="tooltip-icon">Chờ lệnh</div>
							<span class="car-blue">
								<p style="opacity: 0;">0</p>
							</span>
							<span id="status-6">
								<p>0</p>
							</span>
						</div>
						
						<div class="icon kakaotalk">
							<div class="tooltip-icon">Bảo trì</div>
							<span class="car-yellow">
								<p style="opacity: 0;">0</p>
							</span>
							<span id="status-9">
								<p>0</p>
							</span>
						</div>

						<div class="icon Github">
							<div class="tooltip-icon">Khác</div>
							<span class="car-black">
								<p style="opacity: 0;">0</p>
							</span>
							<span id="status-0">
								<p>0</p>
							</span>
						</div>
					</div>
				</div>

				<div class="tab__content">
					<input id="searchStock" type="text" class="form-control search-table f-f-verdana" placeholder="Nhập ......">
					<br>
					<div class="table-responsive custom-table f-f-verdana">
						<table class="table" id="table-stock">
							<!-- <caption>Fixed-width first column</caption> -->
							<thead>
								<tr>
									<th scope="col" style="width: 90px;">Mã kho</th>
									<th scope="col" style="width: 50px;">#</th>
									<th scope="col" style="width: 250px;">Tên</th>
									<th scope="col" style="width: 70px;">Quốc gia</th>
									<th scope="col" style="width: 80px;">Hoành độ</th>
									<th scope="col" style="width: 80px;">Tung độ</th>
									<th scope="col" style="width: 400px;">Địa chỉ</th>
								</tr>
							</thead>
							<tbody id="StockData">
							
							</tbody>
						</table>
					</div>
				</div>

				<div class="tab__content">
					<!--
					<div class="item-header">	
						<input id="range-slider__range_height" class="range-slider__range" type="range" value="300" min="100" max="500" step="10">
						<span id="range-slider__value_height" class="range-slider__value">300px</span>
					</div>
					<div class="item-header">	
						<input id="range-slider__range_width" class="range-slider__range" type="range" value="2" min="1" max="5" step="1">
						<span id="range-slider__value_width" class="range-slider__value">40%</span>
					</div>
					-->
					<div class="item-wrap table-responsive custom-table f-f-verdana">
						<div class="item-block items-container">
							
						</div>
					</div>

				</div>
			</div>
			<!--
			<ul class="wui-side-menu-items">
				<li>
					<a href="#" class="wui-side-menu-item">
						<i class="box-ico fa fa-music fa-fw"></i>
						<span class="box-title">Songs</span>
					</a>
				</li>
				<li>
					<a href="#" class="wui-side-menu-item active">
						<i class="box-ico fa fa-list-ol fa-fw"></i>
						<span class="box-title">Playlists</span>
					</a>
				</li>
				<li>
					<a href="#" class="wui-side-menu-item">
						<i class="box-ico fa fa-users fa-fw"></i>
						<span class="box-title">Artists</span>
					</a>
				</li>
				<li>
					<a href="#" class="wui-side-menu-item">
						<i class="box-ico fa fa-list-alt fa-fw"></i>
						<span class="box-title">Albums</span>
					</a>
				</li>
				<li>
					<a href="#" class="wui-side-menu-item">
						<i class="box-ico fa fa-search fa-fw"></i>
						<span class="box-title">Search</span>
					</a>
				</li>
				<li>
					<a href="#" class="wui-side-menu-item">
						<i class="box-ico fa fa-cog fa-fw"></i>
						<span class="box-title">Settings</span>
					</a>
				</li>
			</ul>
			-->
		</div>
		<div class="wui-content">
			<!-- Container -->
			<div class="main-container" id="contentmap-1">
				<div class="wui-content-header">
					<a href="#" class="wui-side-menu-trigger"><i class="fa fa-bars"></i></a>
					<span class="wui-title"></span>
				</div>
				<div class="wui-content-main f-f-verdana">
					<div id="mapwrap">
						<div id="toolbar">
							<div class="hamburger">
								<span>Tour&nbsp;Stops</span>
							</div>
							<div id="tourstops">
								<h2>Tour Stops</h2>
								<ul>
								</ul>
							</div>
						</div>
						<div id="map" class="cssMap"></div>
					</div>			
				</div>
			</div><!-- End of container-->
			
			<div class="main-container" id="contentmap-2">
				<div class="wui-content-header">
					<a href="#" class="wui-side-menu-trigger"><i class="fa fa-bars"></i></a>
					<!-- Controller Row -->
					<div class="dp-none" style="position: absolute; left: 0; top: 0;" >
						<label class="switch">
							<input id="togglerMoon" type="checkbox">
							<span class="slider round"></span>
						</label>
					</div> <!-- End of controller row -->
					<!--
					<span class="wui-title">Responsive left side menu with pin state</span>
					<p>Main content goes here</p>
					<p>Events</p>
					-->
					<div id="events"></div>
				</div>
				<div class="wui-content-main">
					<div class="item-wrap">
						<div class="item-block" style="padding: 15px; overflow-y: auto;">
							<div class="wui-side-menu-header f-f-verdana" style="justify-content: flex-end; color: var(--text-color);">
								<div class="item-header f-f-verdana">	
									<div class="form-inputs">
										<div class="value-button" id="decreaseWidth" onclick="decreaseWidthValue()" value="Decrease Value Width">-</div>
										Dài <input type="number" id="numberWidth" value="33.333" min="0" max="100" step="5" />%
										<div class="value-button" id="increaseWidth" onclick="increaseWidthValue()" value="Increase Value Width">+</div>
									</div>
									<div class="form-inputs">
										<div class="value-button" id="decreaseHeight" onclick="decreaseHeightValue()" value="Decrease Value Height">-</div>
										Rộng <input type="number" id="numberHeight" value="70" min="0" max="100" step="5"/>%
										<div class="value-button" id="increaseHeight" onclick="increaseHeightValue()" value="Increase Value Height">+</div>
									</div>
								</div>
								
								Xe &nbsp;<label class="switch">
									<input id="togglerCamera" type="checkbox" checked>
									<span class="slider round"></span>
								</label> &nbsp;&nbsp;&nbsp;
								Nhân viên &nbsp;<label class="switch">
									<input id="togglerWeather" type="checkbox">
									<span class="slider round"></span>
								</label> 
							</div>
							<div style="width: 0%; float: right; height: 100%;" class="dp-none" id="content-weather">
								<div class="heading f-f-verdana">
									<h1>Số nhân viên đang theo dõi: <span id="items-basket-weather"></span></h1>
								</div>
								<div class="cart f-f-verdana">
									<div class="total-text">
										<p>Danh sách hiển thị: </p>
									</div>
								</div>
								<div id="cart-items-weather" style="height: 100%;">
									<section class="main-section" id="list-item-weather" style="height: 100%;">
									    <div class="wrapper-wap" style="width: 100%; height: 100%; background: none; padding: 0; margin: 0; border: none;">
										  <div class="flexcontainer" style="width: 100%; height: 100%; background: none; padding: 0; margin: 0;">                      
										  </div>
										</div>
									</section>  

									<div class="total-text f-f-verdana dp-none">
										<p>Số lượng: <span id="total-price-weather">0</span></p>
									</div>
								</div>
							</div>
							<div style="width: 100%; float: left; height: 100%;" class="dp-block" id="content-camera">
								<div class="heading f-f-verdana">
									<h1>Số xe đang theo dõi: <span id="items-basket"></span></h1>
								</div>
								<div class="cart f-f-verdana">
									<div class="total-text">
										<p>Danh sách hiển thị: </p>
									</div>
								</div>
								<div id="cart-items" style="height: 100%;">
									<ol id="list-item" style="height: 100%; display: flex; justify-content: flex-start; flex-wrap: wrap;">
									</ol>

									<div class="total-text f-f-verdana dp-none">
										<p>Số lượng: <span id="total-price">0</span></p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="wui-overlay"></div>
	</div>
	
	<script type="text/javascript" src="../Js/script/leaflet.js"></script>
	<script type="text/javascript" src="../Js/script/jquery.magnific-popup.min.js"></script>
	
	<script>
		/* ------------- Responsive left side menu with pin state ------------- */
		/* Kristuff.WebUI.SideMenu */
		(function (window, undefined) {
			"use strict";
			// responsive pinnable sidemenu component
			var sideMenu = function (el) {
				var htmlSideMenu = el,
					htmlSideMenuPinTrigger = {},
					htmlSideMenuPinTriggerImage = {},
					htmlOverlay = {};
				var init = function () {
					htmlSideMenuPinTrigger = el.querySelector(".wui-side-menu-pin-trigger");
					htmlSideMenuPinTriggerImage = htmlSideMenuPinTrigger.querySelector(
						"i.fa"
					);
					htmlOverlay = document.querySelector(".wui-overlay");
					Array.prototype.forEach.call(
						document.querySelectorAll(".wui-side-menu-trigger"),
						function (elmt, i) {
							elmt.addEventListener(
							"click",
							function (e) {
								e.preventDefault();
								toggleMenuState();
							},
							false
							);
						}
					);
					htmlSideMenuPinTrigger.addEventListener(
						"click",
						function (e) {
							e.preventDefault();
							toggleMenuPinState();
						},
						false
					);
					htmlOverlay.addEventListener(
						"click",
						function (e) {
							htmlSideMenu.classList.remove("open");
						},
						false
					);
					window.addEventListener("resize", checkIfNeedToCloseMenu, false);
					checkIfNeedToCloseMenu();
				};
				var toggleMenuState = function () {
					htmlSideMenu.classList.toggle("open");
					menuStateChanged(htmlSideMenu, htmlSideMenu.classList.contains("open"));
				};
				var toggleMenuPinState = function () {
					htmlSideMenu.classList.toggle("pinned");
					htmlSideMenuPinTriggerImage.classList.toggle("fa-rotate-90");
					if (htmlSideMenu.classList.contains("pinned") !== true) {
						htmlSideMenu.classList.remove("open");
					}
					menuPinStateChanged(
						htmlSideMenu,
						htmlSideMenu.classList.contains("pinned")
					);
				};
				var checkIfNeedToCloseMenu = function () {
					var width =
						window.innerWidth ||
						document.documentElement.clientWidth ||
						document.body.clientWidth;
					if (width <= 767 && htmlSideMenu.classList.contains("open") === true) {
						htmlSideMenu.classList.remove("open");
						menuStateChanged(htmlSideMenu, htmlSideMenu.classList.contains("open"));
					}
					if (width > 767 && htmlSideMenu.classList.contains("pinned") === false) {
						htmlSideMenu.classList.remove("open");
						menuStateChanged(htmlSideMenu, htmlSideMenu.classList.contains("open"));
					}
				};
				var menuStateChanged = function (element, state) {
					var evt = new CustomEvent("menuStateChanged", {
						detail: { open: state }
					});
					element.dispatchEvent(evt);
				};
				var menuPinStateChanged = function (element, state) {
					var evt = new CustomEvent("menuPinStateChanged", {
						detail: { pinned: state }
					});
					element.dispatchEvent(evt);
				};
				init();
				return {
					htmlElement: htmlSideMenu,
					toggleMenuState: toggleMenuState,
					toggleMenuPinState: toggleMenuPinState
				};
			};

			window.SideMenu = sideMenu;
		})(window);


		var documentReady = function (fn) {
			if (document.readyState != "loading") {
				fn();
			} else {
				document.addEventListener("DOMContentLoaded", fn);
			}
		};

		documentReady(function () {
			var sample = new SideMenu(document.querySelector(".wui-side-menu"));
			sample.htmlElement.addEventListener(
				"menuPinStateChanged",
				function (e) {
					//document.querySelector("#events").innerHTML +=
					//"menuPinStateChanged , menu pinned? => " + e.detail.pinned + "<br>";
					console.log("menuPinStateChanged , menu pinned? => " + e.detail.pinned + "<br>");
				},
				false
			);
			sample.htmlElement.addEventListener(
				"menuStateChanged",
				function (e) {
					//document.querySelector("#events").innerHTML +=
					//"menuStateChanged , menu open? => " + e.detail.open + "<br>";
					console.log("menuStateChanged , menu open? => " + e.detail.open + "<br>");
				},
				false
			);
		});
								

		/* ------------- Light / Dark Mode Toggle ------------- */	
		// On toggler clicked

		var container = document.getElementById('content');
		document.getElementById('toggler').addEventListener('change', (event) => {
			console.log(toggler)
			event.target.checked ? container.removeAttribute('data-theme') : container.setAttribute('data-theme', 'dark');
		});
		
		
		var containerWeather = document.getElementById('content-weather');
		var containerCamera = document.getElementById('content-camera');
		var flagWeather = false;
		var flagCamera = true;
		document.getElementById('togglerWeather').addEventListener('change', (eventWeather) => {
			flagWeather = eventWeather.target.checked;
			console.log(flagCamera);
			console.log(flagWeather);
			if ((flagCamera == false && flagWeather == true) || (flagWeather == true && flagCamera == false))
			{
				containerCamera.classList.add('dp-none');
				containerCamera.classList.remove('dp-block')
				containerWeather.classList.add('dp-block');
				containerWeather.classList.remove('dp-none');
				containerCamera.style.width = "0";
				containerWeather.style.width = "100%";
			}
			else if ((flagCamera == true && flagWeather == false) || (flagWeather == false && flagCamera == true))
			{
				containerCamera.classList.add('dp-block');
				containerCamera.classList.remove('dp-none');
				containerWeather.classList.add('dp-none');
				containerWeather.classList.remove('dp-block');
				containerCamera.style.width = "100%";
				containerWeather.style.width = "0";
			}
			else if ((flagCamera == false && flagWeather  == false) || (flagWeather  == false) && flagCamera == false ) {
				containerCamera.classList.add('dp-none');
				containerCamera.classList.remove('dp-block');
				containerWeather.classList.add('dp-none');
				containerWeather.classList.remove('dp-block');
				containerCamera.style.width = "0";
				containerWeather.style.width = "0";
			}
			else if ((flagCamera == true && flagWeather == true) || (flagWeather == true && flagCamera == true)) {
				containerCamera.classList.add('dp-block');
				containerCamera.classList.remove('dp-none');
				containerWeather.classList.add('dp-block');
				containerWeather.classList.remove('dp-none');
				containerCamera.style.width = "50%";
				containerWeather.style.width = "50%";
			}
			else {
				console.log("Ngoai le!");
			}
		});
		document.getElementById('togglerCamera').addEventListener('change', (eventCamera) => {
			flagCamera = eventCamera.target.checked;
			console.log(flagCamera);
			console.log(flagWeather);
			if ((flagCamera == false && flagWeather == true) || (flagWeather == true && flagCamera == false))
			{
				containerCamera.classList.add('dp-none');
				containerCamera.classList.remove('dp-block')
				containerWeather.classList.add('dp-block');
				containerWeather.classList.remove('dp-none');
				containerCamera.style.width = "0";
				containerWeather.style.width = "100%";
			}
			else if ((flagCamera == true && flagWeather == false) || (flagWeather == false && flagCamera == true))
			{
				containerCamera.classList.add('dp-block');
				containerCamera.classList.remove('dp-none');
				containerWeather.classList.add('dp-none');
				containerWeather.classList.remove('dp-block');
				containerCamera.style.width = "100%";
				containerWeather.style.width = "0";
			}
			else if ((flagCamera == false && flagWeather  == false) || (flagWeather  == false) && flagCamera == false ) {
				containerCamera.classList.add('dp-none');
				containerCamera.classList.remove('dp-block');
				containerWeather.classList.add('dp-none');
				containerWeather.classList.remove('dp-block');
				containerCamera.style.width = "0";
				containerWeather.style.width = "0";
			}
			else if ((flagCamera == true && flagWeather == true) || (flagWeather == true && flagCamera == true)) {
				containerCamera.classList.add('dp-block');
				containerCamera.classList.remove('dp-none');
				containerWeather.classList.add('dp-block');
				containerWeather.classList.remove('dp-none');
				containerCamera.style.width = "50%";
				containerWeather.style.width = "50%";
			}
			else {
				console.log("Ngoai le!");
			}
		});
		
		
		/*------------- Change Brightness -------------*/
		//let $ = document;

		range.addEventListener("input", changeBrightness);

		function changeBrightness(e) {
			container.style.filter = "brightness(" + e.target.value + "%)";
		}
		
		
		/*------------- Search Filterable Table - jQuery -------------*/
		$("#searchCar").on("keyup", function() {
			var value = $(this).val().toLowerCase();
			$("#CarData tr").filter(function() {
				$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
			});
		});
		$("#searchStock").on("keyup", function() {
			var value = $(this).val().toLowerCase();
			$("#StockData tr").filter(function() {
				$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
			});
		});
		
		
		var outputWidth = document.getElementById('numberWidth');
		var outputHeight = document.getElementById('numberHeight');
		
		function increaseWidthValue() {
			var valueWidth = parseInt(outputWidth.value, 10);
			if (Number(valueWidth) > 95)
			{
				valueWidth = 100;
				outputWidth.value = valueWidth;
				document.documentElement.style.setProperty('--cardWidth', valueWidth + "%");
			} else {
				valueWidth = isNaN(valueWidth) ? 0 : valueWidth;
				valueWidth = valueWidth + 5;
				console.log(valueWidth);
				outputWidth.value = valueWidth;
				document.documentElement.style.setProperty('--cardWidth', valueWidth + "%");
			}
		}

		function decreaseWidthValue() {
			var valueWidth = parseInt(outputWidth.value, 10);
			if (Number(valueWidth) < 5)
			{
				valueWidth = 0;
				outputWidth.value = valueWidth;
				document.documentElement.style.setProperty('--cardWidth', valueWidth + "%");
			} 
			else {
				valueWidth = isNaN(valueWidth) ? 0 : valueWidth;
				valueWidth < 1 ? valueWidth = 1 : '';
				valueWidth = valueWidth - 5;
				console.log(valueWidth);
				outputWidth.value = valueWidth;
				document.documentElement.style.setProperty('--cardWidth', valueWidth + "%");
			}
		}
		
		function increaseHeightValue() {	
			var valueHeight = parseInt(outputHeight.value, 10);
			if (Number(valueHeight) > 95)
			{
				valueHeight = 100;
				outputHeight.value = valueHeight;
				document.documentElement.style.setProperty('--cardHeight', valueHeight + "%");
			}
			else {
				valueHeight = isNaN(valueHeight) ? 0 : valueHeight;
				valueHeight = valueHeight + 5;
				console.log(valueHeight);
				outputHeight.value = valueHeight;
				document.documentElement.style.setProperty('--cardHeight', valueHeight + "%");
			}
		}

		function decreaseHeightValue() {	
			var valueHeight = parseInt(outputHeight.value, 10);
			if (Number(valueHeight) < 5)
			{
				valueHeight = 0;
				outputHeight.value = valueHeight;
				document.documentElement.style.setProperty('--cardHeight', valueHeight + "%");	
			}	
			else {
				valueHeight = isNaN(valueHeight) ? 0 : valueHeight;
				valueHeight < 1 ? valueHeight = 1 : '';
				valueHeight = valueHeight - 5;
				console.log(valueHeight);
				outputHeight.value = valueHeight;
				document.documentElement.style.setProperty('--cardHeight', valueHeight + "%");	
			}
		}
		
		outputWidth.oninput = function() { 
		    if (Number(this.value) > 100)
			{
				this.value = 100;
				outputWidth.value = this.value;
			}
			if (Number(this.value) < 0)
			{
				this.value = 0;
				outputWidth.value = this.value;
			}
			document.documentElement.style.setProperty('--cardWidth', this.value + "%");
		}
		
		outputHeight.oninput = function() { 
			if (Number(this.value) > 100)
			{
				this.value = 100;
				outputHeight.value = this.value;
			}
			if (Number(this.value) < 0)
			{
				this.value = 0;
				outputHeight.value = this.value;
			}
			document.documentElement.style.setProperty('--cardHeight', this.value + "%");	
		}
		
		/*------------- Perfect Range slider with value and progress colour -------------*/
		/*
		var sliderHeight = document.getElementById("range-slider__range_height");
		var outputHeight = document.getElementById("range-slider__value_height");
		var sliderWidth = document.getElementById("range-slider__range_width");
		var outputWidth = document.getElementById("range-slider__value_width");

		outputHeight.innerHTML = "Dài " + sliderHeight.value + "px";
		outputWidth.innerHTML = "Rộng " + (sliderWidth.value * 20) + "%";

		var defaultHeight = sliderHeight.value + "px";
		var defaultWidth = (sliderWidth.value * 20) + "%";
		document.documentElement.style.setProperty('--cardWidth', defaultWidth);
		// This function input current value in span and add progress colour in range
		sliderHeight.oninput = function() {

			outputHeight.innerHTML = "Dài " + this.value + "px";
			
			defaultHeight = this.value + "px";

			var value = (this.value-this.min)/(this.max-this.min)*100;
			
			var lstitem = document.querySelectorAll("#list-item li"); 

			for (let i = 0; i < lstitem.length; i++) {
				lstitem[i].style.height = this.value + "px"; 
			}
			
			document.documentElement.style.setProperty('--cardHeight', this.value + "px");
		  
			this.style.background = 'linear-gradient(to right, #82CFD0 0%, #82CFD0 ' + value + '%, #d7dcdf ' + value + '%, #d7dcdf 100%)'
		}
		// This function input current value in span and add progress colour in range
		sliderWidth.oninput = function() {

			outputWidth.innerHTML = "Rộng " + (this.value * 20) + "%";
			
			defaultWidth = (sliderWidth.value * 20) + "%";

			var value = (this.value-this.min)/(this.max-this.min)*100;
		  
			//document.getElementById("list-item").style.columnCount = this.value;
			//document.getElementById("list-item").style.width = (this.value * 20) + "%";
			//document.getElementById("list-item-weather").style.columnCount = this.value;
			var lstitem = document.querySelectorAll("#list-item li"); 
			for (let i = 0; i < lstitem.length; i++) {
				lstitem[i].style.width = (this.value * 20) + "%";
			}
			
			var lstitemWeather = document.querySelectorAll("#list-item-weather li"); 
			for (let j = 0; j < lstitemWeather.length; j++) {
				lstitemWeather[j].style.width = (this.value * 20) + "%";
			}
			
			document.documentElement.style.setProperty('--cardWidth', (this.value * 20) + "%");
		  
			this.style.background = 'linear-gradient(to right, #82CFD0 0%, #82CFD0 ' + value + '%, #d7dcdf ' + value + '%, #d7dcdf 100%)'
		}
		*/
	</script>
	
	
	<script>
		/*--------------------------- Map ---------------------------------*/
		// initialize the map on the "map" div with a given center and zoom
		var map = L.map('map', {
			center: [10.362244019315042, 106.67524538086836],
			zoom: 9,
			zoomControl: false
		});
		L.control.zoom({
			position: 'bottomright'
		}).addTo(map);


		//Map layers
		var googleStreets = L.tileLayer('http://{s}.google.com/vt/lyrs=m&x={x}&y={y}&z={z}',{
			maxZoom: 20,
			subdomains:['mt0','mt1','mt2','mt3']
		}).addTo(map);
		
		var osm = L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
			attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
		});

		var Esri_WorldImagery = L.tileLayer('https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/{z}/{y}/{x}', {
			attribution: 'Tiles &copy; Esri &mdash; Source: Esri, i-cubed, USDA, USGS, AEX, GeoEye, Getmapping, Aerogrid, IGN, IGP, UPR-EGP, and the GIS User Community'
		});

		var googleHybrid = L.tileLayer('http://{s}.google.com/vt/lyrs=s,h&x={x}&y={y}&z={z}',{
			maxZoom: 20,
			subdomains:['mt0','mt1','mt2','mt3']
		});

		var googleSat = L.tileLayer('http://{s}.google.com/vt/lyrs=s&x={x}&y={y}&z={z}',{
			maxZoom: 20,
			subdomains:['mt0','mt1','mt2','mt3']
		});

		var googleTerrain = L.tileLayer('http://{s}.google.com/vt/lyrs=p&x={x}&y={y}&z={z}',{
			maxZoom: 20,
			subdomains:['mt0','mt1','mt2','mt3']
		});


		var stockMarkers = new L.FeatureGroup();
		var carMarkers = new L.FeatureGroup();
		
		
		//Layer Groups and Layers Control
		var baseLayers = {
			"Bản đồ đường xá": googleStreets,
			"Bản đồ vệ tinh hỗn hợp": googleHybrid,
			"Bản đồ vệ tinh đơn giản": googleSat,
			"Bản đồ địa hình": googleTerrain,
			"Bản đồ hình ảnh TG Esri": Esri_WorldImagery,
			"Bản đồ đường xá mở": osm
		};
		

		var overlays = {
			"Đánh dấu xe": carMarkers,
			"Đánh dấu kho": stockMarkers
		};

		L.control.layers(baseLayers, overlays, {position: 'bottomright'}).addTo(map);

		//Customer icon marker
		var LeafIcon = L.Icon.extend({
			options: {
				//shadowUrl: '../Js/script/images/marker-shadow.png',
				iconSize:     [32, 32],
				//shadowSize:   [41, 41],
				iconAnchor:   [32, 32],
				//shadowAnchor: [22, 30],
				popupAnchor:  [-15, -27]
			}
		});

		L.icon = function (options) {return new L.Icon(options);};

		var markerStock = new LeafIcon({iconUrl: '../Js/script/images/stock/warehouse-64.png'});
		var markerCarGreen = new LeafIcon({iconUrl: '../Js/script/images/car-color/container-green64.png'})
		var markerCarGreenShadow = L.icon({
			iconUrl: '../Js/script/images/car-color/container-green64.png',
			shadowUrl: '../Js/script/images/car-gif/circle-animation.gif',

			iconSize:     [32, 32],
			iconAnchor:   [32, 32], // point of the icon which will correspond to marker's location
			shadowAnchor: [38, 38], // the same for the shadow
			popupAnchor:  [-15, -27], // point from which the popup should open relative to the iconAnchor
			shadowSize:   [41, 42] // size of the shadow
		});
		var markerCarRedShadow = L.icon({
			iconUrl: '../Js/script/images/car-color/container-red64.png',
			shadowUrl: '../Js/script/images/car-gif/circle-animation.gif',

			iconSize:     [32, 32],
			iconAnchor:   [32, 32], // point of the icon which will correspond to marker's location
			shadowAnchor: [38, 38], // the same for the shadow
			popupAnchor:  [-15, -27], // point from which the popup should open relative to the iconAnchor
			shadowSize:   [41, 42] // size of the shadow
		});
		var markerCarRed = new LeafIcon({iconUrl: '../Js/script/images/car-color/container-red64.png'});
		var markerCarBlueShadow = L.icon({
			iconUrl: '../Js/script/images/car-color/container-blue64.png',
			shadowUrl: '../Js/script/images/car-gif/circle-animation.gif',

			iconSize:     [32, 32],
			iconAnchor:   [32, 32], // point of the icon which will correspond to marker's location
			shadowAnchor: [38, 38], // the same for the shadow
			popupAnchor:  [-15, -27], // point from which the popup should open relative to the iconAnchor
			shadowSize:   [41, 42] // size of the shadow
		});
		var markerCarBlue = new LeafIcon({iconUrl: '../Js/script/images/car-color/container-blue64.png'});
		var markerCarWaterShadow = L.icon({
			iconUrl: '../Js/script/images/car-color/container-water64.png',
			shadowUrl: '../Js/script/images/car-gif/circle-animation.gif',

			iconSize:     [32, 32],
			iconAnchor:   [32, 32], // point of the icon which will correspond to marker's location
			shadowAnchor: [38, 38], // the same for the shadow
			popupAnchor:  [-15, -27], // point from which the popup should open relative to the iconAnchor
			shadowSize:   [41, 42] // size of the shadow
		});
		var markerCarWater = new LeafIcon({iconUrl: '../Js/script/images/car-color/container-water64.png'});
		var markerCarBlackShadow = L.icon({
			iconUrl: '../Js/script/images/car-color/container-black64.png',
			shadowUrl: '../Js/script/images/car-gif/circle-animation.gif',

			iconSize:     [32, 32],
			iconAnchor:   [32, 32], // point of the icon which will correspond to marker's location
			shadowAnchor: [38, 38], // the same for the shadow
			popupAnchor:  [-15, -27], // point from which the popup should open relative to the iconAnchor
			shadowSize:   [41, 42] // size of the shadow
		});
		var markerCarBlack = new LeafIcon({iconUrl: '../Js/script/images/car-color/container-black64.png'});
		var markerCarGreyShadow = L.icon({
			iconUrl: '../Js/script/images/car-color/container-grey64.png',
			shadowUrl: '../Js/script/images/car-gif/circle-animation.gif',

			iconSize:     [32, 32],
			iconAnchor:   [32, 32], // point of the icon which will correspond to marker's location
			shadowAnchor: [38, 38], // the same for the shadow
			popupAnchor:  [-15, -27], // point from which the popup should open relative to the iconAnchor
			shadowSize:   [41, 42] // size of the shadow
		});
		var markerCarGrey = new LeafIcon({iconUrl: '../Js/script/images/car-color/container-grey64.png'});
		var markerCarYellowShadow = L.icon({
			iconUrl: '../Js/script/images/car-color/container-yellow64.png',
			shadowUrl: '../Js/script/images/car-gif/circle-animation.gif',

			iconSize:     [32, 32],
			iconAnchor:   [32, 32], // point of the icon which will correspond to marker's location
			shadowAnchor: [38, 38], // the same for the shadow
			popupAnchor:  [-15, -27], // point from which the popup should open relative to the iconAnchor
			shadowSize:   [41, 42] // size of the shadow
		});
		var markerCarYellow = new LeafIcon({iconUrl: '../Js/script/images/car-color/container-yellow64.png'});
		var markerCarPurpleShadow = L.icon({
			iconUrl: '../Js/script/images/car-color/container-purple64.png',
			shadowUrl: '../Js/script/images/car-gif/circle-animation.gif',

			iconSize:     [32, 32],
			iconAnchor:   [32, 32], // point of the icon which will correspond to marker's location
			shadowAnchor: [38, 38], // the same for the shadow
			popupAnchor:  [-15, -27], // point from which the popup should open relative to the iconAnchor
			shadowSize:   [41, 42] // size of the shadow
		});
		var markerCarPurple = new LeafIcon({iconUrl: '../Js/script/images/car-color/container-purple64.png'});
		var redIcon = new LeafIcon({iconUrl: "../Js/script/images/car-gif/circle-animation.gif"});
		
		
		$('#toolbar .hamburger').on('click', function() {
		  $(this).parent().toggleClass('open');
		});

		var buildingLayers = L.layerGroup().addTo(map);
		
		var bldgData = { "features" : [ { "geometry" : { "coordinates" : [-104.823593,38.846977], "type" : "Point"}, "id" : "17", "properties" : { "NAME" : "Armstrong Hall", "IMG_URL" : "\/dotAsset\/08800d79-5609-4a7a-b5b2-c994e4568379.jpg", "IMG_ID" : "08800d79-5609-4a7a-b5b2-c994e4568379", "SHORT_DESC" : "Armstrong Theatre; <br /><strong>Departments:</strong> English; German, Russian, and East Asian Languages; French, Italian & Arabic; Philosophy; Religion; and Spanish<br /><strong>Offices:</strong> Dean of the College and the Faculty; Dean of Students; Collaborative for Community Engagement; International Programs; ITS:; Registrar; and Student Life", "BODY" : "<p>Armstrong Hall houses the English, philosophy, religion, and foreign language departments. It is also home to many administrative offices including the president's office. There are also three other theaters in Armstrong. The first and largest is on the main floor and features special events, film screenings, guest speakers. Max Kade Theater, on the third floor, is used for lectures, student films, and foreign language theater productions. Media Services is also located in the basement along with a few black-box theaters.&nbsp;<\/p>", "ADDRESS" : "14 E. Cache La Poudre St.", "LINK" : "", "BUILDING_NUMBER" : "1", "HOURS" : "<p><span>Unlocked: Monday &ndash; Friday from 7:30a.m. - 6 p.m.<\/span><br \/><span>Card Access: Sunday &ndash; Saturday from 7 a.m. - midnight<\/span><\/p>", "STREET_VIEW_LINK" : "https:\/\/maps.google.com\/maps?ll=38.847382,-104.823756&spn=0.000635,0.001032&t=h&z=21&layer=c&cbll=38.847382,-104.823756&panoid=WgiR7YV0bg6ZXPrtMoxRHg&cbp=12,181.74,,0,-2.46", "LOCATION_TYPE" : "General College Facilities" }, "type" : "Feature" }, { "geometry" : { "coordinates" : [-104.821297,38.849609], "type" : "Point"}, "id" : "18", "properties" : { "NAME" : "Arthur House", "IMG_URL" : "\/dotAsset\/516444cf-e9f5-4c7c-83e2-d98961add341.jpg", "IMG_ID" : "516444cf-e9f5-4c7c-83e2-d98961add341", "SHORT_DESC" : "", "BODY" : "<p>Arthur is a 24-hour quiet dorm.<\/p>", "ADDRESS" : "", "LINK" : "", "BUILDING_NUMBER" : "58", "HOURS" : "", "STREET_VIEW_LINK" : "https:\/\/maps.google.com\/maps?ll=38.849716,-104.821115&spn=0.000635,0.001032&t=h&z=21&layer=c&cbll=38.849663,-104.821116&panoid=WOL3RM_gajudhj3A0QuX5w&cbp=12,243.01,,0,-5.23", "LOCATION_TYPE" : "Residence Halls/Houses" }, "type" : "Feature" }, { "geometry" : { "coordinates" : [-105.7059667,37.98245], "type" : "Point"}, "id" : "19", "properties" : { "NAME" : "Baca Campus", "IMG_URL" : "\/dotAsset\/68475761-e2a4-4ab4-87be-6ca830708ee3.jpg", "IMG_ID" : "68475761-e2a4-4ab4-87be-6ca830708ee3", "SHORT_DESC" : "", "BODY" : "<p>The Baca Campus, located in Crestone, Colo., about 175 miles southwest of Colorado Springs, officially became part of Colorado College in 1990 when townhouses, a conference center, and about 300 acres of undeveloped land were purchased from the Aspen Institute. CC classes had begun using the facilities leased from Aspen Institute in the mid-80s, and the popularity of it has grown over the last decade. An additional lodge was constructed in 1992, providing even more room for classes visiting the area as a retreat or to use the Baca as a base for field work in the San Luis Valley. The valley, surrounded by the Sangre de Cristo and San Juan mountain ranges, is a major agricultural area, rich in natural resources and recreational opportunities and borders a major wilderness area and the Great Sand Dunes National Park. The college's Hulbert Center for Southwest Studies manages the Baca, though classes of all types use the campus. Nearly 2,000 students, faculty, and staff utilize the campus each year.<\/p>", "ADDRESS" : "", "LINK" : "", "BUILDING_NUMBER" : "0", "HOURS" : "", "STREET_VIEW_LINK" : "", "LOCATION_TYPE" : "Not on Campus" }, "type" : "Feature" }, { "geometry" : { "coordinates" : [-104.821732,38.849125], "type" : "Point"}, "id" : "20", "properties" : { "NAME" : "Barnes Science Center", "IMG_URL" : "\/dotAsset\/479d2499-4430-4864-aba9-ce59f6b5fa68.jpg", "IMG_ID" : "479d2499-4430-4864-aba9-ce59f6b5fa68", "SHORT_DESC" : "Departments: Anthropology; Molecular Biology; Chemistry and Biochemistry; and Physics; ITS:", "BODY" : "<p>Barnes Science Center, constructed in 1988, tripled the previous laboratory space available to students and faculty. Scientific instruments, exceptional for a school this size, are used by students for various science classes. For example, the college has a scanning electron microscope, a mass spectrometer, a nuclear magnetic resonance instrument (NMR), and an infra-red spectrometer. In addition, Barnes includes four variable environment greenhouses (desert to tropical), an animal colony in the basement, and an observation dome in the roof equipped with a 16-inch reflecting telescope for astronomy. Barnes contains classrooms and offices for the anthropology, biology, chemistry, and physics departments. Barnes also houses academic computing. It is connected to Olin Hall, the next feature on the tour.<\/p>", "ADDRESS" : "", "LINK" : "", "BUILDING_NUMBER" : "30", "HOURS" : "<p><span>Unlocked: Monday &ndash; Friday from 7:30a.m. - 6 p.m.<\/span><br \/><span>Card Access: Sunday &ndash; Saturday from 7 a.m. - midnight<\/span><\/p>", "STREET_VIEW_LINK" : "<iframe width=\"562\" height=\"314\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" src=\"https:\/\/maps.google.com\/maps?t=h&amp;layer=c&amp;cbll=38.848801,-104.822021&amp;panoid=WkMNQ3Pof3ieG-lk4JAUzw&amp;cbp=13,20.8,,0,-0.74&amp;ie=UTF8&amp;ll=38.848691,-104.821981&amp;spn=0.000232,0.000377&amp;z=21&amp;source=embed&amp;output=svembed\"><\/iframe><br \/><small><a href=\"https:\/\/maps.google.com\/maps?t=h&amp;layer=c&amp;cbll=38.848801,-104.822021&amp;panoid=WkMNQ3Pof3ieG-lk4JAUzw&amp;cbp=13,20.8,,0,-0.74&amp;ie=UTF8&amp;ll=38.848691,-104.821981&amp;spn=0.000232,0.000377&amp;z=21&amp;source=embed\" style=\"color:#0000FF;text-align:left\">View Larger Map<\/a><\/small>", "LOCATION_TYPE" : "General College Facilities" }, "type" : "Feature" }, { "geometry" : { "coordinates" : [-104.826614,38.848312], "type" : "Point"}, "id" : "21", "properties" : { "NAME" : "Bemis Hall", "IMG_URL" : "\/dotAsset\/3f2439bb-4d1e-4232-8d10-d8341dadacae.jpg", "IMG_ID" : "3f2439bb-4d1e-4232-8d10-d8341dadacae", "SHORT_DESC" : "Bemis Great Hall; Offices: Conferences; Residential Life and Housing", "BODY" : "", "ADDRESS" : "920 N. Cascade Ave. (west of Cutler Hall)", "LINK" : "", "BUILDING_NUMBER" : "46", "HOURS" : "", "STREET_VIEW_LINK" : "https:\/\/maps.google.com\/maps?q=Colorado+College+Office+of+Admissions,+Colorado+Springs,+Colorado&hl=en&sll=38.875684,-104.758359&sspn=0.273695,0.715485&oq=colorado+college+&t=h&hq=Colorado+College+Office+of+Admissions,+Colorado+Springs,+Colorado&layer=c&cbll=38.84912,-104.825869&panoid=vwY2BCdqEaX5Lvr24n59Xw&cbp=13,299.95,,0,-8.13&ie=UTF8&source=embed&ll=38.848917,-104.825871&spn=0.000709,0.00114&z=19&output=svembedmfe", "LOCATION_TYPE" : "Residence Halls/Houses" }, "type" : "Feature" }, { "geometry" : { "coordinates" : [-104.826759,38.849056], "type" : "Point"}, "id" : "22", "properties" : { "NAME" : "Blanca Apartments", "IMG_URL" : "\/dotAsset\/711f35c1-ec29-4701-83b1-eb92b5b1c4ba.jpg", "IMG_ID" : "711f35c1-ec29-4701-83b1-eb92b5b1c4ba", "SHORT_DESC" : "", "BODY" : "", "ADDRESS" : "", "LINK" : "http:\/\/www.coloradocollege.edu\/basics\/campus\/tour\/western-ridge.dot", "BUILDING_NUMBER" : "49", "HOURS" : "", "STREET_VIEW_LINK" : "https:\/\/maps.google.com\/maps?q=Colorado+College+Office+of+Admissions,+Colorado+Springs,+Colorado&hl=en&sll=38.875684,-104.758359&sspn=0.273695,0.715485&oq=colorado+college+&t=h&hq=Colorado+College+Office+of+Admissions,+Colorado+Springs,+Colorado&layer=c&cbll=38.849121,-104.826661&panoid=e1VsTfGcSow3Rojbo-nTFg&cbp=13,318.39,,0,-15.18&ie=UTF8&source=embed&ll=38.848917,-104.826663&spn=0.000709,0.00114&z=19&output=svembedmfe", "LOCATION_TYPE" : "Residence Halls/Houses" }, "type" : "Feature" }, { "geometry" : { "coordinates" : [-104.825127,38.849369], "type" : "Point"}, "id" : "23", "properties" : { "NAME" : "Boettcher Center", "IMG_URL" : "\/dotAsset\/a7a66665-c38b-411e-a29b-f72a3d286d8e.jpg", "IMG_ID" : "a7a66665-c38b-411e-a29b-f72a3d286d8e", "SHORT_DESC" : "Student Health Center, Counseling, and Student Insurance", "BODY" : "<p>Health professionals staff Boettcher 24 hours a day. In addition to our Boettcher medical director, there is also a network of physicians available for students. The health center provides medical services including vaccinations, gynecological care, and treatments for common ailments. Boettcher also offers free professional counseling sessions, and affordable massage therapy sessions. The health center has classes in nutrition, stress management, Aikido, yoga and other areas as well.<\/p>\n<p>The unusual round structure of Boettcher makes it one of many interesting architectural features on campus.<\/p>\n<p><a href=\"students\/current\/Boettcher\/index.asp\" target=\"_blank\">For more information, please see the Boettcher Health Center website<\/a>.<\/p>", "ADDRESS" : "", "LINK" : "", "BUILDING_NUMBER" : "21", "HOURS" : "<p>Monday - Friday:&nbsp;8 a.m. to 9 p.m.&nbsp;(Nurse Practitioner available 10:30 a.m. to 9 p.m.)<br \/><br \/>Saturday &amp; Sunday:&nbsp;12 p.m. to 5 p.m.&nbsp;(Nurse Practitioner available 12 p.m. to 5 p.m.)<\/p>", "STREET_VIEW_LINK" : "https:\/\/maps.google.com\/maps?q=Colorado+College+Office+of+Admissions,+Colorado+Springs,+Colorado&hl=en&sll=38.875684,-104.758359&sspn=0.273695,0.715485&oq=colorado+college+&t=h&hq=Colorado+College+Office+of+Admissions,+Colorado+Springs,+Colorado&layer=c&cbll=38.84912,-104.825869&panoid=vwY2BCdqEaX5Lvr24n59Xw&cbp=13,299.95,,0,-8.13&ie=UTF8&source=embed&ll=38.848917,-104.825871&spn=0.000709,0.00114&z=19&output=svembedmfe", "LOCATION_TYPE" : "General College Facilities" }, "type" : "Feature" }, { "geometry" : { "coordinates" : [-104.823936,38.850464], "type" : "Point"}, "id" : "24", "properties" : { "NAME" : "Breton Hall", "IMG_URL" : "\/dotAsset\/bc82696a-9a56-443c-9d45-a4d733f64318.jpg", "IMG_ID" : "bc82696a-9a56-443c-9d45-a4d733f64318", "SHORT_DESC" : "", "BODY" : "", "ADDRESS" : "", "LINK" : "", "BUILDING_NUMBER" : "56", "HOURS" : "", "STREET_VIEW_LINK" : "", "LOCATION_TYPE" : "Residence Halls/Houses" }, "type" : "Feature" }, { "geometry" : { "coordinates" : [-104.819908,38.848412], "type" : "Point"}, "id" : "25", "properties" : { "NAME" : "Carriage House", "IMG_URL" : "", "IMG_ID" : "", "SHORT_DESC" : "", "BODY" : "", "ADDRESS" : "", "LINK" : "", "BUILDING_NUMBER" : "32", "HOURS" : "", "STREET_VIEW_LINK" : "", "LOCATION_TYPE" : "General College Facilities" }, "type" : "Feature" }, { "geometry" : { "coordinates" : [-104.822487,38.845764], "type" : "Point"}, "id" : "26", "properties" : { "NAME" : "Central Services", "IMG_URL" : "\/dotAsset\/df33c7c3-8a08-4a17-b196-cf0b3d6fee9d.jpg", "IMG_ID" : "df33c7c3-8a08-4a17-b196-cf0b3d6fee9d", "SHORT_DESC" : "Offices: Copy Center; Mail Services; and Print Shop", "BODY" : "", "ADDRESS" : "", "LINK" : "", "BUILDING_NUMBER" : "45", "HOURS" : "", "STREET_VIEW_LINK" : "", "LOCATION_TYPE" : "General College Facilities" }, "type" : "Feature" }, { "geometry" : { "coordinates" : [-104.82058,38.846653], "type" : "Point"}, "id" : "27", "properties" : { "NAME" : "Cheryl Schlessman Bennett Children's Center", "IMG_URL" : "\/dotAsset\/6977c075-26e2-4df7-bafd-d538ea16eb0f.jpg", "IMG_ID" : "6977c075-26e2-4df7-bafd-d538ea16eb0f", "SHORT_DESC" : "", "BODY" : "<p>The Colorado College Children's Center (CCCC) is committed to providing an on-site, safe, early education program for the young children of the college community. A professional and experienced staff creates a warm, loving, developmentally appropriate program for children ages six weeks to six years. Activities are provided at each age level that encourages the unique development of each individual child.<\/p>\n<p><a href=\"\/cccc\/\" target=\"_blank\">For more information, please see the Colorado Children's Center Website<\/a>.<\/p>", "ADDRESS" : "", "LINK" : "http:\/\/www.coloradocollege.edu\/offices\/childrenscenter\/", "BUILDING_NUMBER" : "40", "HOURS" : "<p><span>Monday - Friday 7:45 a.m. &ndash; 5:30 p.m.<\/span><\/p>", "STREET_VIEW_LINK" : "", "LOCATION_TYPE" : "General College Facilities" }, "type" : "Feature" }, { "geometry" : { "coordinates" : [-104.821693,38.845718], "type" : "Point"}, "id" : "28", "properties" : { "NAME" : "Colorado College Inn", "IMG_URL" : "\/dotAsset\/f33a17d0-3ce8-432d-804f-7e286beb123e.jpg", "IMG_ID" : "f33a17d0-3ce8-432d-804f-7e286beb123e", "SHORT_DESC" : "", "BODY" : "", "ADDRESS" : "", "LINK" : "", "BUILDING_NUMBER" : "69", "HOURS" : "", "STREET_VIEW_LINK" : "", "LOCATION_TYPE" : "Residence Halls/Houses" }, "type" : "Feature" }, { "geometry" : { "coordinates" : [-104.826225,38.847507], "type" : "Point"}, "id" : "29", "properties" : { "NAME" : "Cossitt Hall", "IMG_URL" : "\/dotAsset\/96f39908-d68c-45bf-89ad-037fa86c0ccd.jpg", "IMG_ID" : "96f39908-d68c-45bf-89ad-037fa86c0ccd", "SHORT_DESC" : "Cossitt Amphitheatre; Faculty Commons; Women's Soccer Facility; Departments: Comparative Literature and Classics; Dance", "BODY" : "<p>Originally built as a gym and a men's dining hall, Cossitt is home to dance, classics and comparative literature.&nbsp; There are three dance studios where students take modern dance, ballet, tai chi, or yoga classes.<\/p>\n<p>Cossitt features a rotunda with a mural by alumnus Eric Bransby '47. The building also originally included a full amphitheater -- a portion of which still exists, though most was removed to build Honnen Ice Arena in 1963.<\/p>", "ADDRESS" : "906 N. Cascade Ave. (Northwest of Worner Campus Center)", "LINK" : "", "BUILDING_NUMBER" : "10", "HOURS" : "<p><span>Unlocked: Monday &ndash; Friday from 7:30 a.m. -6 p.m.<\/span><br \/><span>Card Access: Sunday &ndash; Saturday from 7 a.m. - midnight<\/span><\/p>", "STREET_VIEW_LINK" : "https:\/\/maps.google.com\/maps?q=Colorado+College+Office+of+Admissions,+Colorado+Springs,+Colorado&hl=en&sll=38.875684,-104.758359&sspn=0.273695,0.715485&oq=colorado+college+&t=h&hq=Colorado+College+Office+of+Admissions,+Colorado+Springs,+Colorado&layer=c&cbll=38.850447,-104.825322&panoid=unjvC0YNTTJvCKSrNSJVOA&cbp=13,53.7,,0,5.33&ie=UTF8&source=embed&ll=38.850243,-104.825324&spn=0.000709,0.00114&z=19&output=svembedmfe", "LOCATION_TYPE" : "General College Facilities" }, "type" : "Feature" }, { "geometry" : { "coordinates" : [-104.825714,38.847988], "type" : "Point"}, "id" : "30", "properties" : { "NAME" : "Cutler Hall", "IMG_URL" : "\/dotAsset\/eb88fc6c-1549-4f35-baa0-b240c18d6f97.jpg", "IMG_ID" : "eb88fc6c-1549-4f35-baa0-b240c18d6f97", "SHORT_DESC" : "Admission", "BODY" : "<p>Cutler hall is the oldest building on campus, dating back to 1878. When CC began, the entire college was housed in this building, including a chemistry lab, a chapel\/lecture hall, and housing for students. The original student body that occupied Cutler Hall consisted of 25 students: 13 men and 12 women. Now, Cutler is home to admissions and our campus has expanded quite a bit. We currently cover 90 acres.<\/p>", "ADDRESS" : "", "LINK" : "http:\/\/www.coloradocollege.edu\/basics\/campus\/tour\/cutler.dot", "BUILDING_NUMBER" : "11", "HOURS" : "<p>Monday - Friday from 8:30 a.m. - 5:00 p.m.<\/p>\n<p>For weekend hours contact <a href=\"http:\/\/www.coloradocollege.edu\/admission\/choosingCC\/\">The Admissions Office<\/a>.&nbsp;<\/p>", "STREET_VIEW_LINK" : "https:\/\/maps.google.com\/maps?q=colorado+college&hl=en&fb=1&gl=us&hq=colorado+college&hnear=colorado+college&cid=0,0,4627461413222443371&t=m&layer=c&cbll=38.847966,-104.825094&panoid=Z26hqeddMATHzoh0CO0D7A&cbp=13,274.78,,0,6.74&ie=UTF8&source=embed&ll=38.845657,-104.825127&spn=0.008022,0.018239&z=15&output=svembedmfe", "LOCATION_TYPE" : "General College Facilities" }, "type" : "Feature" }, { "geometry" : { "coordinates" : [-104.819908,38.84803], "type" : "Point"}, "id" : "31", "properties" : { "NAME" : "Debate House", "IMG_URL" : "\/dotAsset\/cdf8afab-495d-41a0-9f2d-980bc81eee48.jpg", "IMG_ID" : "cdf8afab-495d-41a0-9f2d-980bc81eee48", "SHORT_DESC" : "", "BODY" : "", "ADDRESS" : "", "LINK" : "", "BUILDING_NUMBER" : "37", "HOURS" : "", "STREET_VIEW_LINK" : "", "LOCATION_TYPE" : "General College Facilities" }, "type" : "Feature" }, { "geometry" : { "coordinates" : [-104.820152,38.848751], "type" : "Point"}, "id" : "32", "properties" : { "NAME" : "Delta Gamma Sorority", "IMG_URL" : "\/dotAsset\/06fecb9b-b56d-40a6-ac66-d7b82c7acaa4.jpg", "IMG_ID" : "06fecb9b-b56d-40a6-ac66-d7b82c7acaa4", "SHORT_DESC" : "", "BODY" : "", "ADDRESS" : "", "LINK" : "", "BUILDING_NUMBER" : "80", "HOURS" : "", "STREET_VIEW_LINK" : "", "LOCATION_TYPE" : "Fraternities/Sororities" }, "type" : "Feature" }, { "geometry" : { "coordinates" : [-104.824097,38.849648], "type" : "Point"}, "id" : "33", "properties" : { "NAME" : "Dern House", "IMG_URL" : "\/dotAsset\/e5f6869f-7d93-4b81-8641-1ca27452cd15.jpg", "IMG_ID" : "e5f6869f-7d93-4b81-8641-1ca27452cd15", "SHORT_DESC" : "Hulbert Center for Southwest Studies", "BODY" : "", "ADDRESS" : "", "LINK" : "", "BUILDING_NUMBER" : "24", "HOURS" : "", "STREET_VIEW_LINK" : "", "LOCATION_TYPE" : "General College Facilities" }, "type" : "Feature" }, { "geometry" : { "coordinates" : [-104.825844,38.850098], "type" : "Point"}, "id" : "34", "properties" : { "NAME" : "Edith Gaylord House", "IMG_URL" : "\/dotAsset\/f39e3d9a-e6d1-4720-a415-90c72083ec79.jpg", "IMG_ID" : "f39e3d9a-e6d1-4720-a415-90c72083ec79", "SHORT_DESC" : "Apartments; Campus Safety Office", "BODY" : "<p>The Edith Gaylord Apartments are provided for upperclassmen. These apartments allow students to experience more independence without having to leave campus, which is the epicenter of student life. Thanks to a student-run initiative, the solar panels were added in the spring of 2008 in an effort to make CC a more sustainable campus.<\/p>", "ADDRESS" : "", "LINK" : "http:\/\/www.coloradocollege.edu\/basics\/campus\/tour\/western-ridge.dot", "BUILDING_NUMBER" : "52", "HOURS" : "", "STREET_VIEW_LINK" : "https:\/\/maps.google.com\/maps?q=Colorado+College+Office+of+Admissions,+Colorado+Springs,+Colorado&hl=en&sll=38.875684,-104.758359&sspn=0.273695,0.715485&oq=colorado+college+&t=h&hq=Colorado+College+Office+of+Admissions,+Colorado+Springs,+Colorado&layer=c&cbll=38.849121,-104.826661&panoid=e1VsTfGcSow3Rojbo-nTFg&cbp=13,318.39,,0,-15.18&ie=UTF8&source=embed&ll=38.848917,-104.826663&spn=0.000709,0.00114&z=19&output=svembedmfe", "LOCATION_TYPE" : "Residence Halls/Houses" }, "type" : "Feature" }, { "geometry" : { "coordinates" : [-104.824173,38.846188], "type" : "Point"}, "id" : "35", "properties" : { "NAME" : "Edith Kinney Gaylord Cornerstone Arts Center", "IMG_URL" : "\/dotAsset\/90d6981f-28c9-4dc8-866b-30fdd66c4263.jpg", "IMG_ID" : "90d6981f-28c9-4dc8-866b-30fdd66c4263", "SHORT_DESC" : "I.D.E.A. Space; Richard F. Celeste Theatre; Departments: Drama & Dance; Film & New Media", "BODY" : "<p>The Edith Kinney Gaylord Cornerstone Arts Center is an interdisciplinary arts building allowing for innovative, experimental, and collaborative projects in a unique space with state-of-the-art technology. The large entranceway can be used as a performance space for theater or dance shows. The catwalks above the main space can be utilized for this purpose, or to display artwork. Here you will also find the I.D.E.A. space, an exhibition space for works combining art with other disciplines. The building meets the Leadership in Energy and Environmental Design, or LEED criteria for green building standards.<\/p>", "ADDRESS" : "825 N. Cascade Ave.", "LINK" : "http:\/\/www.coloradocollege.edu\/basics\/campus\/tour\/cornerstone.dot", "BUILDING_NUMBER" : "3", "HOURS" : "<p><span>Unlocked: Monday &ndash; Friday from 7:30 a.m. - 7:30p.m.<\/span><br \/><span>Card Access: Sunday &ndash; Saturday from 7 a.m. - midnight<\/span><\/p>", "STREET_VIEW_LINK" : "https:\/\/maps.google.com\/maps?q=Colorado+College+Office+of+Admissions,+Colorado+Springs,+Colorado&hl=en&sll=38.875684,-104.758359&sspn=0.273695,0.715485&oq=colorado+college+&t=h&hq=Colorado+College+Office+of+Admissions,+Colorado+Springs,+Colorado&layer=c&cbll=38.846453,-104.824583&panoid=oqVjTxXNwM-4NMj_CKQIKw&cbp=13,130.14,,0,-12.87&ie=UTF8&source=embed&ll=38.846198,-104.824583&spn=0.000886,0.000944&z=19&output=svembedmfe", "LOCATION_TYPE" : "General College Facilities" }, "type" : "Feature" }, { "geometry" : { "coordinates" : [-104.827072,38.849751], "type" : "Point"}, "id" : "36", "properties" : { "NAME" : "El Diente Apartments", "IMG_URL" : "", "IMG_ID" : "", "SHORT_DESC" : "", "BODY" : "", "ADDRESS" : "", "LINK" : "http:\/\/www.coloradocollege.edu\/basics\/campus\/tour\/western-ridge.dot", "BUILDING_NUMBER" : "51", "HOURS" : "", "STREET_VIEW_LINK" : "https:\/\/maps.google.com\/maps?q=Colorado+College+Office+of+Admissions,+Colorado+Springs,+Colorado&hl=en&sll=38.875684,-104.758359&sspn=0.273695,0.715485&oq=colorado+college+&t=h&hq=Colorado+College+Office+of+Admissions,+Colorado+Springs,+Colorado&layer=c&cbll=38.849121,-104.826661&panoid=e1VsTfGcSow3Rojbo-nTFg&cbp=13,318.39,,0,-15.18&ie=UTF8&source=embed&ll=38.848917,-104.826663&spn=0.000709,0.00114&z=19&output=svembedmfe", "LOCATION_TYPE" : "Residence Halls/Houses" }, "type" : "Feature" }, { "geometry" : { "coordinates" : [-104.827187,38.84688317421164], "type" : "Point"}, "id" : "37", "properties" : { "NAME" : "El Pomar Sports Center", "IMG_URL" : "\/dotAsset\/fb4f8ace-e098-4864-bdb2-b54f2ff10f88.jpg", "IMG_ID" : "fb4f8ace-e098-4864-bdb2-b54f2ff10f88", "SHORT_DESC" : "Adam F. Press Fitness Center; Athletics and Athletics Marketing; Auxilary Gym; Jerry Carle Varsity Strength & Conditioning; Reid Arena; Ritt Kellogg Climbing Gym; and Squash & Racquetball Courts; Department: Human Biology and Kinesiology", "BODY" : "<p>This large building to the south of the Washburn and Stewart fields is the El Pomar Sports center. This facility includes two large gyms, a swimming pool (the recently refurbished Schlessman Natatorium), a workout room, aerobic studios, a climbing wall, racquetball and squash courts, a turf room, locker rooms, and a running track. The upper level of the center features the Great Hall, which honors the history of CC athletics, its standouts including many All-Americans, and its Athletics Hall of Fame. Adjacent to the sports center is Honnen Ice Rink, which is free for students and employees (and is also well utilized by the community at large). See more about athletics facilities.<\/p>\n<p>Below El Pomar and adjacent to CC's tennis courts and athletic fields is the Monument Valley Park and trail. Heavily used by runners, bikers and walkers, the trail is part of an extensive trail system in the Pikes Peak Region. A few years ago, a moose migrated down from the mountains and lived around Monument Valley for about two months -- don't believe us? See the photos.<\/p>", "ADDRESS" : "44 W. Cache La Poudre St.", "LINK" : "http:\/\/www.coloradocollege.edu\/basics\/campus\/tour\/el-pomar.dot", "BUILDING_NUMBER" : "8", "HOURS" : "<p><a title=\"El Pomar Hours\" href=\"http:\/\/www.coloradocollege.edu\/lifeatcc\/recreation\/facilities\/elpomar\/\">El Pomar Hours<\/a><\/p>", "STREET_VIEW_LINK" : "https:\/\/maps.google.com\/maps?q=Colorado+College+Office+of+Admissions,+Colorado+Springs,+Colorado&hl=en&sll=38.875684,-104.758359&sspn=0.273695,0.715485&oq=colorado+college+&t=h&hq=Colorado+College+Office+of+Admissions,+Colorado+Springs,+Colorado&layer=c&cbll=38.846707,-104.826894&panoid=7b6dkTOCqpLbleWaBQaVCQ&cbp=13,337.53,,0,-13.22&ie=UTF8&source=embed&ll=38.846502,-104.826896&spn=0.000709,0.00114&z=19&output=svembedmfe", "LOCATION_TYPE" : "General College Facilities" }, "type" : "Feature" }, { "geometry" : { "coordinates" : [-104.825836,38.850746], "type" : "Point"}, "id" : "38", "properties" : { "NAME" : "Elbert House", "IMG_URL" : "\/dotAsset\/10b16006-1017-4649-86d5-e32e634363ba.jpg", "IMG_ID" : "10b16006-1017-4649-86d5-e32e634363ba", "SHORT_DESC" : "West Wing: Italian; East Wing (ELF): Japanese and Chinese", "BODY" : "", "ADDRESS" : "", "LINK" : "http:\/\/www.coloradocollege.edu\/basics\/campus\/tour\/language-houses.dot", "BUILDING_NUMBER" : "72", "HOURS" : "", "STREET_VIEW_LINK" : "https:\/\/maps.google.com\/maps?q=Colorado+College+Office+of+Admissions,+Colorado+Springs,+Colorado&hl=en&sll=38.875684,-104.758359&sspn=0.273695,0.715485&oq=colorado+college+&t=h&hq=Colorado+College+Office+of+Admissions,+Colorado+Springs,+Colorado&layer=c&cbll=38.850447,-104.825322&panoid=unjvC0YNTTJvCKSrNSJVOA&cbp=13,53.7,,0,5.33&ie=UTF8&source=embed&ll=38.850243,-104.825324&spn=0.000709,0.00114&z=19&output=svembedmfe", "LOCATION_TYPE" : "Residence Halls/Language Houses" }, "type" : "Feature" }, { "geometry" : { "coordinates" : [-104.82956483960152,38.85156858272624], "type" : "Point"}, "id" : "39", "properties" : { "NAME" : "Facilities Ground Shop", "IMG_URL" : "", "IMG_ID" : "", "SHORT_DESC" : "", "BODY" : "", "ADDRESS" : "", "LINK" : "", "BUILDING_NUMBER" : "15", "HOURS" : "", "STREET_VIEW_LINK" : "", "LOCATION_TYPE" : "General College Facilities" }, "type" : "Feature" }, { "geometry" : { "coordinates" : [-104.82975795865059,38.852106664254805], "type" : "Point"}, "id" : "40", "properties" : { "NAME" : "Facilities Purchasing & Support Services", "IMG_URL" : "", "IMG_ID" : "", "SHORT_DESC" : "", "BODY" : "", "ADDRESS" : "", "LINK" : "", "BUILDING_NUMBER" : "16", "HOURS" : "", "STREET_VIEW_LINK" : "", "LOCATION_TYPE" : "General College Facilities" }, "type" : "Feature" }, { "geometry" : { "coordinates" : [-104.823677,38.849594], "type" : "Point"}, "id" : "41", "properties" : { "NAME" : "Gill House", "IMG_URL" : "\/dotAsset\/cd9c8f26-7313-4770-9f5f-c779dbf6084f.jpg", "IMG_ID" : "cd9c8f26-7313-4770-9f5f-c779dbf6084f", "SHORT_DESC" : "", "BODY" : "", "ADDRESS" : "", "LINK" : "", "BUILDING_NUMBER" : "26", "HOURS" : "", "STREET_VIEW_LINK" : "", "LOCATION_TYPE" : "General College Facilities" }, "type" : "Feature" }, { "geometry" : { "coordinates" : [-104.826904,38.850128], "type" : "Point"}, "id" : "42", "properties" : { "NAME" : "Hamlin House", "IMG_URL" : "\/dotAsset\/cfba02e0-eb47-4e2e-a0da-6cc235663097.jpg", "IMG_ID" : "cfba02e0-eb47-4e2e-a0da-6cc235663097", "SHORT_DESC" : "", "BODY" : "", "ADDRESS" : "1148 N. Cascade", "LINK" : "", "BUILDING_NUMBER" : "81", "HOURS" : "", "STREET_VIEW_LINK" : "https:\/\/maps.google.com\/maps?q=Colorado+College+Office+of+Admissions,+Colorado+Springs,+Colorado&hl=en&sll=38.875684,-104.758359&sspn=0.273695,0.715485&oq=colorado+college+&t=h&hq=Colorado+College+Office+of+Admissions,+Colorado+Springs,+Colorado&layer=c&cbll=38.850447,-104.825322&panoid=unjvC0YNTTJvCKSrNSJVOA&cbp=13,53.7,,0,5.33&ie=UTF8&source=embed&ll=38.850243,-104.825324&spn=0.000709,0.00114&z=19&output=svembedmfe", "LOCATION_TYPE" : "Faculty/Staff Housing" }, "type" : "Feature" }, { "geometry" : { "coordinates" : [-104.824921,38.850727], "type" : "Point"}, "id" : "43", "properties" : { "NAME" : "Haskell House", "IMG_URL" : "\/dotAsset\/9e738946-f95e-4704-83dd-c536bd549ad2.jpg", "IMG_ID" : "9e738946-f95e-4704-83dd-c536bd549ad2", "SHORT_DESC" : "French", "BODY" : "", "ADDRESS" : "", "LINK" : "http:\/\/www.coloradocollege.edu\/basics\/campus\/tour\/language-houses.dot", "BUILDING_NUMBER" : "73", "HOURS" : "", "STREET_VIEW_LINK" : "https:\/\/maps.google.com\/maps?q=Colorado+College+Office+of+Admissions,+Colorado+Springs,+Colorado&hl=en&sll=38.875684,-104.758359&sspn=0.273695,0.715485&oq=colorado+college+&t=h&hq=Colorado+College+Office+of+Admissions,+Colorado+Springs,+Colorado&layer=c&cbll=38.850447,-104.825322&panoid=unjvC0YNTTJvCKSrNSJVOA&cbp=13,53.7,,0,5.33&ie=UTF8&source=embed&ll=38.850243,-104.825324&spn=0.000709,0.00114&z=19&output=svembedmfe", "LOCATION_TYPE" : "Residence Halls/Language Houses" }, "type" : "Feature" }, { "geometry" : { "coordinates" : [-104.826233,38.847061], "type" : "Point"}, "id" : "44", "properties" : { "NAME" : "Honnen Ice Arena", "IMG_URL" : "\/dotAsset\/69c44ff0-5e3e-4fa6-bb9e-c4fa21266917.jpg", "IMG_ID" : "69c44ff0-5e3e-4fa6-bb9e-c4fa21266917", "SHORT_DESC" : "", "BODY" : "<p>Honnen Ice Arena provides a space for student activities, ranging from free-skate to pick-up games of hockey and broomball.<\/p>", "ADDRESS" : "30 W. Cache La Poudre St.", "LINK" : "", "BUILDING_NUMBER" : "6", "HOURS" : "<p>Monday - Friday from 8 a.m. -10 p.m.<\/p>", "STREET_VIEW_LINK" : "https:\/\/maps.google.com\/maps?q=Colorado+College+Office+of+Admissions,+Colorado+Springs,+Colorado&hl=en&sll=38.875684,-104.758359&sspn=0.273695,0.715485&oq=colorado+college+&t=h&hq=Colorado+College+Office+of+Admissions,+Colorado+Springs,+Colorado&layer=c&cbll=38.848676,-104.824089&panoid=_V9L9oPHFsMseeBz0TqTPQ&cbp=13,62.6,,0,-2.68&ie=UTF8&source=embed&ll=38.848472,-104.82409&spn=0.000709,0.00114&z=19&output=svembedmfe", "LOCATION_TYPE" : "General College Facilities" }, "type" : "Feature" }, { "geometry" : { "coordinates" : [-104.824059,38.849918], "type" : "Point"}, "id" : "45", "properties" : { "NAME" : "Interdisciplinary House", "IMG_URL" : "\/dotAsset\/eea97f1b-4409-4ed4-b7d4-a13d73df17c8.jpg", "IMG_ID" : "eea97f1b-4409-4ed4-b7d4-a13d73df17c8", "SHORT_DESC" : "Departments: Asian Studies; Feminist and Gender Studies; and Race and Ethnic Studies", "BODY" : "", "ADDRESS" : "", "LINK" : "", "BUILDING_NUMBER" : "23", "HOURS" : "", "STREET_VIEW_LINK" : "", "LOCATION_TYPE" : "General College Facilities" }, "type" : "Feature" } ], "type" : "FeatureCollection" };
		L.geoJson(bldgData, {
			onEachFeature: function(feature, layer) {
				var thisLayer = layer;
				// layer.bindPopup(feature.properties.NAME);
				var $listItem = $('<li>').html(feature.properties.NAME).appendTo('#toolbar ul');
				$listItem.on('click', function(){
					buildingLayers.clearLayers(); // remove existing markers
					var thisLat = thisLayer.feature.geometry.coordinates[1];
					var thisLon = thisLayer.feature.geometry.coordinates[0];
					map.setView([thisLat,thisLon]);
					//thisLayer.addTo(mymap);
					buildingLayers.addLayer(thisLayer);
					var notifyIcon = L.divIcon({
						className: 'notify-icon',
						iconSize: [25, 25],
						html: '<span></span>'
					});
					var notifyMarker = L.marker([thisLat,thisLon], {icon: notifyIcon});
					buildingLayers.addLayer(notifyMarker);
					if(map.getSize().x < 768){
						$('#toolbar').removeClass('open');
					}
					thisLayer.on('click', function(){alert(thisLayer.feature.properties.NAME + " :: " + thisLayer.feature.properties.BODY);});
				});
			}
		});
	
	
		$(document).ready(function () {
			map.addLayer(carMarkers);
			
			map.on('zoomend', function() {
				if (map.getZoom() < 12){
					map.removeLayer(stockMarkers);
					console.log("NOT found");
				}
				else {
					map.addLayer(stockMarkers);
					console.log("found");
				}
			});
			
			
			setTimeout(function () {
				window.dispatchEvent(new Event("resize"));
			}, 500);
			
			setInterval(function () {
				map.invalidateSize();
			}, 0);
			
			document.getElementById('tab3').addEventListener('click', ()=>{
				document.getElementById("contentmap-1").style.display = "none";
				document.getElementById("contentmap-2").style.display = "block";
			});
			document.getElementById('tab1').addEventListener('click', ()=>{
				document.getElementById("contentmap-1").style.display = "block";
				document.getElementById("contentmap-2").style.display = "none";
			});
			document.getElementById('tab2').addEventListener('click', ()=>{
				document.getElementById("contentmap-1").style.display = "block";
				document.getElementById("contentmap-2").style.display = "none";
			});
		});
	</script>
	
	
	
	
	
	<script>	
		let array1 = [];
		let array2 = [];
		let array3 = [];	
	
		
		window.onload = function() {


			delayedGreeting();
			
						
			function task1() {
				var array = [];
				var m = new Memvars();
				var p = window.location.href.toString();
				p = p.substring(0, p.indexOf("Main/")) + 'AppService/EService.asmx/' + "GetData";//GetValue	
				var controller = 'DMTTXE'; 				
				
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
						//console.log(msg.d);
						for (let item of msg.d) {
							array.push(item);	
						}
						array1 = array;
					},
					complete: function() {
						//console.log(array1);
						var timeout = 10000000;
						//change in data, since timeout was already set on previous data change. Hence, update timeout value too and clear previous timeout
						if(typeof timer!='undefined') {
							clearTimeout(timer);
							timeout = 20*1000;
						}
						// Schedule the next request when the current one's complete
						//var timer = setTimeout(task1, timeout);
					},
					error: function (e) {
					// loi o day
						console.log(e);
					}
				});
				return array;
			};
						
			/*(*/ function task2() {
				var array = [];
				$.ajax({
					url: 'https://iswift.com.vn:444/api/dmdcxe', 
					success: function(data) {
						// ket qua o day
						//console.log(msg.d);
						for (let item of data) {
							array.push(item);	
						}
						array2 = array;
					},
					complete: function() {
						//console.log(array2);
						var timeout = 10000000;
						//change in data, since timeout was already set on previous data change. Hence, update timeout value too and clear previous timeout
						if(typeof timer!='undefined') {
							clearTimeout(timer);
							timeout = 20*1000;
						}
						// Schedule the next request when the current one's complete
						//var timer = setTimeout(task2, timeout);
					},
					error: function (e) {
					// loi o day
						console.log(e);
					}
				});
				return array;
			}; //)();
			
			function task3() {
				var array = [];
				var m = new Memvars();	
				var p = window.location.href.toString();
				p = p.substring(0, p.indexOf("Main/")) + 'AppService/EService.asmx/' + "GetData";//GetValue			
				var controller = 'KHO';
				
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
						//console.log(msg.d);
						for (let item of msg.d) {
							array.push(item);	
						}
						array3 = array;
					},
					complete: function() {
						//console.log(array3);
						var timeout = 3000;
						//change in data, since timeout was already set on previous data change. Hence, update timeout value too and clear previous timeout
						if(typeof timer!='undefined') {
							clearTimeout(timer);
							timeout = 20*1000;
						}
						// Schedule the next request when the current one's complete
						//var timer = setTimeout(task3, timeout);
						//var timer = setTimeout(task4, timeout);
						//var timer = setTimeout(task5, timeout);
					},
					error: function (e) {
					// loi o day
						console.log(e);
					}
				});
				return array;
			};
			
			function task4() {
				//console.log("task 4");
				let index = 1;
				

				let carStatus0 = 0;	
				let carStatus1 = 0;
				let carStatus5 = 0;
				let carStatus6 = 0;
				let carStatus9 = 0;
				document.getElementById("CarData").innerHTML = "";
				carMarkers.clearLayers();
				map.addLayer(carMarkers);
				document.getElementsByClassName("item-block items-container")[0].innerHTML = "";
				
				for (let i of array1)
				{
					//console.log(i.ma_xe);
					for (const j of array2)
					{
						//console.log(j.ma_xe);
						if (i.ma_xe == j.ma_xe) {
							//console.log(i.ma_xe + ' == ' + j.ma_xe);	
							
							var carIcon = "";
							var carColor = "";
							var carStatus = "";
							
							/*Condition*/
							i.tt_xe == 1 ? (carIcon = 'class="car-green"') && (carColor = markerCarGreen) && (carStatus = 'Sẵn sàng') && (carStatus1++) : i.tt_xe == 5 ? (carIcon = 'class="car-red"') && (carColor = markerCarRed) && (carStatus = 'Hư hỏng') && (carStatus5++) : i.tt_xe == 6 ? (carIcon = 'class="car-blue"') && (carColor = markerCarBlue) && (carStatus = 'Chờ lệnh') && (carStatus6++) : i.tt_xe == 9 ? (carIcon = 'class="car-yellow"') && (carColor = markerCarYellow) && (carStatusInfo = 'Bảo trì') && (carStatus9++) : (carIcon = 'class="car-black"') && (carColor = markerCarBlack) && (carStatusInfo = 'Khác') && (carStatus0++);

							/*Table row*/
							var row = "";
							row += '<tr title="'+ i.ma_xe + ' - ' + carStatus +'" onclick="map.setView([' + j.tdx + ',' + j.tdy + '], 16)"><th scope="row">' + i.ma_xe + '</th><td '+ carIcon +'></td><td>'+ index +'</td><td>' + i.ten_xe + '</td><td>' + i.dien_thoai + '</td><td>' + i.cmnd_so + '</td><td>' + i.ten_unit + '</td><td title="' + i.dia_chi + '">' + i.dia_chi + '</td></tr>';

							// get the current table body html as a string, and append the new row
							var html = document.getElementById("CarData").innerHTML + row;

							// set the table body to the new html code
							document.getElementById("CarData").innerHTML = html;
							
							
							/*
							var icon = "";
							icon += '<div class="icon Github">' +
										'<div class="tooltip-icon">Github</div>' +
										'<span '+ carIcon +' ><p style="opacity: 0;">'+ index +'</p></span>' +	
										'<span><p>'+ index +'</p></span>' +
									'</div>';
									
							// get the current table body html as a string, and append the new row
							var wrap = document.getElementById("wrap-list").innerHTML + icon;

							// set the table body to the new html code
							document.getElementById("wrap-list").innerHTML = wrap;
							*/
							

							var marker = L.marker([j.tdx, j.tdy], {icon: carColor}, {alt: i.ma_xe}).bindTooltip('<span class="m-font m-weight">'+i.ma_xe+' - '+carStatus+'</span>', {direction: 'top', permanent: true, sticky: false, offset: [-10, -30], opacity: 0.75, className: 'leaflet-tooltip-own' }).openTooltip().bindPopup(
								
								'<div class="responsive-two-columns f-f-verdana">' +
									'<div class="left_col"><strong>Mã xe: </strong>' + i.ma_xe + '</div>' +
									'<div class="left_col"><strong>Tên xe: </strong>' + i.ten_xe + '</div>' +
									'<div class="right_col"><strong>Hoành độ: </strong>' + j.tdx + '</div>' +
									'<div class="right_col"><strong>Tung độ: </strong>' + j.tdy + '</div>' +
									'<div class="left_col"><strong>Tốc độ: </strong>' + '0/km' + '</div>' +
									'<div class="left_col"><strong>Tổng KM: </strong>' + '0 KM' + '</div>' +
									'<div class="right_col"><strong>Thời gian dừng: </strong>' + '0H' + '</div>' +
									'<div class="right_col"><strong>Thời gian kết nối: </strong>' + '0H' + '</div>' +
									'<div class="left_col" style="width: 100%;"><strong>Trạng thái xe: </strong>' + carStatus + '</div>' +
									'<div class="right_col" style="width: 100%;"><strong>Ngày: </strong>' + j.ngay + '</div>' +
									'<div class="left_col" style="width: 100%;"><strong>Địa chỉ: </strong>' + 'Thành phố Hồ Chí Minh, Việt Nam' + '</div>' +
								'</div>'
								
							);
							
							//Add Layer show/hide marker stock when zoom in/out
							carMarkers.addLayer(marker);							
			
							/*Add map unit*/
							var li = "";
							li += '<div class="item f-f-verdana">' +
									'<div class="overflow">' +
										'<i class="add" id="add'+i.ma_xe+'">+</i>' +
									'</div>' +
									'<div class="item-detail" style="display: flex;">' +
										'<h4>'+ i.ten_xe +'</h4> &nbsp;&nbsp;&nbsp;' +
										'<span '+ carIcon +'></span>' +
										'<p class="item-tdx dp-none">'+ j.tdx +'</p>' +
										'<p class="item-tdy dp-none">'+ j.tdy +'</p>' +
										'<p class="item-ngay dp-none">'+ j.ngay +'</p>' +
										'<p class="item-status dp-none">'+ i.tt_xe +'</p>' +
										'<div class="prices dp-none">' +
											'<p class="price">'+ i.ma_xe + '</p>' +
										'</div>' +
									'</div>' +
								'</div>';
							
							const collection = document.getElementsByClassName("item-block items-container");
							//collection[0].style.backgroundColor = "red";
							
							// get the current table body html as a string, and append the new row
							var ol = collection[0].innerHTML + li;

							// set the table body to the new html code
							collection[0].innerHTML = ol;
							
							$(function () {
								$("#items-basket").text("(" + $("#list-item").children().length + ")");
								
								$(".item").on("click", function () {								
									$(this).addClass("disabled");
									//var unitmap;
									//add items to basket
									$(this).each(function () {
										var name = $(this).children(".item-detail").children("h4").text();
										var tdx = $(this).children(".item-detail").children(".item-tdx").text();
										var tdy = $(this).children(".item-detail").children(".item-tdy").text();										
										var ngay = $(this).children(".item-detail").children(".item-ngay").text();
										var status = $(this).children(".item-detail").children(".item-status").text();
										var code = $(this).children(".item-detail").children(".prices").children(".price").text();
										var removeli = "<div class='removeli' onclick='removeColor("+code+")'> X </div>";
										var removeliWeather = "<div class='removeli-weather'> X </div>";
										document.getElementById("add" + code).style.backgroundColor = "#00918d";
										removeColor = function (max) {	
											document.getElementById("add" + max).style.backgroundColor = "rgba(217, 138, 58, 1)";
										};	
										var cena =
											"<span class='eachPrice'>" +
												parseFloat(
												$(this)
												.children(".item-detail")
												.children(".prices")
												.children(".price")
												.text()
											) +
											"</span>";
										//console.log(status);
										var color;
										var carStatusInfo = "";
										status == 1 ? (color = markerCarGreen) && (carStatusInfo = 'Sẵn sàng') : status == 5 ? (color = markerCarRed) && (carStatusInfo = 'Hư hỏng') : status == 6 ? (color = markerCarBlue) && (carStatusInfo = 'Chờ lệnh') : status == 9 ? (color = markerCarYellow) && (carStatusInfo = 'Bảo trì') : (color = markerCarBlack) && (carStatusInfo = 'Khác');
										if ($("#map" + code).length) {
											console.log("Map container is already initialized.");
										} 
										else {										
											$("#list-item").append(
												"<li style='height: var(--cardHeight); width: var(--cardWidth);'><div class='cssMap' style='display: block !important;' id='map" + code + "'><p class='i-upmap f-f-verdana'> Mã xe: " + name + "&#09; - &#09;" + carStatusInfo + "</p><button class='p-upmap' id='btnpopup"+ code +"'><i class='fa fa-arrows-alt' aria-hidden='true'></i></button></div>" + removeli + "</li>"
											);	
											$(".flexcontainer").append(
												'<div style="width: var(--cardWidth); height: var(--cardHeight); display: block;" class="box-wap box f-f-verdana'+ index +'-wap">' + code +  
													'<p id="city'+code+'" class="city">Allow location</p>' +
													'<p class="date">' +
														'<h4 id="date'+code+'">on your browser</h4>' +
													'</p>' +
													'<hr class="style-one dp-none"></hr>' +																													
													'<button class="well btn-lg" id ="fTemp'+code+'"></button>' +
													'<div class="well dp-none">' +
														'<p id="WeatherType'+code+'"></p>' +
														'<p id="pressure'+code+'"></p>' +
														'<p id="speed'+code+'"></p>' +
														'<p id="humidity'+code+'"></p>' +
													'</div>' +
													'<hr class="style-one"></hr>' +
													'<p id="time'+code+'"></p>' +
												removeliWeather + '</div>'
												
												/*
												"<div class='card' style='position: relative;'>" + 
													'<div class="Shell block-background'+code+'">' +
														'<div class="town">' +
															'<p id="city'+code+'" class="city">Allow location</p>' +
															'<p class="date">' +
																'<h4 id="date'+code+'">on your browser</h4>' +
															'</p>' +
															'<hr class="style-one dp-none"></hr>' +																													'<button class="well btn-lg" id ="fTemp'+code+'"></button>' +
															'<div class="well dp-none">' +
																'<p id="WeatherType'+code+'"></p>' +
																'<p id="pressure'+code+'"></p>' +
																'<p id="speed'+code+'"></p>' +
																'<p id="humidity'+code+'"></p>' +
															'</div>' +
															'<hr class="style-one"></hr>' +
															'<p id="time'+code+'"></p>' +
														'</div>' +
													'</div>' +
													removeliWeather + 
												"</div>"
*/												
											);
											//"<li style='height:"+ defaultHeight +"'><div class='cssMap' style='display: block !important; position: relative;' id='weather" + code + "'><p class='i-upmap'> Mã xe: " + name + "&#09; - &#09;" + carStatusInfo + "</p><button class='p-upmap' id='btnweather"+ code +"'><i class='fa fa-arrows-alt' aria-hidden='true'></i></button></div>" + removeliWeather + "</li>"											
								
											
											var loc = 'https://nominatim.openstreetmap.org/reverse?format=jsonv2&lat='+tdx+'&lon='+tdy;
											console.log(loc);
											fetch(loc).then(async (response) => {
												const data = await response.json();
												$("#map" + code).append(
													"<p class='i-downmap'> Địa chỉ: " + data.display_name + "</p>"
												);
												console.log(data);
											});
																				

											// initalize popup
											$('#btnpopup' + code).magnificPopup({
											
												items: {
													src: '#map' + code,
													type: 'inline',
													mainClass: 'white-popup',
													key: "my-popup",
												}
											});		

											// initalize popup
											$('#btnweather' + code).magnificPopup({
											
												items: {
													src: '#weather' + code,
													type: 'inline',
													mainClass: 'white-popup',
													key: "my-popup",
												}
											});											
																				
											var unitmap = L.map('map' + code, {
												attributionControl: false,
												center: [tdx, tdy],
												zoom: 15,
												zoomControl: false
											});
											
											var layermap = L.tileLayer('http://{s}.google.com/vt/lyrs=m&x={x}&y={y}&z={z}',{
												maxZoom: 20,
												subdomains:['mt0','mt1','mt2','mt3']
											}).addTo(unitmap);
											
											/*Add marker car*/
											var markermap = L.marker([tdx, tdy], {icon: color}, {alt: code}).addTo(unitmap).bindTooltip('<span class="m-font m-weight">'+code+' - '+carStatusInfo+'</span>', {direction: 'top', permanent: true, sticky: false, offset: [-10, -30], opacity: 0.75, className: 'leaflet-tooltip-own' }).bindPopup(
					
												'<div class="responsive-two-columns">' +
													'<div class="left_col"><strong>Mã xe: </strong>' + code + '</div>' +
													'<div class="left_col"><strong>Tên xe: </strong>' + name + '</div>' +
													'<div class="right_col"><strong>Hoành độ: </strong>' + tdx + '</div>' +
													'<div class="right_col"><strong>Tung độ: </strong>' + tdy + '</div>' +
													'<div class="left_col"><strong>Tốc độ: </strong>' + '0/km' + '</div>' +
													'<div class="left_col"><strong>Tổng KM: </strong>' + '0 KM' + '</div>' +
													'<div class="right_col"><strong>Thời gian dừng: </strong>' + '0H' + '</div>' +
													'<div class="right_col"><strong>Thời gian kết nối: </strong>' + '0H' + '</div>' +
													'<div class="left_col" style="width: 100%;"><strong>Trạng thái xe: </strong>' + carStatusInfo + '</div>' +
													'<div class="right_col" style="width: 100%;"><strong>Ngày: </strong>' + ngay + '</div>' +
													'<div class="left_col" style="width: 100%;"><strong>Địa chỉ: </strong>' + 'Thành phố Hồ Chí Minh, Việt Nam' + '</div>' +										
												'</div>'
												
												
											).openTooltip();
											
											/*
											var unitmapweather = L.map('weather' + code, {
												attributionControl: false,
												center: [tdx, tdy],
												zoom: 15,
												zoomControl: false
											});
											
											var layermapweather = L.tileLayer('http://{s}.google.com/vt/lyrs=m&x={x}&y={y}&z={z}',{
												maxZoom: 20,
												subdomains:['mt0','mt1','mt2','mt3']
											}).addTo(unitmapweather);
											*/
											
											setTimeout(function () {
												window.dispatchEvent(new Event("resize"));
											}, 500);
											
											setInterval(function () {
												unitmap.invalidateSize();
												//unitmapweather.invalidateSize();
											}, 0);

											//number of items in basket
											$("#items-basket").text("(" + $("#list-item").children().length + ")");
											$("#items-basket").text();

											//calculate total price
											var totalPrice = 0;
											$(".eachPrice").each(function () {
												var cenaEach = parseFloat($(this).text());
												totalPrice += cenaEach;
											});
											$("#total-price").text(totalPrice + "$");
											
											
											//-------------------------------------
											var lat, long, city, country, state, fTemp, cTemp, kelvin, WeatherType, humidity, humidity, pressure, wind;
											  
											//for navigator FCC information https://www.freecodecamp.org/challenges/get-geolocation-data
											//grabs the lat/long based on the browser
											lat = tdx;
											long = tdy;
											//generates the correct api Long/Lati based on location.
											var api = 'https://api.openweathermap.org/data/2.5/weather?lat='+lat+'&lon='+long+'&appid=d3253f20e7d9c67cc26b82534ebc33b3';
											console.log(api);
											
											//Evaluates location data based on IP 
											fetch("https://ipinfo.io/json").then(async (response) => {
												const data = await response.json();
												console.log(data);
												city = data.city;
												state = data.region;
												country = data.country;

												$("#city" + code).html(city);
												$("#country" + code).html(state + ", " + country);
											});
										 

											//this section calculates and stores weather info and time
											fetch(api).then(async (response) => {
												const data = await response.json();
												console.log(data);
												//this is the clock and date
												setInterval(myTimer, 1000); 
												function myTimer() {
													var t = new Date();
													var time = t.toLocaleTimeString(navigator.language, {
													hour: "2-digit",
													minute: "2-digit",
													second: "2-digit"
													});
													var d= new Date();
													$("#date" + code).html(d.toDateString());
													$("#time" + code).html(time);
												}
									  
												pressure  = data.main.pressure;
												WeatherType = data.weather[0].description;
												wind = data.wind.speed;            
												kelvin = data.main.temp;//API only stores in Kelvin, needs to be converted
									  
												fTemp = (kelvin *(9/5)-459.67).toFixed(0);
												cTemp = (kelvin-273).toFixed(0);
									  
												humidity = data.main.humidity;
												//stores data to be used by html
												$("#WeatherType" + code).html(WeatherType);
												$("#humidity" + code).html(fTemp + "% humidity");
												$("#fTemp" + code).html(fTemp + " &#8457;");
												$("#pressure" + code).html("Pressure: " + pressure + " mbar");
												$("#speed" + code).html("Wind speed: " + wind + " kph");
											  
												//setting up the ability to switch between C / F
												var tempSwap = true;
												$("#fTemp" + code).click(function(){
													if(tempSwap===false){
														$("#fTemp" + code).html(fTemp + " &#8457;"); 
														tempSwap=true;
													}
													else{
														$("#fTemp" + code).html(cTemp + " &#8451;");
														tempSwap=false;
													}   
												});
												
									  
												//changes the backgrounds based on the weather conditions
												//https://openweathermap.org/weather-conditions
												var WeatherID = data.weather[0].id;
												   
												if (WeatherID >= 200 & WeatherID <= 232){ 
													$('.block-background' + code).css('background-image','url(https://s.hswstatic.com/gif/thunderstorm-orig.jpg)');
												} 
												  
												else if ((WeatherID >= 300 & WeatherID <= 321)||(WeatherID >= 500 && WeatherID <= 531)){ 
													$('.block-background' + code).css('background-image','url(https://res.cloudinary.com/sp7/image/upload/v1515015756/rain-day_k2zei1.jpg)');
												} 
															
												else if (WeatherID >= 600 & WeatherID <= 622){ 
													$('.block-background' + code).css('background-image','url(https://res.cloudinary.com/sp7/image/upload/v1515019603/snow-night_z9phfv.jpg)');
												}    
												  
												else if (WeatherID >= 701 & WeatherID <= 781){ 
													$('.block-background' + code).css('background-image','url(https://s19.postimg.org/fcu3v2mir/fog.jpg)');
												}
											  
												else if (WeatherID === 800){  
													$('.block-background' + code).css('background-image','url(https://res.cloudinary.com/sp7/image/upload/v1515016423/clear-day_iitx4i.jpg)');
												}
													
												else if (WeatherID >= 801 & WeatherID <= 804){ 
													$('.block-background' + code).css('background-image','url(https://jontynz.files.wordpress.com/2017/10/dsc04310.jpg)');
												}
											  
												else if (WeatherID >= 900 & WeatherID <=906){
													$('.block-background' + code).css('background-image','url(http://extremeweathergeek.yolasite.com/resources/hurricane_dennis.jpg)');
												}
													
												else if (WeatherID >= 951 & WeatherID <=962){           
													$('.block-background' + code).css('background-image','url(https://upload.wikimedia.org/wikipedia/commons/0/04/Romania_sunset_0176.jpg)');
												}
											});											
										}
									});

									//remove items from basket
									$(".removeli").on("click", function () {
										$(this).parent().remove();
										
										delete window.unitmap;
										var totalPrice = 0;
										$(".eachPrice").each(function () {
											var cenaEach = parseFloat($(this).text());
											totalPrice += cenaEach;
										});
										$("#total-price").text(totalPrice + "$");
										$("#items-basket").text("(" + $("#list-item").children().length + ")");
									});
																		//remove items from basket
									$(".removeli-weather").on("click", function () {
										$(this).parent().remove();
										var totalPrice = 0;
										$(".eachPrice").each(function () {
											var cenaEach = parseFloat($(this).text());
											totalPrice += cenaEach;
										});
										$("#total-price-weather").text(totalPrice + "$");
										$("#items-basket-weather").text("(" + $("#list-item-weather").children().length + ")");
									});
								});
							});
							
							
							
							index++;
							
							
							
						}
					}
				}
				
				
				
				// set the table body to the new html code
				document.getElementById("status-total").innerHTML = index - 1;
				document.getElementById("status-0").innerHTML = carStatus0;
				document.getElementById("status-1").innerHTML = carStatus1;
				document.getElementById("status-5").innerHTML = carStatus5;
				document.getElementById("status-6").innerHTML = carStatus6;
				document.getElementById("status-9").innerHTML = carStatus9;
				
				
				
			}
			
			
			function task5() {
				//console.log("task 5");
				let index = 1;
				document.getElementById("StockData").innerHTML = "";
				
				for (let item of array3) 
				{
					
					var row = "";
					row += '<tr title="' + item.ten_kho + '" onclick="map.setView([' + item.tdx + ',' + item.tdy + '], 16)"><th scope="row">' + item.ma_kho + '</th><td>' + index + '</td><td>' + item.ten_kho + '</td><td>' + item.ma_kho + '</td><td>' + item.tdx + '</td><td>' + item.tdy + '</td><td title="' + item.dia_chi + '">' + item.dia_chi + '</td></tr>';

					// get the current table body html as a string, and append the new row
					var html = document.getElementById("StockData").innerHTML + row;

					// set the table body to the new html code
					document.getElementById("StockData").innerHTML = html;
				
					var marker = L.marker([item.tdx, item.tdy], {icon: markerStock}, {alt: item.ma_kho}).bindTooltip('<span>'+item.ma_kho+'</span>', {direction: 'top', permanent: true, sticky: false, offset: [-10, -30], opacity: 0.75, className: 'leaflet-tooltip-own' }).bindPopup(
						'<div class="responsive-two-columns">' +
							'<div class="left_col" style="width: 100%;"><strong>Tên kho: </strong>' + item.ten_kho + '</div>' +
							'<div class="right_col" style="width: 100%;"><strong>Tên kho 2: </strong>' + item.ten_kho2 + '</div>' +
							'<div class="left_col"><strong>Mã kho: </strong>' + item.ma_kho + '</div>' +
							'<div class="left_col"><strong>Mã loại: </strong>' + item.ma_loai + '</div>' +
							'<div class="right_col"><strong>Mã quốc gia: </strong>' + item.ma_qg + '</div>' +
							'<div class="right_col"><strong>Hoành độ: </strong>' + item.tdx + '</div>' +
							'<div class="left_col"><strong>Tung độ: </strong>' + item.tdy + '</div>' +
							'<div class="left_col"><strong>Trạng thái: </strong>' + item.status + '</div>' +
							'<div class="right_col"><strong>Số điện thoại: </strong>' + item.dien_thoai + '</div>' +
							'<div class="right_col"><strong>Fax: </strong>' + item.fax + '</div>' +
							'<div class="left_col" style="width: 100%;"><strong>Email: </strong>' + item.email + '</div>' +
							'<div class="right_col" style="width: 100%;"><strong>Địa chỉ: </strong>' + item.dia_chi + '</div>' +
						'</div>'
					).openTooltip();

					//Add Layer show/hide marker stock when zoom in/out
					stockMarkers.addLayer(marker);
					
					index++;
				}
			}
			
			function sleep(ms) {
			  return new Promise(
				resolve => setTimeout(resolve, ms)
			  );
			}	

			async function delayedGreeting() {
			  console.log("Hello");
			  task1();
			  task2();
			  task3();
			  task4();
			  task5();
			  await sleep(100);
			  console.log("Again Hello!");
			  task1();
			  task2();
			  task3();
			  task4();
			  task5();
			  await sleep(2000);
			  console.log("World!");
			  task1();
			  task2();
			  task3();
			  task4();
			  task5();
			  await sleep(2000);
			  console.log("Goodbye!");
			  task1();
			  task2();
			  task3();
			  task4();
			  task5();
			}
		}
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
	/*
		$(document).ready(function() {
  
			//if(navigation.geolocation){
				//navigator.geolocation.getCurrentPosition(function(position){
				//$("#data").html("latitude: " + position.coords.latitude + "<br>longitude: " + position.coords.longitude);
				//});
			//};
		  
		 
			var lat = 10.362244019315042;
			var lng = 106.67524538086836;
			var fTemp;
			var cTemp;
		  
			if (navigator.geolocation) {
				navigator.geolocation.getCurrentPosition(showPosition);
			} else { 
				$("#data").html("Geolocation is not supported by this browser.");
			}  
			function showPosition(position) {
				//lat = position.coords.latitude;
				//lng = position.coords.longitude;
				
			
				var api = "https://fcc-weather-api.glitch.me/api/current?lat="+lat+"&lon="+lng;
				console.log(api);
		 
		  
				$.getJSON(api, function(data) {
					var area = data.name;
					var negara = data.sys.country;
					var suhu = data.main.temp;
					var condition = data.weather[0].main;
					var image = data.weather[0].icon;
					var fTemp = (suhu*(9/5)+32).toFixed(1); //+ " &#8457";//
					cTemp = suhu.toFixed(1); //+ " &#8451";//
					var ubahsuhu = suhu.toFixed(1);
					var satuan = " &#8451";
					$(".area-weather").html(area + ", " + negara);
					$("#suhu").html(ubahsuhu + satuan);
					$(".condition-weather").html(condition);
					$("#image-weather").html("<img class= 'text-center' src='"+image+"' />");
					
					$("#suhu").on("click", function(){
						$("#suhu").html(ubahsuhu).fadeOut(20);
						if (ubahsuhu == cTemp) {        
							$("#suhu").html(fTemp + " &#8457").fadeIn(500);
							ubahsuhu = fTemp;
						} else if (ubahsuhu == fTemp) {
							$("#suhu").html(cTemp + satuan).fadeIn(500);
							ubahsuhu = cTemp;
						}
					});
				});
			}
		});
	*/
	</script>
	
	<script>	
		/*
		//////////////////////GET////////////////////
		//Get datetime now
		var currentdate = new Date(); 
		var datetime = currentdate.getFullYear() + "-"
				+ (currentdate.getMonth()+1)  + "-"
				+ currentdate.getDate() + " " 
                + currentdate.getHours() + ":"  
                + currentdate.getMinutes() + ":" 
                + currentdate.getSeconds();
				
		console.log(datetime);

		//POST data into POSTGREST
		$.ajax({
			type: "GET",
			data: JSON.stringify({}),
			url: "http://api.iswift.com.vn/api/dmxecuoi",
			contentType: "application/json charset=utf-8",
		}).done(function (res) {
			//alert(res);
			console.log(res);
		})
		*/

		/*
		//////////////////////POST////////////////////
		//Get datetime now
		var currentdate = new Date(); 
		var datetime = currentdate.getFullYear() + "-"
				+ (currentdate.getMonth()+1)  + "-"
				+ currentdate.getDate() + " " 
                + currentdate.getHours() + ":"  
                + currentdate.getMinutes() + ":" 
                + currentdate.getSeconds();
				
		console.log(datetime);

		//POST data into POSTGREST
		$.ajax({
			type: "POST",
			data: JSON.stringify({
				"ma_xe": '80721',
				"tdx": 10.789456,
				"tdy": 104.789456,
				"ngay": datetime 
			}),
			url: "https://iswift.com.vn:444/api/dmdcxe",
			contentType: "application/json charset=utf-8",
		}).done(function (res) {
			//alert(res);
			console.log(res);
		})
		*/
		
		
		/*
		//////////////////////PUT////////////////////
		//Get datetime now
		var currentdate = new Date(); 
		var datetime = currentdate.getFullYear() + "-"
				+ (currentdate.getMonth()+1)  + "-"
				+ currentdate.getDate() + " " 
                + currentdate.getHours() + ":"  
                + currentdate.getMinutes() + ":" 
                + currentdate.getSeconds();
				
		console.log(datetime);

		//POST data into POSTGREST
		$.ajax({
			type: "PUT",
			data: JSON.stringify({
				"ma_xe": '80721',
				"tdx": 10.123456,
				"tdy": 104.123456,
				"ngay": datetime 
			}),
			url: "https://iswift.com.vn:444/api/dmxecuoi"
		}).done(function (res) {
			//alert(res);
			console.log(res);
		})
		*/
		
		
		/*
		//////////////////////DELETE////////////////////
		//Get datetime now
		var currentdate = new Date(); 
		var datetime = currentdate.getFullYear() + "-"
				+ (currentdate.getMonth()+1)  + "-"
				+ currentdate.getDate() + " " 
                + currentdate.getHours() + ":"  
                + currentdate.getMinutes() + ":" 
                + currentdate.getSeconds();
				
		console.log(datetime);

		//POST data into POSTGREST
		$.ajax({
			type: "DELETE",
			data: JSON.stringify({
				"ma_xe": '80721'
			}),
			url: "http://api.iswift.com.vn/api/dmxecuoi",
			contentType: "application/json charset=utf-8",
		}).done(function (res) {
			//alert(res);
			console.log(res);
		})
		*/



		/*
		//////////////////////EUFIN////////////////////
		//Get data api into adapter eufin
		var settings = {
			"url": "http://api.eup.net.vn:8000/iswift/realtimeAll?account=iswift&password=RvoPWbTq5ot66Vav5Ugo",
			"method": "POST",
			"timeout": 0,
			"headers": {
				"X-Eupfin-Api-Key": "e5d58e29-5a5e-44e7-a942-3d69cd6cc4a0"
			},
		};

		$.ajax(settings).done(function (response) {
			console.log(response);
		});
		*/
	</script>
</asp:Content>
