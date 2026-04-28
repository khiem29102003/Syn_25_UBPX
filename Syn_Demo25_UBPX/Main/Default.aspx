<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Main/Main.Master"
    Inherits="ISWIFT.Sys.Web.APage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="server">
<meta charset="utf-8"/>
	<script src="../Js/jquery-2.2.4.min.js"></script>
	<script src="../Js/j0.js"></script>
	<script src="../Js/chart.js"></script>
	
	<style>
		/* Overlay */
		.overlay-mail {
			background: rgba(0, 0, 0, 0.6);
			position: fixed;
			top: 0;
			left: 0;
			right: 0;
			bottom: 0;
			z-index: 999;
		}

		/* Popup Container */
		.popup-mail {
			background: #fff;
			position: fixed;
			top: 50%;
			left: 50%;
			transform: translate(-50%, -50%);
			z-index: 1000;
			width: 480px;
			max-width: 95%;
			border-radius: 12px;
			box-shadow: 0 10px 40px rgba(0, 0, 0, 0.2);
		}

		.popup-mail .popup-inner {
			padding: 20px 25px;
			font-family: 'Segoe UI', sans-serif;
		}

		.popup-mail h3 {
			font-size: 20px;
			margin-bottom: 15px;
			color: #333;
			text-align: center;
		}

		.popup-mail .s3-btn-close {
			position: absolute;
			top: -10px;
			right: -10px;
			background-color: #e74c3c;
			color: #fff;
			border: none;
			border-radius: 50%;
			width: 28px;
			height: 28px;
			font-size: 18px;
			cursor: pointer;
			box-shadow: 0 0 0 2px #fff;
		}

		#progressArea {
			background: #f9f9f9;
			border: 1px solid #ddd;
			border-radius: 5px;
			padding: 10px;
			height: 200px;
			overflow-y: auto;
			font-size: 14px;
			line-height: 1.5;
		}
		
		#progressArea div {
			padding: 4px 8px;
			margin-bottom: 2px;
			border-radius: 4px;
		}

		.progress-container {
			width: 100%;
			background-color: #eee;
			border-radius: 4px;
			height: 20px;
			margin-bottom: 12px;
			overflow: hidden;
		}

		.progress-bar {
			height: 100%;
			width: 0%;
			background-color: #3498db;
			color: #fff;
			text-align: center;
			line-height: 20px;
			font-size: 13px;
			transition: width 0.3s ease-in-out;
		}

		#controlButtons {
			text-align: center;
			margin-top: 15px;
		}

		#controlButtons button {
			background-color: #3498db;
			color: #fff;
			border: none;
			padding: 8px 16px;
			margin: 0 8px;
			border-radius: 6px;
			cursor: pointer;
			font-size: 14px;
			transition: background-color 0.2s ease;
		}

		#controlButtons button:hover {
			background-color: #2c80b4;
		}

		.log-success {
			background: #e9f8ec;
			color: #27ae60;
		}
		.log-error {
			background: #fdecea;
			color: #c0392b;
		}
		.log-paused {
			background: #fff6e5;
			color: #e67e22;
		}
		
		#bodyWrapper #content {
			position: absolute;
			width: 100%;
			top: 0;
			bottom: 0;
			left: 0;
		}
		
		.t5pFIU {
			display: flex;
			flex-direction: column;
			min-height: 100%;
			position: relative;
		}
	</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
	<!-- Overlay -->
	<div class="overlay-mail" id="overlayEmail" style="display: none;"></div>

	<!-- Popup -->
	<div class="popup-mail" id="popupEmail" style="display: none;">
		<div class="popup-inner">
			<input type="button" class="s3-btn-close" onclick="popupClose();" value="×" />
			<h3><i class="fa fa-paper-plane"></i> Tiến độ gửi Email</h3>
			
			<div class="progress-container">
				<div class="progress-bar" id="progressBar">0%</div>
			</div>

			<div id="progressArea"></div>
			<label><input type="checkbox" onchange="toggleLog(this)" checked> Hiện chi tiết</label>

			<div id="controlButtons" style="display:none;">
				<button id="pauseBtn">⏸ Tạm dừng</button>
				<button id="cancelBtn">❌ Hủy toàn bộ</button>
			</div>
			
			<p style="text-align:center; margin-top:10px;">
				<small>Đã gửi <strong id="countDone">0</strong> / <span id="totalEmails">0</span> email</small>
			</p>
		</div>
	</div>
	
	<script>
		// Popup Open
		function popupOpen(){
			document.getElementById("popupEmail").style.display="block";
			document.getElementById("overlayEmail").style.display="block";
		}
		// Popup Close
		function popupClose(){
			document.getElementById("popupEmail").style.display="none";
			document.getElementById("overlayEmail").style.display="none";
		}
		
		function toggleLog(el) {
			document.getElementById("progressArea").style.display = el.checked ? "block" : "none";
		}
	</script>
	
	<div id="content">
		<div class="t5pFIU">
			<style>
				.kr8eST {
					flex: 1;
					position: relative;
				}
				.syn-header {
					display: flex; align-items: center; justify-content: space-between;
					background: #fff; box-shadow: 0 2px 12px #0001; padding: 10px 28px;
					position: sticky; top: 0; z-index: 100;
					transform: translateZ(0);
				}
				.syn-logo {
					display: flex; align-items: center; gap: 10px;
					font-weight: bold; font-size: 1.15rem; color: #f57317;
					letter-spacing: 0.5px;
				}
				.syn-logo-icon {
					width: 32px; height: 32px; background: #f57317; color: #fff;
					display: flex; align-items: center; justify-content: center;
					border-radius: 7px; font-size: 1.3rem;
				}
				.syn-menu {
					display: flex; gap: 24px;
					position: relative;
					height: 35px; 
				}
				.syn-menu-link, .syn-menu-dropdown-btn {
					text-decoration: none; font-weight: 600 !important;
					font-size: 1.5rem !important; color: #222;
					padding: 6px 0; border-bottom: 3px solid transparent;
					background: none; border: none; font: inherit;
					cursor: pointer; transition: all .2s; position: relative;
				}
				.syn-menu-link.syn-active, .syn-menu-link:hover,
				.syn-menu-dropdown-btn.syn-active, .syn-menu-dropdown-btn:hover {
					border-bottom: 3px solid #f57317;
					color: #f57317;
					text-decoration: none;
				}
				.syn-menu-dropdown {
					position: absolute; left: 0; top: 100%;
					min-width: 160px; background: #fff;
					box-shadow: 0 2px 12px #0002;
					border-radius: 7px; padding: 7px 0; display: none;
					flex-direction: column; z-index: 10;
				}
				.syn-menu-item {
					padding: 5px 10px; color: #3b3b3b; background: none; border: none; font-size: 1.5rem !important; font-weight: 600 !important;
					font: inherit; text-align: left; cursor: pointer; transition: background .15s;
					width: 100%; display: block; text-decoration: none;
				}
				.syn-menu-item:hover, .syn-menu-item.syn-active {
					background: #f7f6f9;
					color: #f57317;
					text-decoration: none;
				}
				/* Show dropdown on hover */
				.syn-menu-dropdown-wrap:hover > .syn-menu-dropdown,
				.syn-menu-dropdown-btn.syn-open + .syn-menu-dropdown {
					display: flex;
				}

				.syn-header-right {
					display: flex; align-items: center; gap: 18px;
				}
				.syn-icon-btn {
					background: none; border: none; cursor: pointer; font-size: 1.15rem;
					margin: 0 3px; color: #81899c;
					position: relative;
				}
				.syn-avatar {
					width: 36px; height: 36px; background: #e9e7fd; color: #745af2;
					border-radius: 50%; display: flex; align-items: center; justify-content: center;
					font-weight: bold; font-size: 1.08rem; margin-left: 6px;
					border: 2px solid #ececf6;
				}
				.syn-header-right .syn-settings {
					font-size: 1.5rem; color: #8f98b7;
				}
				.syn-main-content { 
					width: 100%;
					height: 100%;
					border: none;
					position: absolute;
					overflow: auto;
				}
			</style>
			<!--
			<div class="syn-header">
				<div class="syn-logo"><div class="syn-logo-icon">⏰</div>Chấm công</div>
				<nav class="syn-menu">
					<a class="syn-menu-link syn-active" onclick="loadPage('/Main/Dashboard/thong_ke_quan_ly_v4.html', this)">Thống kê</a>
					<a class="syn-menu-link" onclick="loadPage('/Main/Dashboard/LogisticsLog.html', this)">Dữ liệu Logistics</a>
					
					<div class="syn-menu-dropdown-wrap" style="position: relative;">
						<button type="button" class="syn-menu-dropdown-btn" onclick="toggleDropdown(this)">
							Báo cáo ▼
						</button>
						<div class="syn-menu-dropdown">
							<a href="#" class="syn-menu-item" onclick="loadPage('BaoCaoTong.html', this)">Báo cáo tổng</a>
							<a href="#" class="syn-menu-item" onclick="loadPage('BaoCaoNgay.html', this)">Báo cáo theo ngày</a>
							<a href="#" class="syn-menu-item" onclick="loadPage('BaoCaoNhanVien.html', this)">Báo cáo nhân viên</a>
						</div>
					</div>

					<a href="#" class="syn-menu-link" onclick="loadPage('ChamCong.html', this)">Chấm công</a>
					<a href="#" class="syn-menu-link" onclick="loadPage('CaLamViec.html', this)">Ca làm việc</a>
					<a href="#" class="syn-menu-link" onclick="loadPage('QuanLyDon.html', this)">Quản lý đơn</a>
					<a href="#" class="syn-menu-link" onclick="loadPage('ThietLap.html', this)">Thiết lập</a>
				</nav>
				
				<div class="syn-header-right">
					<button class="syn-icon-btn" title="Thông báo">🔔</button>
					<button class="syn-icon-btn" title="Tin nhắn">💬</button>
					<span class="syn-settings" title="Tùy chỉnh">⚙️</span>
					<div class="syn-avatar">HH</div>
				</div>
			</div>
			-->
			<div class="kr8eST">
				<iframe id="syn-main-content" class="syn-main-content" src="/Main/Dashboard/thong_ke_quan_ly_v4.html"></iframe>		
			</div>
			
			<script>
				function loadPage(page, element) {
					document.getElementById('syn-main-content').src = page;
					// Đổi trạng thái active cho menu trên
					document.querySelectorAll('.syn-menu-link, .syn-menu-item, .syn-menu-dropdown-btn').forEach(el => el.classList.remove('syn-active'));
					if (element) element.classList.add('syn-active');
					// Nếu là dropdown, close dropdown sau khi click
					closeAllDropdowns();
				}

				// Dropdown toggle
				function toggleDropdown(btn) {
					// Đóng hết các dropdown đang mở
					closeAllDropdowns();
					btn.classList.toggle('syn-open');
				}
				function closeAllDropdowns() {
					document.querySelectorAll('.syn-menu-dropdown-btn').forEach(el => el.classList.remove('syn-open'));
				}
				// Đóng dropdown khi click ngoài
				document.addEventListener('click', function(event) {
					const isDropdownBtn = event.target.closest('.syn-menu-dropdown-btn');
					const isDropdownMenu = event.target.closest('.syn-menu-dropdown');
					if (!isDropdownBtn && !isDropdownMenu) {
						closeAllDropdowns();
					}
				});
			</script>
		</div>
	</div>
</asp:Content>

