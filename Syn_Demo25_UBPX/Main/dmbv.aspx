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
		<div id="DIR_dmvt_Grid" class="dir" style="position: fixed; width: 100%;"><label class="text-title-grid">Bài Viết </label><label class="sub-title-grid">Thêm, xóa, sửa...</label>
			<div class="divider-line"></div>
			<div style="padding-top: 3px;width: 100%;">
				<div class="col-xs-14 col-sm-14 grid-parent">
					<table class="table-itembar" grid-index="0">
						<tbody>
							<tr>
								<td style="display:inline-flex;line-height:24px;padding-right:8px;cursor:pointer;"
									title="Thêm (Alt + N)" class="toolbar-add " id="TOOLBAR_dmvt_0_add">
									<div style="margin-right:4px;"></div>Thêm
								</td>
								<td style="display:inline-flex;line-height:24px;padding-right:8px;cursor:pointer;"
									title="Sửa (Ctrl + E, Alt + E)" class="toolbar-edit " id="TOOLBAR_dmvt_0_edit">
									<div style="margin-right:4px;"></div>Sửa
								</td>
								<td style="display:inline-flex;line-height:24px;padding-right:8px;cursor:pointer;"
									title="Xóa (Ctrl + D, Alt + D)" class="toolbar-delete mobile-hide"
									id="TOOLBAR_dmvt_0_delete">
									<div style="margin-right:4px;"></div>Xóa
								</td>
								<td style="display:none;line-height:24px;padding-right:8px;cursor:pointer;"
									title="Sao chép (Alt + U)" class="toolbar-copy mobile-hide" id="TOOLBAR_dmvt_0_copy">
									<div style="margin-right:4px;"></div>Sao chép
								</td>
								<td style="display:none;line-height:24px;padding-right:8px;cursor:pointer;"
									title="Xem (Alt + W)" class="toolbar-view mobile-hide" id="TOOLBAR_dmvt_0_view">
									<div style="margin-right:4px;"></div>Xem
								</td>
								<td title="-" class="toolbar-split mobile-hide" id="TOOLBAR_dmvt_0_split">
									<div></div>
								</td>
								<td title="-" class="toolbar-split mobile-hide" id="TOOLBAR_dmvt_0_split">
									<div></div>
								</td>
								<td title="Làm tươi" class="toolbar-refresh mobile-hide" id="TOOLBAR_dmvt_0_refresh"style="display:none">
									<div></div>
								</td>
								<td title="Cố định cột" class="toolbar-freeze mobile-hide" id="TOOLBAR_dmvt_0_freeze"style="display:none">
									<div></div>
								</td>
								<td title="-" class="toolbar-split mobile-hide" id="TOOLBAR_dmvt_0_split">
									<div></div>
								</td>
								<td title="Kết xuất dữ liệu" class="toolbar-export mobile-hide" id="TOOLBAR_dmvt_0_export"style="display:none">
									<div></div>
								</td>
								<td title="Tải mẫu Excel" class="toolbar-downtemplate mobile-hide"
									id="TOOLBAR_dmvt_0_downtemplate"style="display:none">
									<div></div>
								</td>
								<td title="Lấy dữ liệu từ tập tin" class="toolbar-import mobile-hide"
									id="TOOLBAR_dmvt_0_import"style="display:none">
									<div></div>
								</td>
								<td title="Mở rộng" class="toolbar-extend mobile-show" id="TOOLBAR_dmvt_0_extend">
									<div>Mở rộng <span class="caret caret-extend"></span></div>
								</td>
							</tr>
						</tbody>
					</table><img id="WAIT_dmvt" class="grid-icon-loading" style="display:none"
						src="../Images/ic_loading.gif">
				</div>
				<div class="div-paging col-xs-10 col-sm-10" id="PAGE_dmvt_0">
					<ul class="pagination pagination-sm grid-page"></ul>
				</div>
			</div>
			<div class="table-bottom">
				<div class="table-scroll-horizontal">
					<table id="TABLE_dmvt_0" grid-index="0" class="table">
						<colgroup>
							<col style="width: auto;">
							<col class="grid-colgroup ma_bv" style="width: 120px;">
							<col class="grid-colgroup ten_bv" style="width: 300px;">
							<col class="grid-colgroup dvt" style="width: 180px;">
							<col class="grid-colgroup ximage1" style="width: 180px;">
							<col class="grid-colgroup nh_bv1" style="width: 80px;">
							<col class="grid-colgroup nh_bv2" style="width: 150px;">
						</colgroup>
						<thead>
							<tr>
								<th style="position: relative; z-index: 10;"></th>
								<th class="grid-column ma_bv C col-has-focus" style="">
									<div class="btn-header-options"></div>
									<div class="col-header-resize"></div><span>Mã bài viết</span>
								</th>
								<th class="grid-column ten_bv C col-has-focus" style="">
									<div class="btn-header-options"></div>
									<div class="col-header-resize"></div><span>Tên bài viết</span>
								</th>
									<th class="grid-column tag C col-has-focus" style="">
									<div class="btn-header-options"></div>
									<div class="col-header-resize"></div><span>Tag bài viết</span>
								</th>
								<th class="grid-column mo_ta C col-has-focus" style="display:none">
									<div class="btn-header-options"></div>
									<div class="col-header-resize"></div><span>Mô tả</span>
								</th>
							 
							 
								<th class="grid-column ximage1 C col-has-focus" style="">
									<div class="btn-header-options"></div>
									<div class="col-header-resize"></div><span>Ảnh</span>
								</th>
							</tr>
						</thead>
						<tbody id="BODY_dmbv_0" class="data">
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
	
	
		<div id="DIR_dmvt_Dir" class="dir modal" role="dialog" style="z-index: 2002; overflow-y: hidden; display: none;">
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
												<div class="col-xs-24 col-120"><label class="control-label ma_bv">Mã Bài viết</label></div>
												<div class="col-xs-24 col-120"><input value="" required id="inp_mavt" spellcheck="false" type="text"  name="ma_bv"
														class="input-field ma_bv C AutoIncrease form-control materail-input C"
														style="text-transform: uppercase;" maxlength="32" tabindex="15"></div>
											</div>										
											
											<div class="form-group">
												<div class="col-xs-24 col-120"><label class="control-label ten_bv">Tên Bài viết</label></div>
												<div class="col-xs-24 col-fill-120"><input id="inp_tenvt" required
														type="text" class="input-field ten_bv C  form-control materail-input C"
														style="" maxlength="256" tabindex="16"></div>
											</div>										
											<div class="form-group">
												<div class="col-xs-24 col-120"><label class="control-label ten_vt2">Tên
														khác</label></div>
												<div class="col-xs-24 col-fill-120"><input id="inp_tenvt2" value="" spellcheck="false"
														type="text" class="input-field ten_vt2 C  form-control materail-input C"
														style="" maxlength="256" tabindex="17"></div>
											</div>		
												<div class="form-group">
												<div class="col-xs-24 col-120"><label class="control-label tag">Tag</label></div>
												<div class="col-xs-24 col-fill-120"><input id="inp_tag" value="" spellcheck="false"
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
												<div class="col-xs-24 col-120"><label class="control-label danh_gia">Đánh giá</label></div>
												<div class="col-xs-24 col-fill-120"><input id="inp_danhgia" value="0" spellcheck="false"
														type="text" class="input-field input-number  danh_gia C  form-control materail-input C"
														style="" maxlength="256" tabindex="17"></div>
												</div>	
										</div>
									</div>
									<div class="modal-body-tab">
										<div class="tab-form">
											<ul class="nav nav-tabs col-xs-24" style="margin-top: 10px;">
												<li class="active">
													<a data-toggle="tab" class="li-tab dmvt_1" href="#dmvt_1">Thông tin chung</a></li>
												 
												 
											 
											 
												 
											</ul>
											<div class="tab-content" style="height: 400px; min-height: 330px;">
												<div id="dmvt_1" class="tab-pane in active">
													<div class="row">
														<div class="modal-left-300">
															<!--
															<div class="form-group">
																<div class="col-xs-24 col-120"><label
																		class="control-label ma_km">Mã khuyễn mãi</label></div>
																<div class="col-xs-24 col-120"><input value=""
																		spellcheck="false" type="text"
																		class="input-field ma_km C Lookup form-control materail-input C"
																		style="text-transform: uppercase;" maxlength="32"
																		tabindex="18"><span class="icon-lookup btn-lookup"
																		data-toggle="modal"></span></div>
																<div class="col-xs-24 col-fill-240"><input value=""
																		spellcheck="false" type="text"
																		class="input-field ten_km C  form-control materail-input C"
																		tabstop="0" style="" readonly="" tabindex="19"></div>
															</div>
															<div class="form-group">
																<div class="col-xs-24 col-120"><label
																		class="control-label dvt">Đơn vị tính</label></div>
																<div class="col-xs-24 col-120"><input value=""
																		spellcheck="false" type="text"
																		class="input-field dvt C Lookup form-control materail-input C"
																		style="text-transform: uppercase;" maxlength="32"
																		tabindex="20"><span class="icon-lookup btn-lookup"
																		data-toggle="modal"></span></div>
																<div class="col-xs-24 col-fill-240"><input value=""
																		spellcheck="false" type="text"
																		class="input-field ten_dvt C  form-control materail-input C"
																		tabstop="0" style="" readonly="" tabindex="21"></div>
															</div>
															-->
													 
															
														 														
														 														
															 
														 															
														</div>
												 
												</div>
												 
												<div id="dmvt_3" class="tab-pane">
													<div class="row">
														<div class="modal-left-0">
															<div class="form-group">
																<div class="col-xs-24 col-170"><label
																		class="control-label noi_dung">Thông tin Bài viết (Nội dung )</label>
																</div>
																<div class="col-xs-24"><input value="" id="inp_ghichu"
																		spellcheck="false" type="text"
																		class="input-field noi_dung C  form-control materail-input C"
																		style="" maxlength="4000" tabindex="39"></div>
															</div>											
															
															<div class="form-group">
																<div class="col-xs-24 col-150"><label
																		class="control-label mo_ta">Chi tiết Bài viết ( Mô tả )</label>
																</div>
																<div class="col-xs-24"><input value="" id="inp_mota"
																		spellcheck="false" type="text"
																		class="input-field mo_ta C  form-control materail-input C"
																		style="" maxlength="4000" tabindex="39"></div>
															</div>
														</div>
													</div>
												</div>
												 
												<div id="dmvt_5" class="tab-pane">
													<div class="row">
														<div class="modal-left-0">
															<!--
															<div class="form-group css4control-ximage">
																<div class="col-xs-24 col-120"><label
																		class="control-label ximage">Chọn hình ảnh</label></div>
																<div class="col-xs-24 col-480">
																	<div class="upload-field ximage C Image" style="">
																		<div class="ajax-file-upload"
																			style="position: relative; overflow: hidden; cursor: default;">
																			<img src="../Images/ic_file_upload.png"
																				class="btn-file-upload">
																			<form method="POST"
																				action="../AppHandler/FileHandler.ashx?param=VXBsb2FkW0AjXTA="
																				enctype="multipart/form-data"
																				style="margin: 0px; padding: 0px;"><input
																					type="file"
																					id="ajax-upload-id-1692265458656"
																					name="file-ximage[]" accept="*" multiple=""
																					style="position: absolute; cursor: pointer; top: 0px; width: 100%; height: 100%; left: 0px; z-index: 100; opacity: 0;">
																			</form>
																		</div>
																		<div></div>
																	</div>
																	<div class="scrollbar-image">
																		<div class="container-image"></div>
																	</div>
																</div>
															</div>
															-->
															<div class="form-group">
																<div class="col-xs-24 col-fill-240 form-group-hidden">												
																	<input value="" id="txtImage1" spellcheck="false" type="text" 
																		class="input-field ma_bv C AutoIncrease form-control materail-input C"
																		style="text-transform: uppercase;" maxlength="32" tabindex="15">
																</div>
																<div class="col-xs-24 col-120 ximage-all">
																	<input type="button" id="inp_ximage1" class="ximage C AutoIncrease materail-input C" value="Tải ảnh" onclick="BrowseServer('txtImage1', 'img_ximage1');" />
																	<img class="image-single" id="img_ximage1" src="" onerror="src='../Images/noImage.png'"/>
																</div>	
																
														<div style="display:none">		<div class="col-xs-24 col-fill-240 form-group-hidden">												
																	<input value="" id="txtImage2" spellcheck="false" type="text"
																		class="input-field ma_bv C AutoIncrease form-control materail-input C"
																		style="text-transform: uppercase;" maxlength="32" tabindex="15">
																</div>
																<div class="col-xs-24 col-120 ximage-all">
																	<input type="button" id="inp_ximage2" class="ximage C AutoIncrease materail-input C" value="Tải ảnh" onclick="BrowseServer('txtImage2', 'img_ximage2');" />
																	<img class="image-single" id="img_ximage2" src="" onerror="src='../Images/noImage.png'" />
																</div>	
																
																<div class="col-xs-24 col-fill-240 form-group-hidden">												
																	<input value="" id="txtImage3" spellcheck="false" type="text"
																		class="input-field ma_bv C AutoIncrease form-control materail-input C"
																		style="text-transform: uppercase;" maxlength="32" tabindex="15">
																</div>
																<div class="col-xs-24 col-120 ximage-all">
																	<input type="button" id="inp_ximage3" class="ximage C AutoIncrease materail-input C" value="Tải ảnh" onclick="BrowseServer('txtImage3', 'img_ximage3');" />
																	<img class="image-single" id="img_ximage3" src="" onerror="src='../Images/noImage.png'" />
																</div>	
																
																<div class="col-xs-24 col-fill-240 form-group-hidden">												
																	<input value="" id="txtImage4" spellcheck="false" type="text"
																		class="input-field ma_bv C AutoIncrease form-control materail-input C"
																		style="text-transform: uppercase;" maxlength="32" tabindex="15">
																</div>
																<div class="col-xs-24 col-120 ximage-all">
																	<input type="button" id="inp_ximage4" class="ximage C AutoIncrease materail-input C" value="Tải ảnh" onclick="BrowseServer('txtImage4', 'img_ximage4');" />
																	<img class="image-single" id="img_ximage4" src="" onerror="src='../Images/noImage.png'" />
																</div>	
																
																<div class="col-xs-24 col-fill-240 form-group-hidden">												
																	<input value="" id="txtImage5" spellcheck="false" type="text"
																		class="input-field ma_bv C AutoIncrease form-control materail-input C"
																		style="text-transform: uppercase;" maxlength="32" tabindex="15">
																</div>
																<div class="col-xs-24 col-120 ximage-all">
																	<input type="button" id="inp_ximage5" class="ximage C AutoIncrease materail-input C" value="Tải ảnh" onclick="BrowseServer('txtImage5', 'img_ximage5');" />
																	<img class="image-single" id="img_ximage5" src="" onerror="src='../Images/noImage.png'" />
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
		<div id="BACKDROP_Dir_dmvt_2001" class="modal-backdrop in" style="z-index: 2001;display: none;"></div>
	</div>
	
	
	<script src="../Js/ckeditor/ckeditor.js"></script>
	
    <script src="../Js/ckfinder/ckfinder.js"></script>
	<script>
		var flag = "";
		var key = "";
		var editor1;
		var editor2;
		var dataDmvt = [];
		var dataDmkm = [];
		var dataDmdvt = [];
		var dataDmlvt = [];
		var dataDmkho = [];
		var dataDmvitri = [];
		var dataDmnh = [];
		
		$('#TOOLBAR_dmvt_0_add').click(function() {
			onLoadAction();
			hide('.form-views');
			show('.form-buttons');
			editor1.setData('');
			editor2.setData('');
			setDisableInputs('#inp_mavt', false);
			show('#DIR_dmvt_Dir');
			flag = "NEW";	
		});
		$('#TOOLBAR_dmvt_0_edit').click(function() {
			onLoadAction();
			setDisableInputs('#inp_mavt', true);
			getInfoDM(key, dataDmvt);
			show('#DIR_dmvt_Dir');
			flag = "EDIT";				
		}); 
		$('#TOOLBAR_dmvt_0_delete').click(function() {
			flag = "DELETE";		
			show('#DIR_Question__2002');
			$('.btn-ok-confirm').click(function() {	
				if (flag == "DELETE") { 	
					var m = new Memvars();	
					var p = window.location.href.toString();
					p = p.substring(0, p.indexOf("Main/")) + 'AppService/EService.asmx/' + "GetData"; //GetValue		
					var controller = "st_Create_Edit_Delete_DM";		
					
					var query = "delete from dmbv where ma_bv = '" + key + "';";
					console.log(query);
					
					var columnkey = "ma_bv";
					var id = key;
					var action = "DELETE";
					var table = "dbo.dmbv";
					
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
								getDataAll("dmbv", dataDmvt,"1");	
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
		
		$('#TOOLBAR_dmvt_0_view').click(function() {
			onLoadAction();
			setDisableInputs('input.input-field', true);
			setDisableInputs('select.input-field', true);
			setDisableInputs('input.ximage ', true);
			//editor1.readOnly = true;
			//editor2.readOnly = true;
			getInfoDM(key, dataDmvt);
			show('#DIR_dmvt_Dir');
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
				hide('#DIR_dmvt_Dir');
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
						
						var query = "delete from dmbv where ma_bv = '" + key + "';";
						console.log(query);
						
						var columnkey = "ma_bv";
						var id = key;
						var action = "DELETE";
						var table = "dbo.dmbv";
						
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
									getDataAll("dmbv", dataDmvt,"1");	
									setTimeout(firstLoadPaged, 500);
									hide('#DIR_Question__2002');
									hide('#DIR_dmvt_Dir');
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
			hide('#DIR_dmvt_Dir');
		});
					
		$(".btn-close").unbind().click(function() {
			hide('#DIR_dmvt_Dir');
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
			getDataAll("dmbv", dataDmvt,"1");				
			getDataAll("dmkm", dataDmkm);				
			getDataAll("dmdvt", dataDmdvt);				
			getDataAll("dmlvt", dataDmlvt);				
			getDataAll("dmkho", dataDmkho);				
			getDataAll("dmvitri", dataDmvitri);				
			getDataAll("dmnh", dataDmnh);
		}
		
		function firstLoadPaged() {
			getDm('dmbv', dataDmvt);
			getDm('dmkm', dataDmkm);
			getDm('dmdvt', dataDmdvt);
			getDm('dmlvt', dataDmlvt);
			getDm('dmkho', dataDmkho);
			getDm('dmvitri', dataDmvitri);
			getDm('dmnh1', dataDmnh);
			getDm('dmnh2', dataDmnh);
			getDm('dmnh3', dataDmnh);
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
				if (item.ma_bv == id) {
					console.log(item);	
					$('#inp_mavt').val(item.ma_bv);
					$('#inp_tenvt').val(item.ten_bv);
					$('#inp_tag').val(item.tag);
				 
					selectElement('select-status', item.status);
					 
					editor1.setData(item.noi_dung);
					editor2.setData(item.mo_ta);
					 
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
				var mabv = $('#inp_mavt').val();
				var tenbv =  $('#inp_tenvt').val();
				var tenbv2 = $('#inp_tenvt2').val();
				var danhgia = $('#inp_danhgia').val();
				var tag = $('#inp_tag').val();
				var noidung = editor1.getData();
				var noidung1 = "";
				var noidung2 = "";
				var noidung3 = "";
				var noidung4 = "";
				var noidung5 = "";
				var mota = editor2.getData();
				var mota1 = "";
				var mota2 = "";
				var mota3 = "";
				var mota4 = "";
				var mota5 = "";
				var luotxem = 0;
				var trangthai = $('#select-status').find(":selected").val();
				var userid0 = "1";
				var userid2 = "1";
				var datetime0 = getDatetimeNow();
				var datetime2 = getDatetimeNow();	 
				var hinhanh1 = $('#txtImage1').val();			
			 
				if (noidung.length > 3996) {
					var str = strSplitOnLength(noidung, 3996);
					noidung1 = str[0];
					noidung2 = str[1];
					if (noidung2.length > 3996) {
						var str = strSplitOnLength(noidung2, 3996);
						noidung2 = str[0];
						noidung3 = str[1];
						if (noidung3.length > 3996) {
							var str = strSplitOnLength(noidung3, 3996);
							noidung3 = str[0];
							noidung4 = str[1];
							if (noidung4.length > 3996) {
								var str = strSplitOnLength(noidung4, 3996);
								noidung4 = str[0];
								noidung5 = str[1];
							}
						}
					}
				}
				else {
					noidung1 = noidung; 
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
	
				var query = "insert into dmbv(ma_bv, ten_bv, ten_bv2, mo_ta, noi_dung, luot_xem, danh_gia, tag, ximage1, status, user_id0, user_id2, datetime0, datetime2) " + 
							"select '" + mabv + "', N'" + tenbv + "', N'" + tenbv2 + "', N'@mota1@mota2@mota3@mota4@mota5', N'@ghichu1@ghichu2@ghichu3@ghichu4@ghichu5', 0, N'" + danhgia + "', N'" + tag + "', '" + hinhanh1 + "', '" + trangthai + "', '" + userid0 + "', '" + userid2 + "', '" + datetime0 + "', '" + datetime2 + "';";
				console.log(query);
				
				
				var columnkey = "ma_bv";
				var id = mabv;
				var action = "NEW";
				var table = "dbo.dmbv";
				
				m.val('query', 'C', query);
				m.val('columnkey', 'C', columnkey);
				m.val('id', 'C', id);
				m.val('action', 'C', action);
				m.val('table', 'C', table);
				m.val('ghichu1', 'C', noidung1);
				m.val('ghichu2', 'C', noidung2);
				m.val('ghichu3', 'C', noidung3);
				m.val('ghichu4', 'C', noidung4);
				m.val('ghichu5', 'C', noidung5);
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
							hide('#DIR_dmvt_Dir');
							setNullInputs('input.input-field');
							setZeroInputs('input.input-number');
							dataDmvt = [];
							getDataAll("dmbv", dataDmvt,"1");	
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
				var mabv = $('#inp_mavt').val();
				var tenbv =  $('#inp_tenvt').val();
				var tenbv2 = $('#inp_tenvt2').val();
				var danhgia = $('#inp_danhgia').val();
				var tag = $('#inp_tag').val();
				var noidung = editor1.getData();
				var noidung1 = "";
				var noidung2 = "";
				var noidung3 = "";
				var noidung4 = "";
				var noidung5 = "";
				var mota = editor2.getData();
				var mota1 = "";
				var mota2 = "";
				var mota3 = "";
				var mota4 = "";
				var mota5 = "";
				//var luotxem = 0; , luot_xem = " + luotxem + "
				var trangthai = $('#select-status').find(":selected").val();
				var userid0 = "1";
				var userid2 = "1";
				var datetime0 = getDatetimeNow();
				var datetime2 = getDatetimeNow();	 
				var hinhanh1 = $('#txtImage1').val();			
	 
				if (noidung.length > 3996) {
					var str = strSplitOnLength(noidung, 3996);
					noidung1 = str[0];
					noidung2 = str[1];
					if (noidung2.length > 3996) {
						var str = strSplitOnLength(noidung2, 3996);
						noidung2 = str[0];
						noidung3 = str[1];
						if (noidung3.length > 3996) {
							var str = strSplitOnLength(noidung3, 3996);
							noidung3 = str[0];
							noidung4 = str[1];
							if (noidung4.length > 3996) {
								var str = strSplitOnLength(noidung4, 3996);
								noidung4 = str[0];
								noidung5 = str[1];
							}
						}
					}
				}
				else {
					noidung1 = noidung; 
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
	 
				var query = "update dmbv set ma_bv = '" + mabv + "', ten_bv = N'" + tenbv + "', ten_bv2 = N'" + tenbv2 + "', tag = N'" + tag + "', noi_dung = N'@ghichu1@ghichu2@ghichu3@ghichu4@ghichu5', mo_ta = N'@mota1@mota2@mota3@mota4@mota5', status = '" + trangthai + "', user_id0 = '" + userid0 + "', user_id2 = '" + userid2 + "', datetime0 = '" + datetime0 + "', datetime2 = '" + datetime2 + "', ximage1 = N'" + hinhanh1 + "' where ma_bv = '" + key + "';";
				console.log(query);
				
				console.log(noidung);
				console.log(mota);
				
				var columnkey = "ma_bv";
				var id = mabv;
				var action = "EDIT";
				var table = "dbo.dmbv";
				
				m.val('query', 'C', query);
				m.val('columnkey', 'C', columnkey);
				m.val('id', 'C', id);
				m.val('action', 'C', action);
				m.val('table', 'C', table);
				m.val('ghichu1', 'C', noidung1);
				m.val('ghichu2', 'C', noidung2);
				m.val('ghichu3', 'C', noidung3);
				m.val('ghichu4', 'C', noidung4);
				m.val('ghichu5', 'C', noidung5);
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
							hide('#DIR_dmvt_Dir');
							setNullInputs('input.input-field');
							setZeroInputs('input.input-number');
							dataDmvt = [];
							getDataAll("dmbv", dataDmvt,"1");	
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
			if (text == 'dmbv') {			
				var html = '';					
				container.forEach(function (item, num) {		
					html += '<tr>' +
								'<td class="txt-right" style="position: relative; z-index: 9;">' + (num + 1) + '</td>' +
								'<td class="grid-cell ma_bv C canfocus grid-cell-link" style="" tabindex="1">' + item.ma_bv + '</td>' +
								'<td class="grid-cell ten_bv C canfocus" style="" tabindex="2">' + item.ten_bv + '</td>' +
								'<td class="grid-cell tag C canfocus" style="" tabindex="2">' + item.tag + '</td>' +
								'<td class="grid-cell mo_ta C canfocus" style="display:none" tabindex="3">' + item.mo_ta + '</td>' +
								'<td class="grid-cell ximage1 C canfocus" style="" tabindex="4">' + item.ximage1 + '</td>' +
								 
							'</tr>';
				});
				$("#BODY_" + text + "_0").html(html);	 
			}			
		};

		$(document).ready(function () {	
            editor1 = CKEDITOR.replace('inp_ghichu', {
                customConfig: '/Js/ckeditor/config.js',
                extraAllowedContent: 'span',
				maxLength: 256, 
            });	
			editor2 = CKEDITOR.replace('inp_mota', {
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
			getCellTable('TABLE_dmvt_0');	
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
