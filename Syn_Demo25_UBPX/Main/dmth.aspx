<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Main/Main.Master" Inherits="ISWIFT.Sys.Web.APage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">

	<style>
		.image-single {
			width: 114px !important;
			height: 114px !important;
		}
		
		.ximage {
			margin: 10px 0 0 0;
			width: 100%;
		}
		
		.ximage-all {
			text-align: center;
			line-height: 27px;
		}
		
		.overflowY-zoom {
			overflow-y: hidden;
		}
		
		.modal-form-full { 
			width: calc(100% - 4px) !important;
		}
		
		.modal-body-full {
			height: calc(100%) !important;
		}
	</style>


	<div id="content">
		<div id="DIR_dmth_Grid" class="dir" style="position: fixed; width: 100%;"><label class="text-title-grid">Danh mục
				vật tư, sản phẩm</label><label class="sub-title-grid">Thêm, xóa, sửa...</label>
			<div class="divider-line"></div>
			<div style="padding-top: 3px;width: 100%;">
				<div class="col-xs-14 col-sm-14 grid-parent">
					<table class="table-itembar" grid-index="0">
						<tbody>
							<tr>
								<td style="display:inline-flex;line-height:24px;padding-right:8px;cursor:pointer;"
									title="Sửa (Ctrl + E, Alt + E)" class="toolbar-edit " id="TOOLBAR_dmth_0_edit">
									<div style="margin-right:4px;"></div>Sửa
								</td>
								<td style="display:inline-flex;line-height:24px;padding-right:8px;cursor:pointer;display:none""
									title="Xem (Alt + W)" class="toolbar-view mobile-hide" id="TOOLBAR_dmth_0_view">
									<div style="margin-right:4px;"></div>Xem
								</td>							
							</tr>
						</tbody>
					</table><img id="WAIT_dmth" class="grid-icon-loading" style="display:none"
						src="../Images/ic_loading.gif">
				</div>
				<div class="div-paging col-xs-10 col-sm-10" id="PAGE_dmth_0">
					<ul class="pagination pagination-sm grid-page"></ul>
				</div>
			</div>
			<div class="table-bottom">
				<div class="table-scroll-horizontal">
					<table id="TABLE_dmth_0" grid-index="0" class="table">
						<colgroup>
							<col style="width: auto;">
							<col class="grid-colgroup ma_th" style="width: 120px;">
							<col class="grid-colgroup ten_th" style="width: 300px;">
							<col class="grid-colgroup thu_tu" style="width: 80px;">
							<col class="grid-colgroup ximage1" style="width: 80px;">
							<col class="grid-colgroup ximage2" style="width: 80px;">
						</colgroup>
						<thead>
							<tr>
								<th style="position: relative; z-index: 10;"></th>
								<th class="grid-column ma_vt C col-has-focus" style="">
									<div class="btn-header-options"></div>
									<div class="col-header-resize"></div><span>Mã thương hiệu</span>
								</th>
								<th class="grid-column ten_vt C col-has-focus" style="">
									<div class="btn-header-options"></div>
									<div class="col-header-resize"></div><span>Tên thương hiệu</span>
								</th>
								<th class="grid-column thu_tu C col-has-focus" style="">
									<div class="btn-header-options"></div>
									<div class="col-header-resize"></div><span>Thứ tự</span>
								</th>
								<th class="grid-column ximage1 C col-has-focus" style="">
									<div class="btn-header-options"></div>
									<div class="col-header-resize"></div><span>Ảnh 1</span>
								</th>
								<th class="grid-column ximage2 C col-has-focus" style="">
									<div class="btn-header-options"></div>
									<div class="col-header-resize"></div><span>Ảnh 2</span>
								</th>
							</tr>
						</thead>
						<tbody id="BODY_dmth_0" class="data">
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	
	
	<div id="subcontent" style="position: fixed; z-index: 1500;">
	
	
		<div id="DIR_Question__2002" class="dir modal" role="dialog" style="z-index: 2003; display: none;">
			<div class="modal-dialog modal-dialog-undefined ui-draggable" role="document">
				<div class="modal-content">
					<div class="modal-header ui-draggable-handle"><button type="button" btnid="questionCancel"
							class="btn-close-form"><span class="icon-close-form">✖</span></button>
						<p class="text-title-form">Xóa dữ liệu</p>
					</div>
					<div class="modal-body" style="min-height: 0px;">
						<div class="form-horizontal">
							<div class="row">
								<div class="modal-body-header">
									<div class="modal-left-0">
										<div class="form-group"><label class="control-label-message">Bạn có chắc chắn xóa
												không?</label></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer"><img id="WAIT_Question" class="dir-icon-loading" style="display:none" src="../Images/ic_loading.gif">
						<button type="button" btnid="questionOk" class="btn btn-primary btn-ok-confirm" tabindex="10">
							<img src="../Images/ic_save.png" class="btn-icon-ok">
							Nhận
						</button>
						<button type="button" btnid="questionCancel" class="btn btn-default btn-no-confirm" tabindex="11">Hủy</button></div>
				</div>
			</div>
		</div>
	
	
		<div id="DIR_dmth_Dir" class="dir modal" role="dialog" style="z-index: 2002; display: none;">
			<div class="modal-dialog modal-dialog-md ui-draggable" role="document">			
				<div class="modal-content">
					<form id="form-dmth" onsubmit="return false" style="height: calc(100%);">
						<div class="modal-header ui-draggable-handle">
							<button type="button" btnid="cancel" class="btn-close-form btn-cancel">
								<span class="icon-close-form">✖</span>
							</button>
							<button type="button" btnid="zoom" class="btn-close-form mobile-hide btn-zoom">
								<span class="icon-close-form" style="font-size: 20px;">□</span>
							</button>
							<p class="text-title-form">Mới</p>
						</div>
						<div class="modal-body" style="min-height: 0px;">
							<div class="form-horizontal" style="height: calc(100% - 80px) !important;">
								<div class="row">
									<div class="modal-body-header">
										<div class="modal-left-240">
											<div class="form-group form-group-hidden">
												<div class="col-xs-24 col-120"><label class="control-label unit_id"></label>
												</div>
												<div class="col-xs-24 col-120"><input value="0" spellcheck="false" type="text"
														class="input-field unit_id I  txt-right form-control materail-input I"
														tabstop="0" style="" readonly="" tabindex="14"></div>
											</div>
											<div class="form-group">
												<div class="col-xs-24 col-120"><label class="control-label ma_th">Mã thương</label></div>
												<div class="col-xs-24 col-120"><input value="" required id="inp_math" spellcheck="false" type="text"  name="ma_vt"
														class="input-field ma_th C AutoIncrease form-control materail-input C"
														style="text-transform: uppercase;" maxlength="32" tabindex="15"></div>
											</div>										
											
											<div class="form-group">
												<div class="col-xs-24 col-120"><label class="control-label ten_th">Tên sản
														phẩm</label></div>
												<div class="col-xs-24 col-fill-120"><input id="inp_tenth" required
														type="text" class="input-field ten_th C  form-control materail-input C"
														style="" maxlength="256" tabindex="16"></div>
											</div>										
											<div class="form-group">
												<div class="col-xs-24 col-120"><label class="control-label ten_th2">Tên
														khác</label></div>
												<div class="col-xs-24 col-fill-120"><input id="inp_tenth2" value="" spellcheck="false"
														type="text" class="input-field ten_th2 C  form-control materail-input C"
														style="" maxlength="256" tabindex="17"></div>
											</div>
											<div class="form-group">
												<div class="col-xs-24 col-120"><label class="control-label mo_ta">Mô tả</label></div>
												<div class="col-xs-24 col-fill-120"><input id="inp_mota" value="" spellcheck="false"
														type="text" class="input-field mo_ta C  form-control materail-input C"
														style="" maxlength="256" tabindex="17"></div>
											</div>												
										</div>
										<div class="modal-right-240">
											<div class="form-group">
												<div class="col-xs-24 col-80"><label
														class="control-label status">Trạng thái</label></div>
												<div class="col-xs-24 col-160"><select id="select-status"
														class="input-field status C form-control materail-input"
														tabstop="0" style="" tabindex="50">
														<option value="1" selected="">1 - Còn sử dụng</option>
														<option value="0">0 - Không sử dụng</option>
													</select></div>
											</div>
											<div class="form-group">
												<div class="col-xs-24 col-80"><label
														class="control-label thu_tu">Thứ tự</label></div>
												<div class="col-xs-24 col-160"><input value="0" id="inp_thutu"
														spellcheck="false" type="text"
														class="input-field input-number thu_tu N txt-right form-control materail-input N"
														style="" tabindex="38"></div>
											</div>
										</div>
									</div>
									<div class="modal-body-tab">
										<div class="tab-form">
											<ul class="nav nav-tabs col-xs-24" style="margin-top: 10px;">
												<li class="active">
													<a data-toggle="tab" class="li-tab dmth_1" href="#dmth_1">Hình ảnh</a>
												</li>
											</ul>
											<div class="tab-content" style="height: 475px; min-height: 330px;">
												<div id="dmth_1" class="tab-pane in active">
													<div class="row">
														<div class="modal-left-0">															
															<div class="form-group">
																<div class="col-xs-24 col-fill-240 form-group-hidden">												
																	<input value="" id="txtImage1" spellcheck="false" type="text" 
																		class="input-field ma_vt C AutoIncrease form-control materail-input C"
																		style="text-transform: uppercase;" maxlength="32" tabindex="15">
																</div>
																<div class="col-xs-24 col-120 ximage-all">
																	<input type="button" id="inp_ximage1" class="ximage C AutoIncrease materail-input C" value="Tải ảnh" onclick="BrowseServer('txtImage1', 'img_ximage1');" />
																	<img class="image-single" id="img_ximage1" src="" onerror="src='../Images/noImage.png'"/>
																</div>	
																
																<div class="col-xs-24 col-fill-240 form-group-hidden">												
																	<input value="" id="txtImage2" spellcheck="false" type="text"
																		class="input-field ma_vt C AutoIncrease form-control materail-input C"
																		style="text-transform: uppercase;" maxlength="32" tabindex="15">
																</div>
																<div class="col-xs-24 col-120 ximage-all">
																	<input type="button" id="inp_ximage2" class="ximage C AutoIncrease materail-input C" value="Tải ảnh" onclick="BrowseServer('txtImage2', 'img_ximage2');" />
																	<img class="image-single" id="img_ximage2" src="" onerror="src='../Images/noImage.png'" />
																</div>																																
															</div> 
														</div>
													</div>
												</div>											
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<div class="form-views" style="float:left;display:none;">
								<button type="button" title="Sửa (Ctrl + E, Alt + E)" btnid="editForm" class="btn btn-default btn-edit-form" tabindex="14">Sửa</button>
								<button type="button" title="" btnid="deleteForm" class="btn btn-default btn-delete-form" tabindex="15">Xóa</button>
								<button type="button" title="Hủy (ESC)" btnid="cancel" class="btn btn-default btn-cancel-form" tabindex="16">Hủy</button>
							</div>
							<div class="form-buttons" style="float:right;display:block;">
								<img id="WAIT_dmth" class="dir-icon-loading" style="display:none" src="../Images/ic_loading.gif">
								<button type="submit" title="Nhận (Alt + O)" btnid="ok" class="btn btn-primary btn-nhan" tabindex="51">
								<img src="../Images/ic_save.png" class="btn-icon-ok">Nhận</button>
								<button type="button" title="Hủy (ESC)" btnid="cancel" class="btn btn-default btn-close" tabindex="52">Hủy</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div id="BACKDROP_Dir_dmth_2001" class="modal-backdrop in" style="z-index: 2001;display: none;"></div>
	</div>
	
	

	<script src="../Js/ckeditor/ckeditor.js"></script>
    <script src="../Js/ckfinder/ckfinder.js"></script>
	<script>
		var flag = "";
		var key = "";
		var editor_ghichu;
		var editor_mota;
		var editor_thongso;
		var dataDmth = [];
		
		$('#TOOLBAR_dmth_0_add').click(function() {
			onLoadAction();
			hide('.form-views');
			show('.form-buttons');
			editor_ghichu.setData('');
			editor_mota.setData('');
			editor_thongso.setData('');
			setDisableInputs('#inp_math', false);
			show('#DIR_dmth_Dir');
			flag = "NEW";	
		});
		$('#TOOLBAR_dmth_0_edit').click(function() {
			onLoadAction();
			setDisableInputs('#inp_math', true);
			setDisableInputs('#inp_tenth', true);
			setDisableInputs('#inp_tenth2', true);
			setDisableInputs('#inp_mota', true);
			setDisableInputs('#select-status', true);
			setDisableInputs('#inp_thutu', true);
			getInfoDM(key, dataDmth);
			show('#DIR_dmth_Dir');
			flag = "EDIT";				
		});
		$('#TOOLBAR_dmth_0_delete').click(function() {
			flag = "DELETE";		
			show('#DIR_Question__2002');
			$('.btn-ok-confirm').click(function() {	
				if (flag == "DELETE") { 	
					var m = new Memvars();	
					var p = window.location.href.toString();
					p = p.substring(0, p.indexOf("Main/")) + 'AppService/EService.asmx/' + "GetData"; //GetValue		
					var controller = "st_Create_Edit_Delete_DM";		
					
					var query = "delete from dmth where ma_vt = '" + key + "';if exists (select 1 from dmqddvt where ma_vt = '" + key + "') begin delete from dmqddvt where ma_vt = '" + key + "' end";
					console.log(query);
					
					var columnkey = "ma_vt";
					var id = key;
					var action = "DELETE";
					var table = "dbo.dmth";
					
					m.val('query', 'C', query);
					m.val('columnkey', 'C', columnkey);
					m.val('id', 'C', id);
					m.val('action', 'C', action);
					m.val('table', 'C', table);
					m.val('ghichu1', 'C', '');
					m.val('ghichu2', 'C', '');
					m.val('ghichu3', 'C', '');
					m.val('ghichu4', 'C', '');
					m.val('ghichu5', 'C', '');
					m.val('mota1', 'C', '');
					m.val('mota2', 'C', '');
					m.val('mota3', 'C', '');
					m.val('mota4', 'C', '');
					m.val('mota5', 'C', '');
					m.val('thongso1', 'C', '');
					m.val('thongso2', 'C', '');
					m.val('thongso3', 'C', '');
					m.val('thongso4', 'C', '');
					m.val('thongso5', 'C', '');
						
					if (key != "") {
						$.ajax({
							type: "POST",
							url: p,
							header: '',
							data: JSON.stringify({ controller: controller, oMemvar: m.val() }),
							contentType: "application/json; charset=utf-8",
							dataType: "json",
							timeout: 30000,
							success: function(data, textStatus, jqXHR) {
								// When AJAX call is successfuly
								console.log('AJAX call successful.');
								dataDmvt = [];
								getDataAll("dmth", dataDmvt,"1");	
								setTimeout(firstLoadPaged, 500);
								hide('#DIR_Question__2002');
							},
							error: function(jqXHR, textStatus, errorThrown) {
								// When AJAX call has failed
								console.log('AJAX call failed.');
							}			
						})
					}
				}
			});
			$('.btn-no-confirm').click(function() {	
				hide('#DIR_Question__2002');
			});
		});
		
		$('#TOOLBAR_dmth_0_view').click(function() {
			onLoadAction();
			setDisableInputs('input.input-field', true);
			setDisableInputs('select.input-field', true);
			setDisableInputs('input.ximage ', true);
			//editor1.readOnly = true;
			//editor2.readOnly = true;
			getInfoDM(key, dataDmvt);
			show('#DIR_dmth_Dir');
			flag = "VIEW";
			show('.form-views');
			hide('.form-buttons');
			$('.btn-edit-form').click(function() { 
				flag = "EDIT";
				hide('.form-views');
				show('.form-buttons');
				setDisableInputs('input.input-field', false);
				setDisableInputs('input.ximage ', false);
				setDisableInputs('select.input-field', false);
				//editor1.readOnly = false;
				//editor2.readOnly = false;
			});
			$('.btn-cancel-form').click(function() { 
				hide('#DIR_dmth_Dir');
				hide('.form-views');
				show('.form-buttons');
			});
			$('.btn-delete-form').click(function() { 
				flag = "DELETE";		
				show('#DIR_Question__2002');
				$('.btn-ok-confirm').click(function() {	
					if (flag == "DELETE") { 	
						var m = new Memvars();	
						var p = window.location.href.toString();
						p = p.substring(0, p.indexOf("Main/")) + 'AppService/EService.asmx/' + "GetData"; //GetValue		
						var controller = "st_Create_Edit_Delete_DM";		
						
						var query = "delete from dmth where ma_vt = '" + key + "';if exists (select * from dmqddvt where ma_vt = '" + key + "') begin delete from dmqddvt where ma_vt = '" + key + "' end";
						console.log(query);
						
						var columnkey = "ma_vt";
						var id = key;
						var action = "DELETE";
						var table = "dbo.dmth";
						
						m.val('query', 'C', query);
						m.val('columnkey', 'C', columnkey);
						m.val('id', 'C', id);
						m.val('action', 'C', action);
						m.val('table', 'C', table);
						m.val('ghichu1', 'C', '');
						m.val('ghichu2', 'C', '');
						m.val('ghichu3', 'C', '');
						m.val('ghichu4', 'C', '');
						m.val('ghichu5', 'C', '');
						m.val('mota1', 'C', '');
						m.val('mota2', 'C', '');
						m.val('mota3', 'C', '');
						m.val('mota4', 'C', '');
						m.val('mota5', 'C', '');
						m.val('thongso1', 'C', '');
						m.val('thongso2', 'C', '');
						m.val('thongso3', 'C', '');
						m.val('thongso4', 'C', '');
						m.val('thongso5', 'C', '');
							
						if (key != "") {
							$.ajax({
								type: "POST",
								url: p,
								header: '',
								data: JSON.stringify({ controller: controller, oMemvar: m.val() }),
								contentType: "application/json; charset=utf-8",
								dataType: "json",
								timeout: 30000,
								success: function(data, textStatus, jqXHR) {
									// When AJAX call is successfuly
									console.log('AJAX call successful.');
									dataDmvt = [];
									getDataAll("dmth", dataDmvt,"1");	
									setTimeout(firstLoadPaged, 500);
									hide('#DIR_Question__2002');
									hide('#DIR_dmth_Dir');
								},
								error: function(jqXHR, textStatus, errorThrown) {
									// When AJAX call has failed
									console.log('AJAX call failed.');
								}			
							})
						}
					}
				});
				$('.btn-no-confirm').click(function() {	
					hide('#DIR_Question__2002');
				});
			});
			
		});
		
		$('.btn-cancel').click(function() {
			hide('#DIR_dmth_Dir');
		});
					
		$(".btn-close").unbind().click(function() {
			hide('#DIR_dmth_Dir');
		});
		
		$(".btn-zoom").unbind().click(function() {
			$(".modal-dialog.modal-dialog-md.ui-draggable").toggleClass("modal-form-full");
			$(".modal-content").toggleClass("size-full");
			$(".modal-body").toggleClass("modal-body-full");
			$("#DIR_dmth_Dir").css("overflowY", "hidden");
		});
		
		$("#txtImage").change(function() {
			$('#img_ximage1').attr("src", $("#txtImage").val());
		});
		
		function show(id) {
			$(id).css("display", "block");
		}
		function hide(id) {
			$(id).css("display", "none");
		}
		
		function setNullInputs(id) {
			$(id).val('');
		}
		
		function setZeroInputs(id) {
			$(id).val(0);
		}
		
		function setSrcImages(id, value, bool) {
			if (bool == "REAL") {
				if (value != null && value != "") {
					$(id).attr("src", value);
				} else {
					$(id).attr("src", "");
				}
			} 
			if (bool == "NULL") {
				$(id).attr("src", '');
			}
		}
		
		function selectElement(id, valueToSelect) {    
			let element = document.getElementById(id);
			element.value = valueToSelect;
		}
		
		function setDisableInputs(id, bool) {
			if (bool == true) {
				$(id).prop('disabled', true);
			} else {
				$(id).prop('disabled', false);
			}
		}
		
		function setCheckedInputs(id, bool) {
			if (bool == 1) {
				$(id).prop('checked', true);
			} else {
				$(id).prop('checked', false);
			}
		}
		
		function setCheckedInputs(id, bool) {
			if (bool == 1) {
				$(id).prop('checked', true);
			} else {
				$(id).prop('checked', false);
			}
		}
		
		function onLoadAction() {
			setNullInputs('input.input-field');
			setZeroInputs('input.input-number');
			setSrcImages('.image-single', '', 'NULL');
			setDatetimeNow('#inp_ngaynhap');
			setDatetimeNow('#inp_ngayxuat');
			$('select').find('option:eq(0)').prop('selected', true);
		}
		
		function getDatetimeNow() {
			// Date object
			var today = new Date();
			// Current Date
			var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
			// Current Time
			var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();		  
			// Current Date and Time
			var dateTime = date + ' ' + time;
			return dateTime;
		}
		
		function setDatetimeNow(id) {
			var now = new Date();
			var day = ("0" + now.getDate()).slice(-2);
			var month = ("0" + (now.getMonth() + 1)).slice(-2);
			var today = now.getFullYear()+"-"+(month)+"-"+(day) ;
			$(id).val(today);
		}
		
		function loadAllData() {
			getDataAll("dmth", dataDmth, "1");				
		}
		
		function firstLoadPaged() {
			getDm('dmth', dataDmth);
		}
		
		function getCellTable(id) {
			var table = document.getElementById(id);
			var tbody = table.getElementsByTagName("tbody")[0];
			tbody.onclick = function (e) {
				e = e || window.event;
				var data = [];
				var target = e.srcElement || e.target;
				while (target && target.nodeName !== "TR") {
					target = target.parentNode;
				}
				if (target) {
					var cells = target.getElementsByTagName("td");
					for (var i = 0; i < cells.length; i++) {
						data.push(cells[i].innerHTML);
					}
				}				
				key = data[1];		
			};
		}
		
		function checkInputs() {
			var isValid = true;
			$('.input-field').filter('[required]').each(function() {
				if ($(this).val() === '') {
					//$('#confirm').prop('disabled', true);
					isValid = false;
					return false;
				}
			});
			//if(isValid) {$('#confirm').prop('disabled', false)}
			return isValid;
		}
		
		function checkSelects() {
			var isValid = true;
			$('.input-field').filter('[required]').each(function() {
				if ($(this).find(":selected").val() === '') {
					//$('#confirm').prop('disabled', true);
					isValid = false;
					return false;
				}
			});
			//if(isValid) {$('#confirm').prop('disabled', false)}
			return isValid;
		}
		
		function getDataAll(table, container, bool) {
			var m = new Memvars();	
			var p = window.location.href.toString();
			p = p.substring(0, p.indexOf("Main/")) + 'AppService/EService.asmx/' + "GetData";//GetValue			
			var controller = 'st_Query_DM';
			
			if (bool != null && bool != "")
				var query = "select * from " + table;			
			else 
				var query = "select * from " + table + " where status = 1";				
			m.val('query', 'C', query);
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
					var data = msg.d;
					data.forEach(function (item, num) {	
						container.push(item);
					});					
				},				
				error: function (e) {
				// loi o day
					console.log(e);
				}
			});
		}		
		
		function getInfoDM(id, container) {		
			container.forEach(function (item, num) {	
				if (item.ma_th == id) {
					console.log(item);	
					$('#inp_math').val(item.ma_th);
					$('#inp_tenth').val(item.ten_th);
					$('#inp_tenth2').val(item.ten_th2);
					$('#inp_mota').val(item.mo_ta);
					$('#inp_thutu').val(item.thu_tu);
					selectElement('select-status', item.status);
					$('#txtImage1').val(item.ximage1);			
					$('#txtImage2').val(item.ximage2);
					setSrcImages('#img_ximage1', item.ximage1, 'REAL');
					setSrcImages('#img_ximage2', item.ximage2, 'REAL');	
				}
			});					 
		}
		
		
		
		$(".btn-nhan").unbind().click(function() {
			var m = new Memvars();	
			var p = window.location.href.toString();
			p = p.substring(0, p.indexOf("Main/")) + 'AppService/EService.asmx/' + "GetData"; //GetValue		
			var controller = "st_Create_Edit_Delete_DM";
			
			console.log(flag);
			
			if (flag == "NEW") {				
				var mavt = ($('#inp_mavt').val()).toUpperCase();
				var tenvt =  $('#inp_tenvt').val();
				var tenvt2 = $('#inp_tenvt2').val();
				var thutu = $('#inp_thutu').val();
				var madvt = $('#select-dmdvt').find(":selected").val();	
				var tonkhoyn = $('#inp_tonkhoyn').is(':checked') == true ? 1 : 0;
				var loyn = $('#inp_loyn').is(':checked') == true ? 1 : 0;
				var malvt = $('#select-dmlvt').find(":selected").val();
				var nhvt1 = $('#select-dmnh1').find(":selected").val();
				var nhvt2 = $('#select-dmnh2').find(":selected").val();
				var nhvt3 = $('#select-dmnh3').find(":selected").val();
				var makho = $('#select-dmkho').find(":selected").val();
				var mavitri = $('#select-dmvitri').find(":selected").val();
				var slmin = $('#inp_slmin').val();
				var slmax = $('#inp_slmax').val();
				var ghichu = editor_ghichu.getData();
				var ghichu1 = "";
				var ghichu2 = "";
				var ghichu3 = "";
				var ghichu4 = "";
				var ghichu5 = "";
				var mota = editor_mota.getData();
				var mota1 = "";
				var mota2 = "";
				var mota3 = "";
				var mota4 = "";
				var mota5 = "";
				var thongso = editor_thongso.getData();
				var thongso1 = "";
				var thongso2 = "";
				var thongso3 = "";
				var thongso4 = "";
				var thongso5 = "";
				var luotxem = 0;
				var mavt2 = $('#inp_mavt2').val();
				var makm = $('#select-dmkm').find(":selected").val();
				var math = "";
				var nuocsx = $('#inp_nuocsx').val();
				var mausac = $('#inp_mausac').val();
				var kichco = $('#inp_kichco').val();
				var kieu = $('#inp_kieu').val();
				var ngaynhap = $('#inp_ngaynhap').val();
				var ngayxuat = $('#inp_ngayxuat').val();
				var unitid = 1;
				var trangthai = $('#select-status').find(":selected").val();
				var userid0 = "1";
				var userid2 = "1";
				var datetime0 = getDatetimeNow();
				var datetime2 = getDatetimeNow();
				var maimei = $('#inp_maimei').val();
				var songaysp = $('#inp_songaysp').val();
				var songaybh = $('#inp_songaybh').val();
				var bhyn = "1";
				var hinhanh1 = $('#txtImage1').val();			
				var hinhanh2 = $('#txtImage2').val();
				var hinhanh3 = $('#txtImage3').val();
				var hinhanh4 = $('#txtImage4').val();
				var hinhanh5 = $('#txtImage5').val();

				if (ghichu.length > 3996) {
					var str = strSplitOnLength(ghichu, 3996);
					ghichu1 = str[0];
					ghichu2 = str[1];
					if (ghichu2.length > 3996) {
						var str = strSplitOnLength(ghichu2, 3996);
						ghichu2 = str[0];
						ghichu3 = str[1];
						if (ghichu3.length > 3996) {
							var str = strSplitOnLength(ghichu3, 3996);
							ghichu3 = str[0];
							ghichu4 = str[1];
							if (ghichu4.length > 3996) {
								var str = strSplitOnLength(ghichu4, 3996);
								ghichu4 = str[0];
								ghichu5 = str[1];
							}
						}
					}
				}
				else {
					ghichu1 = ghichu; 
				}
				if (mota.length > 3996) {
					var str = strSplitOnLength(mota, 3996);
					mota1 = str[0];
					mota2 = str[1];
					if (mota2.length > 3996) {
						var str = strSplitOnLength(mota2, 3996);
						mota2 = str[0];
						mota3 = str[1];
						if (mota3.length > 3996) {
							var str = strSplitOnLength(mota3, 3996);
							mota3 = str[0];
							mota4 = str[1];
							if (mota4.length > 3996) {
								var str = strSplitOnLength(mota4, 3996);
								mota4 = str[0];
								mota5 = str[1];
							}
						}
					}
				}
				else {
					mota1 = mota; 
				}
				if (thongso.length > 3996) {
					var str = strSplitOnLength(thongso, 3996);
					thongso1 = str[0];
					thongso2 = str[1];
					if (thongso2.length > 3996) {
						var str = strSplitOnLength(thongso2, 3996);
						thongso2 = str[0];
						thongso3 = str[1];
						if (thongso3.length > 3996) {
							var str = strSplitOnLength(thongso3, 3996);
							thongso3 = str[0];
							thongso4 = str[1];
							if (thongso4.length > 3996) {
								var str = strSplitOnLength(thongso4, 3996);
								thongso4 = str[0];
								thongso5 = str[1];
							}
						}
					}
				}
				else {
					thongso1 = thongso; 
				}

				
				var query = "insert into dmth(ma_vt, ten_vt, ten_vt2, dvt, ton_kho_yn, lo_yn, ma_lvt, nh_vt1, nh_vt2, nh_vt3, ma_kho, ma_vi_tri, sl_min, sl_max, ghi_chu, mo_ta, thong_so, luot_xem, ma_vt2, ma_km, ma_th, nuoc_sx, mau_sac, " + 
							"kich_co, kieu, ngay_nhap, ngay_xuat, unit_id, status, user_id0, user_id2, datetime0, datetime2, ma_imei, so_ngay_sp, so_ngay_bh, bh_yn, ximage1, ximage2, ximage3, ximage4, ximage5, thu_tu) " + 
							"select '" + mavt + "', N'" + tenvt + "', N'" + tenvt2 + "', '" + madvt + "', '" + tonkhoyn + "', '" + loyn + "', '" + malvt + "', '" + nhvt1 + "', '" + nhvt2 + "', '" + nhvt3 + "', '" + makho + "', '" + 
							mavitri + "', '" + slmin + "', '" + slmax + "', N'@ghichu1@ghichu2@ghichu3@ghichu4@ghichu5', N'@mota1@mota2@mota3@mota4@mota5', N'@thongso1@thongso2@thongso3@thongso4@thongso5', '" + luotxem + "', '" + mavt2 + "', '" + makm + "', '" + math + "', N'" + nuocsx + "', N'" + mausac + "', N'" + kichco + "', N'" +
							kieu + "', '" + ngaynhap + "', '" + ngayxuat + "', '" + unitid + "', '" + trangthai + "', '" + userid0 + "', '" + userid2 + "', '" + datetime0 + "', '" + datetime2 + "', '" + maimei + "', '" + songaysp + "', '" + 
							songaybh + "', '" + bhyn + "', '" + hinhanh1 + "', '" + hinhanh2 + "', '" + hinhanh3 + "', '" + hinhanh4 + "', '" + hinhanh5 + "', " + thutu + ";" +
							"if not exists (select 1 from dmqddvt where ma_vt = '" + mavt + "' and dvt = '" + madvt + "') begin insert into dmqddvt select '" + mavt + "', '" + madvt + "', 1, 'S', 1,'" + datetime0 + "', '" + datetime2 + "', '" + userid0 + "', '" + userid2 + "' end";
				console.log(query);
				
				
				var columnkey = "ma_vt";
				var id = mavt;
				var action = "NEW";
				var table = "dbo.dmth";
				
				m.val('query', 'C', query);
				m.val('columnkey', 'C', columnkey);
				m.val('id', 'C', id);
				m.val('action', 'C', action);
				m.val('table', 'C', table);
				m.val('ghichu1', 'C', ghichu1);
				m.val('ghichu2', 'C', ghichu2);
				m.val('ghichu3', 'C', ghichu3);
				m.val('ghichu4', 'C', ghichu4);
				m.val('ghichu5', 'C', ghichu5);
				m.val('mota1', 'C', mota1);
				m.val('mota2', 'C', mota2);
				m.val('mota3', 'C', mota3);
				m.val('mota4', 'C', mota4);
				m.val('mota5', 'C', mota5);
				m.val('thongso1', 'C', thongso1);
				m.val('thongso2', 'C', thongso2);
				m.val('thongso3', 'C', thongso3);
				m.val('thongso4', 'C', thongso4);
				m.val('thongso5', 'C', thongso5);
					
				var inputField = checkInputs();
				console.log(inputField);
				var selectField = checkSelects();
				console.log(selectField);
				if (inputField == true && selectField == true) {
					$.ajax({
						type: "POST",
						url: p,
						header: '',
						data: JSON.stringify({ controller: controller, oMemvar: m.val() }),
						contentType: "application/json; charset=utf-8",
						dataType: "json",
						timeout: 30000,
						success: function(data, textStatus, jqXHR) {
							// When AJAX call is successfuly
							console.log('AJAX call successful.');
							hide('#DIR_dmth_Dir');
							setNullInputs('input.input-field');
							setZeroInputs('input.input-number');
							dataDmvt = [];
							getDataAll("dmth", dataDmvt,"1");	
							setTimeout(firstLoadPaged, 500);
						},
						error: function(jqXHR, textStatus, errorThrown) {
							// When AJAX call has failed
							console.log('AJAX call failed.');
						}			
					})
				}
			}
			
			
			if (flag == "EDIT") {
				var math = $('#inp_math').val();
				var tenth =  $('#inp_tenth').val();
				var tenth2 = $('#inp_tenth2').val();
				var thutu = $('#inp_thutu').val();
				var mota = $('#inp_mota').val();
				var trangthai = $('#select-status').find(":selected").val();
				var hinhanh1 = $('#txtImage1').val();			
				var hinhanh2 = $('#txtImage2').val();
				var userid0 = "1";
				var userid2 = "1";
				var datetime0 = getDatetimeNow();
				var datetime2 = getDatetimeNow();
				
				
				var query = "update dmth set ximage1 = N'" + hinhanh1 + "', ximage2 = N'" + hinhanh2 + "' where ma_th = '" + key + "';"								
				console.log(query);
				
				console.log(ghichu);
				console.log(mota);
				
				var columnkey = "ma_th";
				var id = math;
				var action = "EDIT";
				var table = "dbo.dmth";
				
				m.val('query', 'C', query);
				m.val('columnkey', 'C', columnkey);
				m.val('id', 'C', id);
				m.val('action', 'C', action);
				m.val('table', 'C', table);
				m.val('ghichu1', 'C', '');
				m.val('ghichu2', 'C', '');
				m.val('ghichu3', 'C', '');
				m.val('ghichu4', 'C', '');
				m.val('ghichu5', 'C', '');
				m.val('mota1', 'C', '');
				m.val('mota2', 'C', '');
				m.val('mota3', 'C', '');
				m.val('mota4', 'C', '');
				m.val('mota5', 'C', '');
				m.val('thongso1', 'C', '');
				m.val('thongso2', 'C', '');
				m.val('thongso3', 'C', '');
				m.val('thongso4', 'C', '');
				m.val('thongso5', 'C', '');
					
				var inputField = checkInputs();
				console.log(inputField);
				var selectField = checkSelects();
				console.log(selectField);
				if (inputField == true && selectField == true) {
					$.ajax({
						type: "POST",
						url: p,
						header: '',
						data: JSON.stringify({ controller: controller, oMemvar: m.val() }),
						contentType: "application/json; charset=utf-8",
						dataType: "json",
						timeout: 30000,
						success: function(data, textStatus, jqXHR) {
							// When AJAX call is successfuly
							//$("#BODY_dmth_0").empty();
							console.log('AJAX call successful.');
							hide('#DIR_dmth_Dir');
							setNullInputs('input.input-field');
							setZeroInputs('input.input-number');
							dataDmth = [];
							getDataAll("dmth", dataDmth, "1");	
							setTimeout(firstLoadPaged, 500);
						},
						error: function(jqXHR, textStatus, errorThrown) {
							// When AJAX call has failed
							console.log('AJAX call failed.');
						}			
					})
				}
			}
		});
		
		function strSplitOnLength(data, width) {
			var word = data;
			var a = word.substring(0, width);
			var b = word.substring(width);
			return [a,b];
		}

        function BrowseServer(field1, field2) {
            var finder = new CKFinder();
            finder.selectActionFunction = function (fileUrl) {
                document.getElementById(field1).value = fileUrl;
				document.getElementById(field2).src = fileUrl;
            };
            finder.popup();
        }	
		
		function getDm(text, container) {			
			if (text == 'dmth') {			
				var html = '';					
				container.forEach(function (item, num) {		
					html += '<tr>' +
								'<td class="txt-right" style="position: relative; z-index: 9;">' + (num + 1) + '</td>' +
								'<td class="grid-cell ma_th C canfocus grid-cell-link" style="" tabindex="1">' + item.ma_th + '</td>' +
								'<td class="grid-cell ten_th C canfocus" style="" tabindex="2">' + item.ten_th + '</td>' +
								'<td class="grid-cell thu_tu C canfocus" style="" tabindex="6">' + item.thu_tu + '</td>' +
								'<td class="grid-cell ximage1 C canfocus" style="" tabindex="6">' + (item.ximage1 != '' ? '<img src="' + item.ximage1 + '" height="50" width="50" />' : 'Không có') + '</td>' +
								'<td class="grid-cell ximage2 C canfocus" style="" tabindex="6">' + (item.ximage2 != '' ? '<img src="' + item.ximage2 + '" height="50" width="50" />' : 'Không có') + '</td>' +
							'</tr>';
				});
				$("#BODY_" + text + "_0").html(html);	 
			}					
		};

		$(document).ready(function () {	
			$(".nav-tabs a").click(function(e) {
				e.preventDefault();
				$(this).tab('show');
			});	
			
			setDatetimeNow('#inp_ngaynhap');
			setDatetimeNow('#inp_ngayxuat');			
			getCellTable('TABLE_dmth_0');	
			loadAllData();			
		});		
			
		var number = 0;
		$(document).ajaxStop(function () {
			// 0 === $.active
			$(this).unbind('ajaxStop'); // to stop this event repeating further
			number += 1;
			if (number <= 1 && number >= 0)
			{
				setTimeout(firstLoadPaged, 300);
			}
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
	
</asp:Content>
