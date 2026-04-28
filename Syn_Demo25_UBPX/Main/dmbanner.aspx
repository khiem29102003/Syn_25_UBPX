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
	</style>


	<div id="content">
		<div id="DIR_dmbanner_Grid" class="dir" style="position: fixed; width: 100%;"><label class="text-title-grid">Bài Viết </label><label class="sub-title-grid">Thêm, xóa, sửa...</label>
			<div class="divider-line"></div>
			<div style="padding-top: 3px;width: 100%;">
				<div class="col-xs-14 col-sm-14 grid-parent">
					<table class="table-itembar" grid-index="0">
						<tbody>
							<tr>
								<td style="display:inline-flex;line-height:24px;padding-right:8px;cursor:pointer;"
									title="Thêm (Alt + N)" class="toolbar-add " id="TOOLBAR_dmbanner_0_add">
									<div style="margin-right:4px;"></div>Thêm
								</td>
								<td style="display:inline-flex;line-height:24px;padding-right:8px;cursor:pointer;"
									title="Sửa (Ctrl + E, Alt + E)" class="toolbar-edit " id="TOOLBAR_dmbanner_0_edit">
									<div style="margin-right:4px;"></div>Sửa
								</td>
								<td style="display:inline-flex;line-height:24px;padding-right:8px;cursor:pointer;"
									title="Xóa (Ctrl + D, Alt + D)" class="toolbar-delete mobile-hide"
									id="TOOLBAR_dmbanner_0_delete">
									<div style="margin-right:4px;"></div>Xóa
								</td>
								<td style="display:none;line-height:24px;padding-right:8px;cursor:pointer;"
									title="Sao chép (Alt + U)" class="toolbar-copy mobile-hide" id="TOOLBAR_dmbanner_0_copy">
									<div style="margin-right:4px;"></div>Sao chép
								</td>
								<td style="display:inline-flex;line-height:24px;padding-right:8px;cursor:pointer;"
									title="Xem (Alt + W)" class="toolbar-view mobile-hide" id="TOOLBAR_dmbanner_0_view">
									<div style="margin-right:4px;"></div>Xem
								</td>
								<td title="-" class="toolbar-split mobile-hide" id="TOOLBAR_dmbanner_0_split">
									<div></div>
								</td>
								<td title="-" class="toolbar-split mobile-hide" id="TOOLBAR_dmbanner_0_split">
									<div></div>
								</td>
								<td title="Làm tươi" class="toolbar-refresh mobile-hide" id="TOOLBAR_dmbanner_0_refresh"style="display:none">
									<div></div>
								</td>
								<td title="Cố định cột" class="toolbar-freeze mobile-hide" id="TOOLBAR_dmbanner_0_freeze"style="display:none">
									<div></div>
								</td>
								<td title="-" class="toolbar-split mobile-hide" id="TOOLBAR_dmbanner_0_split">
									<div></div>
								</td>
								<td title="Kết xuất dữ liệu" class="toolbar-export mobile-hide" id="TOOLBAR_dmbanner_0_export"style="display:none">
									<div></div>
								</td>
								<td title="Tải mẫu Excel" class="toolbar-downtemplate mobile-hide"
									id="TOOLBAR_dmbanner_0_downtemplate"style="display:none">
									<div></div>
								</td>
								<td title="Lấy dữ liệu từ tập tin" class="toolbar-import mobile-hide"
									id="TOOLBAR_dmbanner_0_import"style="display:none">
									<div></div>
								</td>
								<td title="Mở rộng" class="toolbar-extend mobile-show" id="TOOLBAR_dmbanner_0_extend">
									<div>Mở rộng <span class="caret caret-extend"></span></div>
								</td>
							</tr>
						</tbody>
					</table><img id="WAIT_dmvt" class="grid-icon-loading" style="display:none"
						src="../Images/ic_loading.gif">
				</div>
				<div class="div-paging col-xs-10 col-sm-10" id="PAGE_dmbanner_0">
					<ul class="pagination pagination-sm grid-page"></ul>
				</div>
			</div>
			<div class="table-bottom">
				<div class="table-scroll-horizontal">
					<table id="TABLE_dmbanner_0" grid-index="0" class="table">
						<colgroup>
							<col style="width: auto;">
							<col class="grid-colgroup ma_banner" style="width: 120px;">
							<col class="grid-colgroup ten_banner" style="width: 300px;">
							<col class="grid-colgroup lien_ket" style="width: 180px;">
							<col class="grid-colgroup ximage1" style="width: 180px;">
							<col class="grid-colgroup thu_tu" style="width: 80px;">
							<col class="grid-colgroup phan_loai" style="width: 150px;">
						</colgroup>
						<thead>
							<tr>
								<th style="position: relative; z-index: 10;"></th>
								<th class="grid-column ma_banner C col-has-focus" style="">
									<div class="btn-header-options"></div>
									<div class="col-header-resize"></div><span>Mã banner</span>
								</th>
								<th class="grid-column ten_banner C col-has-focus" style="">
									<div class="btn-header-options"></div>
									<div class="col-header-resize"></div><span>Tên banner</span>
								</th>
									<th class="grid-column lien_ket C col-has-focus" style="">
									<div class="btn-header-options"></div>
									<div class="col-header-resize"></div><span>Liên kết</span>
								</th>
								<th class="grid-column mo_ta C col-has-focus" style="display:none">
									<div class="btn-header-options"></div>
									<div class="col-header-resize"></div><span>Mô tả</span>
								</th>											 
								<th class="grid-column ximage1 C col-has-focus" style="">
									<div class="btn-header-options"></div>
									<div class="col-header-resize"></div><span>Ảnh</span>
								</th>
								<th class="grid-column thu_tu C col-has-focus" style="">
									<div class="btn-header-options"></div>
									<div class="col-header-resize"></div><span>Thứ tự</span>
								</th>
								<th class="grid-column phan_loai C col-has-focus" style="">
									<div class="btn-header-options"></div>
									<div class="col-header-resize"></div><span>Phân loại</span>
								</th>
							</tr>
						</thead>
						<tbody id="BODY_dmbanner_0" class="data">
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
	
	
		<div id="DIR_dmbanner_Dir" class="dir modal" role="dialog" style="z-index: 2002; overflow-y: hidden; display: none;">
			<div class="modal-dialog modal-dialog-md ui-draggable" role="document">			
				<div class="modal-content">
					<form id="form-dmvt" onsubmit="return false">
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
							<div class="form-horizontal">
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
												<div class="col-xs-24 col-120"><label class="control-label ma_banner">Mã banner</label></div>
												<div class="col-xs-24 col-120"><input value="" required id="inp_mabanner" spellcheck="false" type="text"  name="ma_banner"
														class="input-field ma_banner C AutoIncrease form-control materail-input C"
														style="text-transform: uppercase;" maxlength="32" tabindex="15"></div>
											</div>										
											
											<div class="form-group">
												<div class="col-xs-24 col-120"><label class="control-label ten_banner">Tên banner</label></div>
												<div class="col-xs-24 col-fill-120"><input id="inp_tenbanner" required
														type="text" class="input-field ten_banner C  form-control materail-input C"
														style="" maxlength="256" tabindex="16"></div>
											</div>										
											<div class="form-group">
												<div class="col-xs-24 col-120"><label class="control-label ten_banner2">Tên
														khác</label></div>
												<div class="col-xs-24 col-fill-120"><input id="inp_tenbanner2" value="" spellcheck="false"
														type="text" class="input-field ten_banner2 C  form-control materail-input C"
														style="" maxlength="256" tabindex="17"></div>
											</div>		
												<div class="form-group">
												<div class="col-xs-24 col-120"><label class="control-label lien_ket">Liên kết</label></div>
												<div class="col-xs-24 col-fill-120"><input id="inp_lienket" value="" spellcheck="false"
														type="text" class="input-field tag C  form-control materail-input C"
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
														class="control-label phan_loai">Phân loại</label></div>
												<div class="col-xs-24 col-160"><select id="select-phanloai"
														class="input-field phan_loai C form-control materail-input"
														tabstop="0" style="" tabindex="50">
														<option value="SL" selected="">1 - Slider</option>
														<option value="RB">2 - Right banner</option>
														<option value="CB">3 - Center banner</option>
														<option value="BB">4 - Bottom banner</option>
														<option value="VI">5 - Video</option>
														<option value="MB">6 - Middle banner</option>
														<option value="SB1">7 - Section banner 1</option>
														<option value="SB2">8 - Section banner 2</option>
														<option value="SB3">9 - Section banner 3</option>
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
													<a data-toggle="tab" class="li-tab dmbanner_1" href="#dmbanner_1">Mô tả</a>													
												</li>													
												<li>
													<a data-toggle="tab" class="li-tab dmbanner_2" href="#dmbanner_2">Hình ảnh</a>												
												</li>						 
											</ul>
											<div class="tab-content" style="height: 400px; min-height: 330px;">
												<div id="dmbanner_1" class="tab-pane in active">
													<div class="row">
														<div class="modal-left-0">																								
															<div class="form-group">
																<div class="col-xs-24 col-150"><label
																		class="control-label mo_ta">Mô tả</label>
																</div>
																<div class="col-xs-24"><input value="" id="inp_mota"
																		spellcheck="false" type="text"
																		class="input-field mo_ta C  form-control materail-input C"
																		style="" maxlength="4000" tabindex="39"></div>
															</div>
														</div>
													</div>
												</div>
												<div id="dmbanner_2" class="tab-pane">
													<div class="row">
														<div class="modal-left-0">																								
															<div class="col-xs-24 col-fill-240 form-group-hidden">												
																<input value="" id="txtImage1" spellcheck="false" type="text" 
																	class="input-field ma_banner C AutoIncrease form-control materail-input C"
																	style="text-transform: uppercase;" maxlength="32" tabindex="15">
															</div>
															<div class="col-xs-24 col-120 ximage-all">
																<input type="button" id="inp_ximage1" class="ximage C AutoIncrease materail-input C" value="Tải ảnh" onclick="BrowseServer('txtImage1', 'img_ximage1');" />
																<img class="image-single" id="img_ximage1" src="" onerror="src='../Images/noImage.png'"/>
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
								<img id="WAIT_dmvt" class="dir-icon-loading" style="display:none" src="../Images/ic_loading.gif">
								<button type="submit" title="Nhận (Alt + O)" btnid="ok" class="btn btn-primary btn-nhan" tabindex="51">
								<img src="../Images/ic_save.png" class="btn-icon-ok">Nhận</button>
								<button type="button" title="Hủy (ESC)" btnid="cancel" class="btn btn-default btn-close" tabindex="52">Hủy</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div id="BACKDROP_Dir_dmbanner_2001" class="modal-backdrop in" style="z-index: 2001;display: none;"></div>
		<div class="msg-toast" style="display: none;">Vui lòng chọn <span class="Highlight">HÀNG</span>&nbsp; dữ liệu phù hợp.</div>
	</div>
	
	
	<script src="../Js/ckeditor/ckeditor.js"></script>
	
    <script src="../Js/ckfinder/ckfinder.js"></script>
	<script>
		var flag = "";
		var key = "";
		var editor1;
		var dataDmbanner = [];
		
		$('#TOOLBAR_dmbanner_0_add').click(function() {
			onLoadAction();
			hide('.form-views');
			show('.form-buttons');
			editor1.setData('');
			setDisableInputs('#inp_mabanner', false);
			show('#DIR_dmbanner_Dir');
			flag = "NEW";	
		});
		$('#TOOLBAR_dmbanner_0_edit').click(function() {
			if (key != null && key != "") 
			{
				onLoadAction();
				setDisableInputs('#inp_mabanner', true);
				getInfoDM(key, dataDmbanner);
				show('#DIR_dmbanner_Dir');
				flag = "EDIT";	
			}
			else 
			{
				show('.msg-toast');
				setTimeout(function() { 
					hide('.msg-toast');
				}, 2000);
			}
		}); 
		$('#TOOLBAR_dmbanner_0_delete').click(function() {
			if (key != null && key != "") 
			{
				flag = "DELETE";		
				show('#DIR_Question__2002');
				$('.btn-ok-confirm').click(function() {	
					if (flag == "DELETE") { 	
						var m = new Memvars();	
						var p = window.location.href.toString();
						p = p.substring(0, p.indexOf("Main/")) + 'AppService/EService.asmx/' + "GetData"; //GetValue		
						var controller = "st_Create_Edit_Delete_DM";		
						
						var query = "delete from dmbanner where ma_banner = '" + key + "';";
						console.log(query);
						
						var columnkey = "ma_banner";
						var id = key;
						var action = "DELETE";
						var table = "dbo.dmbanner";
						
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
									dataDmbanner = [];
									getDataAll("dmbanner", dataDmbanner, "1");	
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
			}
			else 
			{
				show('.msg-toast');
				setTimeout(function() { 
					hide('.msg-toast');
				}, 2000);
			}
		});
		
		$('#TOOLBAR_dmbanner_0_view').click(function() {
			if (key != null && key != "")
			{
				onLoadAction();
				setDisableInputs('input.input-field', true);
				setDisableInputs('select.input-field', true);
				setDisableInputs('input.ximage ', true);
				//editor1.readOnly = true;
				//editor2.readOnly = true;
				getInfoDM(key, dataDmbanner);
				show('#DIR_dmbanner_Dir');
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
					hide('#DIR_dmbanner_Dir');
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
							
							var query = "delete from dmbanner where ma_banner = '" + key + "';";
							console.log(query);
							
							var columnkey = "ma_banner";
							var id = key;
							var action = "DELETE";
							var table = "dbo.dmbanner";
							
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
										dataDmbanner = [];
										getDataAll("dmbanner", dataDmbanner, "1");	
										setTimeout(firstLoadPaged, 500);
										hide('#DIR_Question__2002');
										hide('#DIR_dmbanner_Dir');
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
			}
			else 
			{
				show('.msg-toast');
				setTimeout(function() { 
					hide('.msg-toast');
				}, 2000);
			}
		});
		
		$('.btn-cancel').click(function() {
			hide('#DIR_dmbanner_Dir');
		});
					
		$(".btn-close").unbind().click(function() {
			hide('#DIR_dmbanner_Dir');
		});
		
		$(".btn-zoom").unbind().click(function() {
			$(".modal-dialog.modal-dialog-md.ui-draggable").toggleClass("modal-form-full");
			$(".modal-content").toggleClass("size-full");
			$(".modal-body").toggleClass("modal-body-full");
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
			getDataAll("dmbanner", dataDmbanner, "1");				
		}
		
		function firstLoadPaged() {
			getDm('dmbanner', dataDmbanner);
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
				if (item.ma_banner == id) {
					console.log(item);	
					$('#inp_mabanner').val(item.ma_banner);
					$('#inp_tenbanner').val(item.ten_banner);
					$('#inp_tenbanner2').val(item.ten_banner2);
					$('#inp_lienket').val(item.lien_ket);
					$('#inp_thutu').val(item.thu_tu);
					
					selectElement('select-status', item.status);
					selectElement('select-phanloai', item.phan_loai);
					 
					editor1.setData(item.mo_ta);
					 
					$('#txtImage1').val(item.ximage1);			
				 
					setSrcImages('#img_ximage1', item.ximage1, 'REAL');
					 	
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
				var mabanner = $('#inp_mabanner').val();
				var tenbanner =  $('#inp_tenbanner').val();
				var tenbanner2 = $('#inp_tenbanner2').val();
				var mota = editor1.getData();
				var mota1 = "";
				var mota2 = "";
				var mota3 = "";
				var mota4 = "";
				var mota5 = "";
				var lienket = $('#inp_lienket').val();
				var thutu = $('#inp_thutu').val();
				var trangthai = $('#select-status').find(":selected").val();
				var phanloai = $('#select-phanloai').find(":selected").val();
				var userid0 = "1";
				var userid2 = "1";
				var datetime0 = getDatetimeNow();
				var datetime2 = getDatetimeNow();	 
				var hinhanh1 = $('#txtImage1').val();			
			 
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
	
				var query = "insert into dmbanner(ma_banner, ten_banner, ten_banner2, lien_ket, thu_tu, phan_loai, mo_ta, ximage1, status, user_id0, user_id2, datetime0, datetime2) " + 
							"select '" + mabanner + "', N'" + tenbanner + "', N'" + tenbanner2 + "', N'" + lienket + "', " + thutu + ", N'" + phanloai + "', N'@mota1@mota2@mota3@mota4@mota5', '" + hinhanh1 + "', '" + trangthai + "', '" + userid0 + "', '" + userid2 + "', '" + datetime0 + "', '" + datetime2 + "';";
				console.log(query);
				
				
				var columnkey = "ma_banner";
				var id = mabanner;
				var action = "NEW";
				var table = "dbo.dmbanner";
				
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
				m.val('mota1', 'C', mota1);
				m.val('mota2', 'C', mota2);
				m.val('mota3', 'C', mota3);
				m.val('mota4', 'C', mota4);
				m.val('mota5', 'C', mota5);
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
							console.log('AJAX call successful.');
							hide('#DIR_dmbanner_Dir');
							setNullInputs('input.input-field');
							setZeroInputs('input.input-number');
							dataDmbanner = [];
							getDataAll("dmbanner", dataDmbanner, "1");	
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
				var mabanner = $('#inp_mabanner').val();
				var tenbanner =  $('#inp_tenbanner').val();
				var tenbanner2 = $('#inp_tenbanner2').val();
				var lienket = $('#inp_lienket').val();
				var thutu = $('#inp_thutu').val();
				var phanloai = $('#select-phanloai').find(":selected").val();
				var mota = editor1.getData();
				var mota1 = "";
				var mota2 = "";
				var mota3 = "";
				var mota4 = "";
				var mota5 = "";
				var trangthai = $('#select-status').find(":selected").val();
				var userid0 = "1";
				var userid2 = "1";
				var datetime0 = getDatetimeNow();
				var datetime2 = getDatetimeNow();	 
				var hinhanh1 = $('#txtImage1').val();			
	 
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
	 
				var query = "update dmbanner set ma_banner = '" + mabanner + "', ten_banner = N'" + tenbanner + "', ten_banner2 = N'" + tenbanner2 + "', lien_ket = '" + lienket + "', thu_tu = " + thutu + ", phan_loai = N'" + phanloai + "', mo_ta = N'@mota1@mota2@mota3@mota4@mota5', status = '" + trangthai + "', user_id0 = '" + userid0 + "', user_id2 = '" + userid2 + "', datetime0 = '" + datetime0 + "', datetime2 = '" + datetime2 + "', ximage1 = N'" + hinhanh1 + "' where ma_banner = '" + key + "';";
				console.log(query);
				
				
				var columnkey = "ma_banner";
				var id = mabanner;
				var action = "EDIT";
				var table = "dbo.dmbanner";
				
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
				m.val('mota1', 'C', mota1);
				m.val('mota2', 'C', mota2);
				m.val('mota3', 'C', mota3);
				m.val('mota4', 'C', mota4);
				m.val('mota5', 'C', mota5);
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
							console.log('AJAX call successful.');
							hide('#DIR_dmbanner_Dir');
							setNullInputs('input.input-field');
							setZeroInputs('input.input-number');
							dataDmbanner = [];
							getDataAll("dmbanner", dataDmbanner, "1");	
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
			if (text == 'dmbanner') {			
				var html = '';					
				container.forEach(function (item, num) {		
					html += '<tr>' +
								'<td class="txt-right" style="position: relative; z-index: 9;">' + (num + 1) + '</td>' +
								'<td class="grid-cell ma_banner C canfocus grid-cell-link" style="" tabindex="1">' + item.ma_banner + '</td>' +
								'<td class="grid-cell ten_banner C canfocus" style="" tabindex="2">' + item.ten_banner + '</td>' +
								'<td class="grid-cell lien_ket C canfocus" style="" tabindex="2">' + item.lien_ket + '</td>' +
								'<td class="grid-cell mo_ta C canfocus" style="display:none" tabindex="3">' + item.mo_ta + '</td>' +
								'<td class="grid-cell ximage1 C canfocus" style="" tabindex="4">' + item.ximage1 + '</td>' +
								'<td class="grid-cell thu_tu C canfocus" style="" tabindex="4">' + item.thu_tu + '</td>' +
								'<td class="grid-cell phan_loai C canfocus" style="" tabindex="4">' + item.phan_loai + '</td>' +
							'</tr>';
				});
				$("#BODY_" + text + "_0").html(html);	 
			}			
		};

		$(document).ready(function () {	
			editor1 = CKEDITOR.replace('inp_mota', {
                customConfig: '/Js/ckeditor/config.js',
                extraAllowedContent: 'span',
				maxLength: 4000, 
            });	
			$(".nav-tabs a").click(function(e) {
				e.preventDefault();
				$(this).tab('show');
			});	
			
			setDatetimeNow('#inp_ngaynhap');
			setDatetimeNow('#inp_ngayxuat');			
			getCellTable('TABLE_dmbanner_0');	
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
