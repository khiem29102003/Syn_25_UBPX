<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Main/Main.Master" Inherits="ISWIFT.Sys.Web.APage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
	<div id="content">
		<script src="https://api.mapbox.com/mapbox-gl-js/v2.15.0/mapbox-gl.js"></script>
		<link href="https://api.mapbox.com/mapbox-gl-js/v2.15.0/mapbox-gl.css" rel="stylesheet" />
		<script src="https://cdn.jsdelivr.net/npm/sortablejs@1.15.0/Sortable.min.js"></script>
		<!-- Sau thẻ <script> khác -->
		<link href="https://cdn.jsdelivr.net/npm/tom-select@2.2.2/dist/css/tom-select.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/tom-select@2.2.2/dist/js/tom-select.complete.min.js"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
		<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
		<script src="https://cdn.jsdelivr.net/npm/flatpickr/dist/l10n/vn.js"></script>


		<style>
			* {
				box-sizing: border-box;
			}	

			body {
				margin: 0;
				font-family: Arial, sans-serif;
			}
			
			#content {
				width: 100%; 
				height: 100%; 
				overflow: auto;
			}

			#dashboard {
				display: flex;
				height: 100vh;
				overflow: hidden;
			}

			/* Sidebar trái */
			#sidebar {
				width: 300px;
				border-right: 1px solid #ccc;
				transition: width 0.3s ease;
				background: white;
				border-radius: 3px;
				padding: 8px;
				box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
				display: flex;
				flex-direction: column;
				justify-content: space-between;
				position: relative;
				margin: 8px;
			}

			#sidebar.collapsed {
				width: 175px;
			}
			
			#sidebar.collapsed .employee-item::before {
				top: 18px;
			}

			#sidebarHeader {
				padding: 2px 7px;
				border-radius: 4px;
				display: flex;
				gap: 5px;
				justify-content: space-between;
				align-items: center;
				font-size: 15px;
				font-weight: 600;
			}

			#sidebarHeader span.title {
				flex: 1;
				transition: opacity 0.3s ease;
				white-space: nowrap;
				overflow: hidden;
				text-overflow: ellipsis;
			}

			#sidebar.collapsed #sidebarHeader span.title {
				opacity: 0;
				pointer-events: none;
			}

			#employeeList {
				flex: 1;
				overflow-y: auto;
				padding: 3px;
			}
			
			.date-section {
				position: relative;
			}

			.collapse-btn {
				background-color: #e8f0ff;
				font-weight: bold;
				text-align: left;
				padding: 8px;
				border: none;
				border-left: 4px solid #0d6efd;
				border-radius: 4px;
				width: 100%;
				margin-bottom: 4px;
				position: relative;
				z-index: 2;
			}

			.collapse-body {
				position: relative;
				margin-left: 20px;
			}
			
			.collapse-body::before {
				content: "";
				position: absolute;
				top: -44px;
				left: -19px;
				width: 2px;
				height: 100%;
				background: #0d6efd;
				border-radius: 4px;
				z-index: 0;
			}

			.employee-item {
				position: relative;
				margin: 10px 0px;
				padding: 8px;
				background: white;
				border-radius: 8px;
				box-shadow: 0 1px 4px rgba(0,0,0,0.1);
				cursor: pointer;
				z-index: 1;
			}
			
			.employee-item small {
				white-space: nowrap;
				overflow: hidden;
				text-overflow: ellipsis;
				display: block;
				font-size: 90%;
			}

			.employee-item::before {
				content: "";
				position: absolute;
				left: -25px;
				top: 14px;
				width: 25px;
				height: 20px;
				border-left: 2px solid #0d6efd;
				border-bottom: 2px solid #0d6efd;
				border-bottom-left-radius: 10px;
				z-index: 0;
			}

			.employee-item:hover {
				background: #e6f0ff;
			}

			#sidebar.collapsed .employee-item {
				text-align: left;
				padding: 10px 5px;
				font-size: 12px;
			}

			/* Monitor bên phải */
			#monitorArea {
				flex: 1;
				padding: 12px;
				overflow-y: auto;
				min-height: 200px;
				transition: background 0.3s ease, border 0.3s ease;
				display: flex;
				flex-direction: column;
			}

			#monitorArea.drag-over {
				border: 2px dashed #0d6efd;
				background-color: #f0f8ff;
				border-radius: 10px;
			}

			#monitorGrid {
				display: grid;
				grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
				grid-auto-rows: 1fr;
				gap: 12px;
				padding: 8px 0;
			}

			.monitor-card {
				  background: white;
				  border-radius: 8px;
				  padding: 8px;
				  box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
				  display: flex;
				  flex-direction: column;
				  justify-content: space-between;
				  height: 260px; /* ✅ Chiều cao cố định như khung Google Meet */
				  position: relative;
			}

			.monitor-card:hover {
				transform: translateY(-2px);
			}

			.monitor-card h4 {
				margin: 5px 0 5px;
				font-size: 14px;
				font-weight: bold;
			}

			.monitor-card small {
				font-size: 12px;
				color: #555;
			}

			.employee-item.dragging {
				opacity: 0.5;
			}

			#monitorGrid.drag-over {
				border: 2px dashed #0d6efd;
				background: #eaf4ff;
				border-radius: 10px;
				transition: all 0.2s ease;
			}

			@media (max-width: 768px) {
				#dashboard {
					flex-direction: column;
				}

				#sidebar {
					width: 100%;
					height: 120px;
					flex-direction: row;
					overflow-x: auto;
				}

				#sidebar.collapsed {
					height: 50px;
					width: 100%;
				}

				#employeeList {
					display: flex;
					flex-direction: row;
					flex-wrap: nowrap;
				}

				.employee-item {
					margin-right: 8px;
					min-width: 60px;
				}

				#monitorArea {
					flex: 1;
					padding: 8px;
				}
				
				#monitorGrid {
					grid-template-columns: repeat(auto-fit, minmax(160px, 1fr));
				}

				.monitor-card {
					height: 220px;
				}

				.mini-map {
					height: 100px;
				}
			}
			
			.mini-map {
				width: 100%;
				flex: 1;
				border-radius: 6px;
				margin-top: 6px;
			}

			.dragging-card {
				opacity: 0.6;
				transform: rotate(2deg);
			}
			
			/* Khi bình thường */
			.employee-item.tracked {
				background-color: #d1e7dd;
				color: #0f5132;
				font-weight: bold;
				position: relative;
			}
			
			.employee-item.tracked {
				position: relative;
				padding-right: 28px; /* để chừa chỗ cho nút ✖ */
			}
			
			.btn-close-map {
				position: absolute;
				top: 6px;
				right: 6px;
				background: transparent;
				border: none;
				font-size: 14px;
				cursor: pointer;
				color: #999;
				transition: color 0.2s ease;
			}

			.btn-close-map:hover {
				color: #d33;
			}

			/* Icon 👁️ bên phải khi chưa collapsed */
			.employee-item.tracked::after {
				content: "👁️";
				position: absolute;
				display: none;
				right: 8px;
				top: 50%;
				transform: translateY(-50%);
				font-size: 14px;
			}

			.employee-item.tracked:hover {
				background-color: #c7dfd4;
			}
			
			/* Khi sidebar bị thu gọn */
			#sidebar.collapsed .employee-item.tracked {
				background-color: #d1e7dd;
				color: #0f5132;
				padding: 12px 0;
			}
			
			#sidebar.collapsed .employee-item.tracked {
				position: relative;
				padding-right: 28px; /* để chừa chỗ cho nút ✖ */
			}

			/* Ẩn text chỉ giữ icon 👁️ */
			#sidebar.collapsed .employee-item.tracked::after {
				content: "️";
				position: static;
				display: none;
				margin: 0 auto;
			}
			
			.popup-overlay {
				position: fixed;
				inset: 0;
				background: rgba(0, 0, 0, 0.5);
				z-index: 999;
				display: flex;
				align-items: center;
				justify-content: center;
			}

			.popup-box {
				background: white;
				padding: 24px 28px;
				border-radius: 10px;
				max-width: 480px;
				width: 100%;
				box-shadow: 0 0 30px rgba(0, 0, 0, 0.25);
				font-family: 'Segoe UI', sans-serif;
			}

			.popup-title {
				font-size: 20px;
				font-weight: bold;
				text-align: center;
				margin-bottom: 18px;
			}

			.popup-group {
				margin-bottom: 16px;
			}

			.popup-group label {
				display: block;
				margin-bottom: 6px;
				font-weight: 500;
			}

			#searchMaNv {
				width: 100%;
				min-height: 40px;
				max-height: 100px;
				overflow-y: auto;
				font-size: 14px;
			}

			.tom-select .ts-control {
				max-height: 100px !important;
				overflow-y: auto !important;
				white-space: normal !important;
				flex-wrap: wrap !important;
				padding: 6px 8px;
			}

			.btn-search, .btn-close {
				width: 100%;
				padding: 10px;
				background-color: #0d6efd;
				color: white;
				font-weight: bold;
				border: none;
				border-radius: 6px;
				cursor: pointer;
				height: 40px;
				transition: background 0.2s ease;
			}
			
			btn-close {
				background-color: #6c737e;
			}

			.btn-search:hover {
				background-color: #084ec1;
			}

			.popup-loading {
				display: none;
				text-align: center;
				margin-top: 12px;
				font-size: 13px;
				color: #666;
			}

			#employeeList .collapse .employee-item {
				border-left: 3px solid #0d6efd;
			}
			
			label.hamburger {
				display: block;
				width: 30px; /* less width = square hamburger */
				height: 30px;
				position: relative;
				cursor: pointer;
			}

			input#hamburger {
				display:none
			}

			.line {
				position: absolute;
				height: 4px;
				width: 100%;
				background: #ddd;
				transition: 0.5s;
			}
			/* steps of 12 are optional, could also be 10, 13 etc */
			.line:nth-child(1) { top: 3px; }
			.line:nth-child(2) { top: 15px; }
			.line:nth-child(3) { top: 27px; }

			/* translateY must be same as */
			#hamburger:checked + .hamburger .line:nth-child(1){
				transform: translateY(12px) rotate(-45deg);
			}

			#hamburger:checked + .hamburger .line:nth-child(2){
				opacity:0;
			}

			#hamburger:checked + .hamburger .line:nth-child(3){
				transform: translateY(-12px) rotate(45deg);
			}
			
			.drop-hint-area {
				position: relative;
				border: 2px dashed #0d6efd;
				border-radius: 10px;
				background: #f4faff;
				padding: 20px;
				height: 100%;
				transition: background 0.3s ease;
			}

			.drop-hint-area.drag-over {
				background: #e6f0ff;
			}

			.drop-hint-text {
				text-align: center;
				color: #0d6efd;
				font-weight: 500;
				margin-bottom: 12px;
				font-size: 16px;
			}
			
			.map-controls {
				position: absolute;
				top: 20px;
				right: 15px;
				display: flex;
				flex-direction: column;
				gap: 6px;
				z-index: 2;
			}

			.zoom-btn {
				width: 28px;
				height: 28px;
				border: none;
				border-radius: 4px;
				background: rgba(0, 0, 0, 0.6);
				color: white;
				font-size: 16px;
				font-weight: bold;
				cursor: pointer;
				transition: background 0.2s ease;
			}

			.zoom-btn:hover {
				background: rgba(0, 0, 0, 0.8);
			}
			
			.mapboxgl-ctrl-attrib {
				font-size: 10px !important;
				opacity: 0.4 !important;
				right: 4px !important;
				bottom: 2px !important;
			}
			
			.map-contents {
				background: rgba(0, 0, 0, 0.6);
				color: white;
				transition: background 0.2s ease;
				border: none;
				border-radius: 4px;
				padding: 0 3px;
				display: none;
			}
			
			.drag-handle, .close-btn-map {
				user-select: none;
				cursor: move;
			}
		</style>
		
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

		<!-- Popup tìm kiếm -->
		<div id="searchPopup" class="popup-overlay">
			<div class="popup-box">
				<h3 class="popup-title">🔍 Tìm Lịch Sử Vị Trí Nhân Viên</h3>

				<div class="popup-group">
					<label>Nhân viên</label>
					<select id="searchMaNv" multiple placeholder="Chọn mã nhân viên... (tối đa 10)"></select>
				</div>

				<div class="popup-group">
					<label>Ngày bắt đầu</label>
					<div class="ts-control">
						<input type="text" id="startDate" class="form-control flatpickr" autocomplete="off" placeholder="Chọn ngày bắt đầu">
					</div>				
				</div>

				<div class="popup-group">
					<label>Ngày kết thúc</label>
					<div class="ts-control">
						<input type="text" id="endDate" class="form-control flatpickr" autocomplete="off" placeholder="Chọn ngày kết thúc">
					</div>
				</div>

				<div style="display: flex; gap: 5px;">
					<button class="btn btn-search" onclick="searchEmployee()">🔎 Tìm kiếm</button>
					<!-- Trong #searchPopup -->
					<button class="btn btn-close" id="btnClosePopup" onclick="closeSearchPopup()" style="display: none;">❌ Đóng</button>
				</div>
				
				<div id="loadingSpinner" class="popup-loading">⏳ Đang tải dữ liệu...</div>
			</div>
		</div>

		<div id="dashboard" style="display: none;">
			<div id="sidebar">
				<div id="sidebarHeader">
					<span class="title">📋 Danh sách</span>
					<button id="btnReSearch" onclick="openSearchPopup()" style="height: 32px; background-color: transparent; border-radius: 5px;">🔍</button>
					<input type="checkbox" id="hamburger" onclick="toggleSidebar()">
					<label for="hamburger" class="hamburger">
						<span class="line"></span>
						<span class="line"></span>
						<span class="line"></span>
					</label>
				</div>
				<div id="employeeList">
					<!-- Nhân viên sẽ được thêm động -->
				</div>
			</div>
			<div id="monitorArea">
				<div id="dropHintArea" class="drop-hint-area">
					<div class="drop-hint-text">
						🗺️ Kéo nhân viên vào đây để xem vị trí trên bản đồ
					</div>
					<div id="monitorGrid"></div>
				</div>
			</div>
		</div>

		<script>
			mapboxgl.accessToken = 'pk.eyJ1IjoiYWx1a2FjaCIsImEiOiJ3US1JLXJnIn0.xrpBHCwvzsX76YlO-08kjg';
			let hasSearched = false;
			var m = new Memvars();
			var controller = 'loaddulieutable';
			var p = window.location.href.toString();
			p = p.substring(0, p.indexOf("Main/")) + 'AppService/EService.asmx/' + "GetData";
			
			new Sortable(document.getElementById('monitorGrid'), {
				animation: 150,
				ghostClass: 'dragging-card',
				handle: '.drag-handle', // 🔑 chỉ kéo bằng phần này //'.monitor-card', // hoặc để trống nếu toàn card được kéo
				onEnd: function (evt) {
					console.log(`Di chuyển từ vị trí ${evt.oldIndex} đến ${evt.newIndex}`);
					// Có thể cập nhật lại thứ tự hiển thị nếu cần
				}
			});
			
			flatpickr(".flatpickr", {
				dateFormat: "Y-m-d",
				allowInput: true,
				defaultDate: "today",   // 👈 mặc định là hôm nay
				locale: "vn"
			});
		
			/*
			var controller = 'loaddulieutable';
			var m = new Memvars();
			m.val("query", "C", `
				WITH LatestData AS (
					SELECT 
						ma_nv, 
						line, 
						tdx, 
						tdy, 
						ngay_gn, 
						ROW_NUMBER() OVER (PARTITION BY ma_nv ORDER BY ngay_gn DESC) AS rn
					FROM dmvtnv
				)
				SELECT 
					ld.ma_nv,
					ld.line,
					ld.tdx,
					ld.tdy,
					ld.ngay_gn,
					su.nickname,      -- Hoặc su.ten_nv tùy cột tên trong sysuserinfo
					su.e_mail,
					su.phone
				FROM LatestData ld
				JOIN sysuserinfo su ON ld.ma_nv = su.user_id
				WHERE ld.rn = 1;
			`);

			var p = window.location.href.toString();
			p = p.substring(0, p.indexOf("Main/")) + 'AppService/EService.asmx/' + "GetData";

			$.ajax({
				type: "POST",
				url: p,
				data: JSON.stringify({ controller: controller, oMemvar: m.val() }),
				contentType: "application/json; charset=utf-8",
				dataType: "json",
				timeout: 30000,
				success: function (msg, s) {
					var data = msg.d;
					console.log(data);
					
					// Tạo danh sách nhân viên
					data.forEach(emp => {
						empCache[emp.ma_nv] = emp;
						const item = $('<div class="employee-item">')
						  .text(emp.ma_nv)
						  .attr('data-id', emp.ma_nv)
						  .attr('draggable', true)
						  .attr('title', emp.nickname || emp.ma_nv);

						item.on('dragstart', function (e) {
							const dt = e.originalEvent.dataTransfer;
							dt.setData('text/plain', JSON.stringify(emp));
							dt.effectAllowed = 'move';
							$(this).addClass('dragging');
						});

						item.on('dragend', function () {
							$(this).removeClass('dragging');
						});

						item.on('click', () => {
						  if (!item.hasClass('tracked')) addEmployeeToMonitor(emp);
						});
						$('#employeeList').append(item);
					});
				},
				error: function (e) {
					console.error("Lỗi tải dữ liệu:", e);
				}
			});
			*/
			
			function formatDateTime(dotNetStr, format = "full") {
				const d = parseDotNetDate(dotNetStr);

				const pad = (n) => n.toString().padStart(2, '0');

				const map = {
					dd: pad(d.getDate()),
					MM: pad(d.getMonth() + 1),
					yyyy: d.getFullYear(),
					HH: pad(d.getHours()),
					mm: pad(d.getMinutes()),
					ss: pad(d.getSeconds()),
				};

				switch (format) {
					case "date":
						return `${map.dd}/${map.MM}/${map.yyyy}`;
					case "time":
						return `${map.HH}:${map.mm}:${map.ss}`;
					case "full":
						return `${map.dd}/${map.MM}/${map.yyyy} ${map.HH}:${map.mm}:${map.ss}`;
					default:
						// Cho phép truyền mẫu tùy biến như: "yyyy-MM-dd HH:mm"
						return format.replace(/dd|MM|yyyy|HH|mm|ss/g, (match) => map[match]);
				}
			}
			
			function openSearchPopup() {
				document.getElementById("searchPopup").style.display = "flex";
				document.getElementById("dashboard").style.display = "none";

				// Nếu chưa từng lọc → ẩn nút đóng
				const closeBtn = document.getElementById("btnClosePopup");
				if (hasSearched) {
					closeBtn.style.display = "block";
				} else {
					closeBtn.style.display = "none";
				}
			}
			
			function closeSearchPopup() {
				document.getElementById("searchPopup").style.display = "none";
				document.getElementById("dashboard").style.display = "flex"; // trở lại giao diện cũ
			}

			function toggleSidebar() {
				document.getElementById('sidebar').classList.toggle('collapsed');
			}
			
			function resizeAllMiniMaps() {
				Object.values(activeMaps).forEach(m => m.resize());
			}
			
			let activeMaps = {};
			let empCache = {}; // Toàn cục

			function addEmployeeToMonitor(emp) {
				const cardId = `monitor-${emp.ma_nv}-${emp.line}`;
				if (document.getElementById(cardId)) return;
			  
				// đánh dấu nhân viên đã được theo dõi
				const $item = $(`#employeeList .employee-item[data-id="${emp.ma_nv}-${emp.line}"]`);
				$item
					.addClass('tracked')
					.attr('draggable', false);

				// Thêm nút đóng map
				if (!$item.find('.btn-close-map').length) {
					const $closeBtn = $('<button class="btn-close-map" title="Tắt bản đồ">✖</button>');
					$closeBtn.on('click', (e) => {
						e.stopPropagation(); // không trigger click chọn nhân viên
						removeEmployeeFromMonitor(`monitor-${emp.ma_nv}-${emp.line}`);
					});
					$item.append($closeBtn);
				}

				const mapId = `map-${emp.ma_nv}-${emp.line}`;

				const html = `
					<div class="monitor-card" id="${cardId}">
						<!-- Nút zoom -->
						<div class="map-controls">
							<button class="zoom-btn close-btn-map" title="Đóng">✖</button>
							<button class="zoom-btn drag-handle move-btn" title="Di chuyển"><i class="fa fa-arrows" aria-hidden="true"></i></button>
							<button class="zoom-btn zoom-in" title="Phóng to">＋</button>
							<button class="zoom-btn zoom-out" title="Thu nhỏ">－</button>
							<button class="zoom-btn location-btn" title="Về vị trí">📍</button>
							<div class="map-contents">
								<h4>🧑‍ ${emp.nickname || emp.ma_nv}</h4>
								<h4>📞 ${emp.so_dien_thoai || ""}</h4>
								<h4>🕒 ${formatDateTime(emp.ngay_gn)}</h4>
							</div>
						</div>
						<div id="${mapId}" class="mini-map"></div>
					</div>
				`;

				$('#monitorGrid').append(html);

				// Delay chút để DOM render xong rồi tạo map
				setTimeout(() => {
					const markerLngLat = [emp.tdy, emp.tdx]; // toạ độ gốc
					const map = new mapboxgl.Map({
						container: mapId,
						style: 'mapbox://styles/mapbox/streets-v11',
						center: markerLngLat,
						zoom: 12,
						interactive: true // không cho kéo zoom map nhỏ
						//attributionControl: false // 👈 Ẩn attribution
					});
					
					const popup = new mapboxgl.Popup({ offset: 25 })
						.setHTML(`
							<div style="font-size: 13px;">
								🧑‍ <b>${emp.nickname || emp.ma_nv}</b><br>
								📞 ${emp.so_dien_thoai || ""}<br>
								🕒 ${formatDateTime(emp.ngay_gn)}
							</div>
						`);

					// Gắn popup vào marker và hiển thị luôn
					const marker = new mapboxgl.Marker()
						.setLngLat([emp.tdy, emp.tdx])
						.setPopup(popup)
						.addTo(map);
					
					popup.addTo(map); // 👈 Mở popup ngay lập tức
	
					activeMaps[mapId] = map;
					
					// Bắt sự kiện zoom
					const card = document.getElementById(cardId);
					card.querySelector('.zoom-in').onclick = () => map.zoomIn();
					card.querySelector('.zoom-out').onclick = () => map.zoomOut();
					
					// Gán sự kiện cho nút 📍
					card.querySelector('.location-btn').onclick = () => {
						map.flyTo({ center: markerLngLat, zoom: 12 });
					};
				
					resizeAllMiniMaps();
				}, 100);
			}

			function removeEmployeeFromMonitor(cardId) {
				const $card = $(`#${cardId}`); // Lấy thẻ trước
				const ma_nv = cardId.replace("monitor-", "");

				// 1. Xoá thẻ khỏi DOM
				$card.remove();

				// 2. Gỡ đánh dấu bên danh sách nhân viên
				const $item = $(`#employeeList .employee-item[data-id="${ma_nv}"]`);
				$item.removeClass('tracked').attr('draggable', true);

				// 3. Cho phép click lại nếu từng bị khoá
				$item.off('click').on('click', () => addEmployeeToMonitor(empCache[ma_nv]));
				
				$item.find('.btn-close-map').remove();

				// 4. Resize lại tất cả bản đồ còn lại
				resizeAllMiniMaps();
			}
			
			const monitorArea = document.getElementById('monitorArea');

			['dragover', 'dragenter'].forEach(evt => {
				monitorArea.addEventListener(evt, function (e) {
					e.preventDefault();
					monitorArea.classList.add('drag-over');
				});
			});

			['dragleave', 'drop'].forEach(evt => {
				monitorArea.addEventListener(evt, function (e) {
					monitorArea.classList.remove('drag-over');
				});
			});
			
			const dropArea = document.getElementById('dropHintArea');

			['dragover', 'dragenter'].forEach(evt => {
				dropArea.addEventListener(evt, function (e) {
					e.preventDefault();
					dropArea.classList.add('drag-over');
				});
			});

			['dragleave', 'drop'].forEach(evt => {
				dropArea.addEventListener(evt, function (e) {
					dropArea.classList.remove('drag-over');
				});
			});


			monitorArea.addEventListener('drop', function (e) {
				e.preventDefault();
				monitorArea.classList.remove('drag-over');

				try {
					const raw = e.dataTransfer.getData('text/plain');
					const empData = JSON.parse(raw);

					if (empData && empData.ma_nv) {
						addEmployeeToMonitor(empData);
					}
				} catch (err) {
					console.warn("Bỏ qua drop không hợp lệ:", err);
				}
			});
			
			function parseDotNetDate(dotNetStr) {
				if (!dotNetStr) return new Date();
				const match = /\/Date\((\d+)\)\//.exec(dotNetStr);
				return match ? new Date(parseInt(match[1])) : new Date();
			}
			
			// Nhóm dữ liệu theo ngày (YYYY-MM-DD)
			function groupByDate(data) {
				const grouped = {};
				data.forEach(emp => {
					const date = parseDotNetDate(emp.ngay_gn);
					const dateKey = date.toISOString().slice(0, 10); // yyyy-mm-dd
					if (!grouped[dateKey]) grouped[dateKey] = [];
					grouped[dateKey].push(emp);
				});
				return grouped;
			}
			
			function searchEmployee() {
				const selected = Array.from(document.getElementById("searchMaNv").selectedOptions);
				const ma_nv_arr = selected.map(opt => `'${opt.value}'`);
				const startDate = document.getElementById("startDate").value;
				const endDate = document.getElementById("endDate").value;

				if (!ma_nv_arr.length || !startDate || !endDate) {
					alert("Vui lòng chọn nhân viên và khoảng thời gian.");
					return;
				}

				document.getElementById("loadingSpinner").style.display = "block";

				m.val("query", "C", `
					SELECT a.ma_nv, a.line, a.tdx, a.tdy, a.ngay_gn, a.so_dien_thoai, b.username, b.nickname
					FROM dmvtnv a 
					LEFT JOIN sysuserinfo b on a.ma_nv = b.user_id
					WHERE a.ma_nv IN (${ma_nv_arr.join(",")})
						AND ngay_gn >= '${startDate}' AND ngay_gn < DATEADD(day, 1, '${endDate}')
					ORDER BY ngay_gn DESC, a.ma_nv;
				`);

				$.ajax({
					type: "POST",
					url: p,
					data: JSON.stringify({ controller: controller, oMemvar: m.val() }),
					contentType: "application/json; charset=utf-8",
					dataType: "json",
					timeout: 30000,
					success: function (msg) {
						const data = msg.d;
						document.getElementById("loadingSpinner").style.display = "none";

						if (!data.length) {
							alert("Không tìm thấy dữ liệu!");
							return;
						}

						const grouped = groupByDate(data);
						const $list = $("#employeeList");
						$list.empty();
						
						$("#monitorGrid").empty(); // 🧼 clear grid
						Object.values(activeMaps).forEach(m => m.remove()); // 🧼 destroy old maps
						activeMaps = {}; // reset

						Object.keys(grouped).forEach(date => {
							const collapseId = `collapse-${date.replace(/-/g, "")}`;
							const $section = $(`
								<div class="date-section">
									<button class="collapse-btn" data-bs-toggle="collapse" data-bs-target="#${collapseId}">
									  📅 ${date} &#8645;
									</button>
									<div id="${collapseId}" class="collapse collapse-body show">
										<!-- border-left sẽ được áp dụng bằng CSS -->
									</div>
								</div>
							`);
							const $container = $section.find(`#${collapseId}`);

							grouped[date].forEach(emp => {
								const empId = `${emp.ma_nv}-${emp.line}`;
								empCache[empId] = emp;

								const $item = $('<div class="employee-item">')
									.html(`
										<div><small>🧑‍ ${emp.nickname || emp.ma_nv}</small></div>
										<div><small>📞 ${emp.so_dien_thoai || ""}</small></div>
										<div><small>🕒 ${formatDateTime(emp.ngay_gn, 'time')}</small></div>
									`)
									.attr('data-id', empId)
									.attr('draggable', true)
									.attr('title', `${emp.ma_nv} - ${formatDateTime(emp.ngay_gn)}`);

								$item.on('dragstart', function (e) {
									const dt = e.originalEvent.dataTransfer;
									dt.setData('text/plain', JSON.stringify(emp));
									dt.effectAllowed = 'move';
									$(this).addClass('dragging');
								});

								$item.on('dragend', function () {
									$(this).removeClass('dragging');
								});

								$item.on('click', () => {
									if (!$item.hasClass('tracked')) addEmployeeToMonitor(emp);
								});

								$container.append($item);
							});

							$list.append($section);
							hasSearched = true;
						});

						document.getElementById('searchPopup').style.display = 'none';
						document.getElementById('dashboard').style.display = 'flex';
					},
					error: function (e) {
						console.error("Lỗi truy vấn:", e);
						document.getElementById("loadingSpinner").style.display = "none";
						alert("Không thể tải dữ liệu.");
					}
				});
			}

			// Gợi ý nhân viên khi gõ (autocomplete)
			$(document).ready(function () {
				m.val("query", "C", `SELECT DISTINCT TOP 100 user_id, username FROM sysuserinfo ORDER BY user_id`);
				$.ajax({
					type: "POST",
					url: p,
					data: JSON.stringify({ controller: controller, oMemvar: m.val() }),
					contentType: "application/json; charset=utf-8",
					dataType: "json",
					success: function (msg) {
						const list = msg.d;
						 const $select = $("#searchMaNv");
						list.forEach(row => {
							$select.append(`<option value="${row.user_id}">${row.username}</option>`);
						});

						new TomSelect("#searchMaNv", {
							maxItems: 10,
							placeholder: "Chọn mã nhân viên...",
							plugins: ['remove_button']
						});
					}
				});
			});
		</script>
	</div>
</asp:Content>
