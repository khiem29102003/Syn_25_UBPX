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
		<div id="DIR_dmvt_Grid" class="dir" style="position: fixed; width: 100%;"><label class="text-title-grid">Danh mục
				vật tư, sản phẩm</label><label class="sub-title-grid">Thêm, xóa, sửa...</label>
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
									<div style="margin-right:4px ;"></div>Sao chép
								</td>
								<td style="display:inline-flex;line-height:24px;padding-right:8px;cursor:pointer;"
									title="Xem (Alt + W)" class="toolbar-view mobile-hide" id="TOOLBAR_dmvt_0_view">
									<div style="margin-right:4px;"></div>Xem
								</td>
								<td title="-" class="toolbar-split mobile-hide" id="TOOLBAR_dmvt_0_split">
									<div></div>
								</td>
								<td title="-" class="toolbar-split mobile-hide" id="TOOLBAR_dmvt_0_split">
									<div></div>
								</td>
								<td title="Làm tươi" class="toolbar-refresh mobile-hide" id="TOOLBAR_dmvt_0_refresh" style="display:none">
									<div></div>
								</td>
								<td title="Cố định cột" class="toolbar-freeze mobile-hide" id="TOOLBAR_dmvt_0_freeze" style="display:none">
									<div></div>
								</td>
								<td title="-" class="toolbar-split mobile-hide" id="TOOLBAR_dmvt_0_split">
									<div></div>
								</td>
								<td title="Kết xuất dữ liệu" class="toolbar-export mobile-hide" id="TOOLBAR_dmvt_0_export" style="display:none">
									<div></div>
								</td>
								<td title="Tải mẫu Excel" class="toolbar-downtemplate mobile-hide"
									id="TOOLBAR_dmvt_0_downtemplate" style="display:none">
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
							<col class="grid-colgroup ma_vt" style="width: 120px;">
							<col class="grid-colgroup ten_vt" style="width: 300px;">
							<col class="grid-colgroup dvt" style="width: 80px;">
							<col class="grid-colgroup ma_lvt" style="width: 80px;">
							<col class="grid-colgroup thu_tu" style="width: 150px;">
							<col class="grid-colgroup ximage1" style="width: 150px;">
							<col class="grid-colgroup ximage2" style="width: 150px;">
							<col class="grid-colgroup ximage3" style="width: 150px;">
							<col class="grid-colgroup ximage4" style="width: 150px;">
							<col class="grid-colgroup ximage5" style="width: 150px;">
							<col class="grid-colgroup ximage6" style="width: 150px;">
							<col class="grid-colgroup ximage7" style="width: 150px;">
							<col class="grid-colgroup ximage8" style="width: 150px;">
							<col class="grid-colgroup ximage9" style="width: 150px;">
						</colgroup>
						<thead>
							<tr>
								<th style="position: relative; z-index: 10;"></th>
								<th class="grid-column ma_vt C col-has-focus" style="">
									<div class="btn-header-options"></div>
									<div class="col-header-resize"></div><span>Mã vật tư</span>
								</th>
								<th class="grid-column ten_vt C col-has-focus" style="">
									<div class="btn-header-options"></div>
									<div class="col-header-resize"></div><span>Tên vật tư</span>
								</th>
								<th class="grid-column dvt C col-has-focus" style="">
									<div class="btn-header-options"></div>
									<div class="col-header-resize"></div><span>Đvt</span>
								</th>
								<th class="grid-column ma_lvt C col-has-focus" style="">
									<div class="btn-header-options"></div>
									<div class="col-header-resize"></div><span>Loại vật tư</span>
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
								<th class="grid-column ximage3 C col-has-focus" style="">
									<div class="btn-header-options"></div>
									<div class="col-header-resize"></div><span>Ảnh 3</span>
								</th>
								<th class="grid-column ximage4 C col-has-focus" style="">
									<div class="btn-header-options"></div>
									<div class="col-header-resize"></div><span>Ảnh 4</span>
								</th>
								<th class="grid-column ximage5 C col-has-focus" style="">
									<div class="btn-header-options"></div>
									<div class="col-header-resize"></div><span>Ảnh 5</span>
								</th>
									<th class="grid-column ximage6 C col-has-focus" style="">
									<div class="btn-header-options"></div>
									<div class="col-header-resize"></div><span>Ảnh 6</span>
								</th>
									<th class="grid-column ximage7 C col-has-focus" style="">
									<div class="btn-header-options"></div>
									<div class="col-header-resize"></div><span>Ảnh 7</span>
								</th>
									<th class="grid-column ximage8 C col-has-focus" style="">
									<div class="btn-header-options"></div>
									<div class="col-header-resize"></div><span>Ảnh 8</span>
								</th>
									<th class="grid-column ximage9 C col-has-focus" style="">
									<div class="btn-header-options"></div>
									<div class="col-header-resize"></div><span>Ảnh 9</span>
								</th>
							</tr>
						</thead>
						<tbody id="BODY_dmvt_0" class="data">
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
	
	
		<div id="DIR_dmvt_Dir" class="dir modal" role="dialog" style="z-index: 2002; display: none;">
			<div class="modal-dialog modal-dialog-md ui-draggable" role="document">			
				<div class="modal-content">
					<form id="form-dmvt" onsubmit="return false" style="height: calc(100%);">
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
												<div class="col-xs-24 col-120"><label class="control-label ma_vt">Mã sản
														phẩm</label></div>
												<div class="col-xs-24 col-120"><input value="" required id="inp_mavt" spellcheck="false" type="text"  name="ma_vt"
														class="input-field ma_vt C AutoIncrease form-control materail-input C"
														style="text-transform: uppercase;" maxlength="32" tabindex="15"></div>
											</div>										
											
											<div class="form-group">
												<div class="col-xs-24 col-120"><label class="control-label ten_vt">Tên sản
														phẩm</label></div>
												<div class="col-xs-24 col-fill-120"><input id="inp_tenvt" required
														type="text" class="input-field ten_vt C  form-control materail-input C"
														style="" maxlength="256" tabindex="16"></div>
											</div>										
											<div class="form-group">
												<div class="col-xs-24 col-120"><label class="control-label ten_vt2">Tên
														khác</label></div>
												<div class="col-xs-24 col-fill-120"><input id="inp_tenvt2" value="" spellcheck="false"
														type="text" class="input-field ten_vt2 C  form-control materail-input C"
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
													<a data-toggle="tab" class="li-tab dmvt_1" href="#dmvt_1">Thông tin chung</a></li>
												<li><a data-toggle="tab" class="li-tab dmvt_2" href="#dmvt_2">Bảo hành</a></li>
												<li><a data-toggle="tab" class="li-tab dmvt_3" href="#dmvt_3">Mô tả</a></li>
												<li><a data-toggle="tab" class="li-tab dmvt_4" href="#dmvt_4">Thông tin</a></li>
												<li><a data-toggle="tab" class="li-tab dmvt_5" href="#dmvt_5">Thông số</a></li>
												<li><a data-toggle="tab" class="li-tab dmvt_6" href="#dmvt_6">Kích cỡ/Màu sắc</a></li>
												<li><a data-toggle="tab" class="li-tab dmvt_7" href="#dmvt_7">Hình ảnh</a></li>
												<li><a data-toggle="tab" class="li-tab dmvt_8" href="#dmvt_8">Khác</a></li>
											</ul>
											<div class="tab-content" style="height: 475px; min-height: 330px;">
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
															<div class="form-group">
																<div class="col-xs-24 col-120"><label class="control-label ma_km">Mã khuyến mãi</label></div>
																<div class="col-xs-24 col-fill-240">
																	<select class="input-field ma_km C form-control materail-input" id="select-dmkm" tabstop="0" style="" tabindex="92">
																		<option value='' selected='true'> Chọn </option>
																	</select>
																</div>
															</div>
															
															<div class="form-group">
																<div class="col-xs-24 col-120"><label class="control-label dvt">Đơn vị tính</label></div>
																<div class="col-xs-24 col-fill-240">
																	<select class="input-field dvt C form-control materail-input" name="select-dmdvt" id="select-dmdvt" tabstop="0" style="" tabindex="92" required>
																		<option value='' selected='true'> Chọn </option>																	
																	</select>
																</div>
															</div>															
															<div class="form-group">
																<div class="col-xs-24 col-120"><label
																		class="control-label ma_lvt">Loại vật tư</label></div>
																<div class="col-xs-24 col-fill-240">
																	<select class="input-field ma_lvt C form-control materail-input" name="select-dmlvt" id="select-dmlvt" tabstop="0" style="" tabindex="92" required>
																		<option value='' selected='true'> Chọn </option>
																	</select>
																	<!--
																	<input value=""
																		spellcheck="false" type="text"
																		class="input-field ma_lvt C Lookup form-control materail-input C"
																		style="text-transform: uppercase;" maxlength="32"
																		tabindex="24">
																	<span class="icon-lookup btn-lookup" data-toggle="modal"></span>
																	-->
																</div>
																<!--
																<div class="col-xs-24 col-fill-240"><input value=""
																		spellcheck="false" type="text"
																		class="input-field ten_lvt C  form-control materail-input C"
																		tabstop="0" style="" readonly="" tabindex="25"></div>
																-->
															</div>															
															<div class="form-group">
																<div class="col-xs-24 col-120"><label class="control-label ma_kho">Mã kho</label></div>
																<div class="col-xs-24 col-fill-240">
																	<select class="input-field ma_kho C form-control materail-input" id="select-dmkho" tabstop="0" style="" tabindex="92">	
																		<option value='' selected='true'> Chọn </option>																
																	</select>
																</div>
															</div>	
															<div class="form-group">
																<div class="col-xs-24 col-120"><label class="control-label ma_vi_tri">Mã vị trí</label></div>
																<div class="col-xs-24 col-fill-240">
																	<select class="input-field ma_vi_tri C form-control materail-input" id="select-dmvitri" tabstop="0" style="" tabindex="92">		
																		<option value='' selected='true'> Chọn </option>															
																	</select>
																</div>
															</div>																
														</div>
														<div class="modal-right-300">
															<div class="form-group">
																<div class="col-xs-24 col-120"><label
																		class="control-label ton_kho_yn">Theo dõi tồn kho</label></div>
																<div class="col-xs-24 col-60">
																	<div class="checkbox"><label><input
																				class="input-field ton_kho_yn B" undefined="" id="inp_tonkhoyn"
																				tabstop="0" type="checkbox" tabindex="22"><span
																				class="checkbox-material"><span
																					class="check"></span></span></label></div>
																</div>
															</div>
															<div class="form-group">															
																<div class="col-xs-24 col-120"><label
																		class="control-label lo_yn">Theo dõi lô</label></div>
																<div class="col-xs-24 col-60">
																	<div class="checkbox"><label><input
																				class="input-field lo_yn B" undefined="" id="inp_loyn"
																				tabstop="0" type="checkbox" tabindex="23"><span
																				class="checkbox-material"><span
																					class="check"></span></span></label></div>
																</div>
															</div>
															<div class="form-group">
																<div class="col-xs-24 col-120"><label class="control-label nh_vt1">Nhóm 1</label></div>
																<div class="col-xs-24 col-fill-120">
																	<select class="input-field nh_vt1 C form-control materail-input" id="select-dmnh1" tabstop="0" style="" tabindex="92">	
																		<option value='' selected='true'> Chọn </option>																
																	</select>
																</div>
															</div>
															<div class="form-group">
																<div class="col-xs-24 col-120"><label class="control-label nh_vt2">Nhóm 2</label></div>
																<div class="col-xs-24 col-fill-120">
																	<select class="input-field nh_vt2 C form-control materail-input" id="select-dmnh2" tabstop="0" style="" tabindex="92">	
																		<option value='' selected='true'> Chọn </option>																
																	</select>
																</div>
															</div>
															<div class="form-group">
																<div class="col-xs-24 col-120"><label class="control-label nh_vt3">Nhóm 3</label></div>
																<div class="col-xs-24 col-fill-120">
																	<select class="input-field nh_vt3 C form-control materail-input" id="select-dmnh3" tabstop="0" style="" tabindex="92">	
																		<option value='' selected='true'> Chọn </option>																
																	</select>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div id="dmvt_2" class="tab-pane">
													<div class="row">
														<div class="modal-left-240">
															<div class="form-group">
																<div class="col-xs-24 col-140"><label
																		class="control-label ma_imei">Mã imei</label></div>
																<div class="col-xs-24 col-120"><input value="" id="inp_maimei"
																		spellcheck="false" type="text"
																		class="input-field ma_imei C  form-control materail-input C"
																		style="text-transform: uppercase;" maxlength="32"
																		tabindex="36"></div>
															</div>
															<div class="form-group">
																<div class="col-xs-24 col-140"><label
																		class="control-label so_ngay_sp">Vòng đời sp (số
																		ngày)</label></div>
																<div class="col-xs-24 col-120"><input value="0" id="inp_songaysp"
																		spellcheck="false" type="text"
																		class="input-field input-number so_ngay_sp N  txt-right form-control materail-input N"
																		style="" tabindex="37"></div>
															</div>
															<div class="form-group">
																<div class="col-xs-24 col-140"><label
																		class="control-label so_ngay_bh">Tg bảo hành (số
																		ngày)</label></div>
																<div class="col-xs-24 col-120"><input value="0" id="inp_songaybh"
																		spellcheck="false" type="text"
																		class="input-field input-number so_ngay_bh N  txt-right form-control materail-input N"
																		style="" tabindex="38"></div>
															</div>
														</div>
													</div>
												</div>
												<div id="dmvt_3" class="tab-pane">
													<div class="row">
														<div class="modal-left-0">
															<div class="form-group">
																<div class="col-xs-24 col-120"><label
																		class="control-label mo_ta">Mô tả sản phẩm</label>
																</div>
																<div class="col-xs-24"><input value="" id="inp_mota"
																		spellcheck="false" type="text"
																		class="input-field mo_ta C  form-control materail-input C"
																		style="" maxlength="4000" tabindex="39"></div>
															</div>
														</div>
													</div>
												</div>
												<div id="dmvt_4" class="tab-pane">
													<div class="row">
														<div class="modal-left-0">
															<div class="form-group">
																<div class="col-xs-24 col-120"><label
																		class="control-label ghi_chu">Thông tin sản phẩm</label>
																</div>
																<div class="col-xs-24"><input value="" id="inp_ghichu"
																		spellcheck="false" type="text"
																		class="input-field ghi_chu C  form-control materail-input C"
																		style="" maxlength="4000" tabindex="39"></div>
															</div>																								
														</div>
													</div>													
												</div>
												<div id="dmvt_5" class="tab-pane">
													<div class="row">
														<div class="modal-left-0">
															<div class="form-group">
																<div class="col-xs-24 col-120"><label
																		class="control-label thong_so">Thông số sản phẩm</label>
																</div>
																<div class="col-xs-24"><input value="" id="inp_thongso"
																		spellcheck="false" type="text"
																		class="input-field thong_so C  form-control materail-input C"
																		style="" maxlength="4000" tabindex="39"></div>
															</div>																								
														</div>
													</div>													
												</div>
												<div id="dmvt_6" class="tab-pane">
													<div class="row">
														<div class="modal-left-0">
															<div class="form-group">
																<div class="col-xs-24 col-120"><label
																		class="control-label ma_vt2">Mã phụ</label></div>
																<div class="col-xs-24 col-120"><input value="" id="inp_mavt2"
																		spellcheck="false" type="text"
																		class="input-field ma_vt2 C  form-control materail-input C"
																		style="text-transform: uppercase;" maxlength="32"
																		tabindex="40"></div>
															</div>
															<div class="form-group">
																<div class="col-xs-24 col-120"><label
																		class="control-label nuoc_sx">Nước sản xuất</label>
																</div>
																<div class="col-xs-24 col-360"><input value="" id="inp_nuocsx"
																		spellcheck="false" type="text"
																		class="input-field nuoc_sx C  form-control materail-input C"
																		style="" maxlength="256" tabindex="41"></div>
															</div>
															<div class="form-group">
																<div class="col-xs-24 col-120"><label
																		class="control-label mau_sac">Màu sắc</label></div>
																<div class="col-xs-24 col-360"><input value="" id="inp_mausac"
																		spellcheck="false" type="text"
																		class="input-field mau_sac C  form-control materail-input C"
																		style="" maxlength="256" tabindex="42"></div>
															</div>
															<div class="form-group">
																<div class="col-xs-24 col-120"><label
																		class="control-label kich_co">Kích cỡ</label></div>
																<div class="col-xs-24 col-360"><input value="" id="inp_kichco"
																		spellcheck="false" type="text"
																		class="input-field kich_co C  form-control materail-input C"
																		style="" maxlength="256" tabindex="43"></div>
															</div>
															<div class="form-group">
																<div class="col-xs-24 col-120"><label
																		class="control-label kieu">Kiểu</label></div>
																<div class="col-xs-24 col-360"><input value="" id="inp_kieu"
																		spellcheck="false" type="text"
																		class="input-field kieu C  form-control materail-input C"
																		style="" maxlength="256" tabindex="44"></div>
															</div>
														</div>
													</div>
												</div>
												<div id="dmvt_7" class="tab-pane">
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
																
																<div class="col-xs-24 col-fill-240 form-group-hidden">												
																	<input value="" id="txtImage3" spellcheck="false" type="text"
																		class="input-field ma_vt C AutoIncrease form-control materail-input C"
																		style="text-transform: uppercase;" maxlength="32" tabindex="15">
																</div>
																<div class="col-xs-24 col-120 ximage-all">
																	<input type="button" id="inp_ximage3" class="ximage C AutoIncrease materail-input C" value="Tải ảnh" onclick="BrowseServer('txtImage3', 'img_ximage3');" />
																	<img class="image-single" id="img_ximage3" src="" onerror="src='../Images/noImage.png'" />
																</div>	
																
																<div class="col-xs-24 col-fill-240 form-group-hidden">												
																	<input value="" id="txtImage4" spellcheck="false" type="text"
																		class="input-field ma_vt C AutoIncrease form-control materail-input C"
																		style="text-transform: uppercase;" maxlength="32" tabindex="15">
																</div>
																<div class="col-xs-24 col-120 ximage-all">
																	<input type="button" id="inp_ximage4" class="ximage C AutoIncrease materail-input C" value="Tải ảnh" onclick="BrowseServer('txtImage4', 'img_ximage4');" />
																	<img class="image-single" id="img_ximage4" src="" onerror="src='../Images/noImage.png'" />
																</div>	
																
																<div class="col-xs-24 col-fill-240 form-group-hidden">												
																	<input value="" id="txtImage5" spellcheck="false" type="text"
																		class="input-field ma_vt C AutoIncrease form-control materail-input C"
																		style="text-transform: uppercase;" maxlength="32" tabindex="15">
																</div>
																<div class="col-xs-24 col-120 ximage-all">
																	<input type="button" id="inp_ximage5" class="ximage C AutoIncrease materail-input C" value="Tải ảnh" onclick="BrowseServer('txtImage5', 'img_ximage5');" />
																	<img class="image-single" id="img_ximage5" src="" onerror="src='../Images/noImage.png'" />
																</div>	
																
																<div class="col-xs-24 col-fill-240 form-group-hidden">												
																	<input value="" id="txtImage6" spellcheck="false" type="text"
																		class="input-field ma_vt C AutoIncrease form-control materail-input C"
																		style="text-transform: uppercase;" maxlength="32" tabindex="15">
																</div>
																<div class="col-xs-24 col-120 ximage-all">
																	<input type="button" id="inp_ximage6" class="ximage C AutoIncrease materail-input C" value="Tải ảnh" onclick="BrowseServer('txtImage6', 'img_ximage6');" />
																	<img class="image-single" id="img_ximage6" src="" onerror="src='../Images/noImage.png'" />
																</div>
																
																<div class="col-xs-24 col-fill-240 form-group-hidden">												
																	<input value="" id="txtImage7" spellcheck="false" type="text"
																		class="input-field ma_vt C AutoIncrease form-control materail-input C"
																		style="text-transform: uppercase;" maxlength="32" tabindex="15">
																</div>
																<div class="col-xs-24 col-120 ximage-all">
																	<input type="button" id="inp_ximage7" class="ximage C AutoIncrease materail-input C" value="Tải ảnh" onclick="BrowseServer('txtImage7', 'img_ximage7');" />
																	<img class="image-single" id="img_ximage7" src="" onerror="src='../Images/noImage.png'" />
																</div>
																
																<div class="col-xs-24 col-fill-240 form-group-hidden">												
																	<input value="" id="txtImage8" spellcheck="false" type="text"
																		class="input-field ma_vt C AutoIncrease form-control materail-input C"
																		style="text-transform: uppercase;" maxlength="32" tabindex="15">
																</div>
																<div class="col-xs-24 col-120 ximage-all">
																	<input type="button" id="inp_ximage8" class="ximage C AutoIncrease materail-input C" value="Tải ảnh" onclick="BrowseServer('txtImage8', 'img_ximage8');" />
																	<img class="image-single" id="img_ximage8" src="" onerror="src='../Images/noImage.png'" />
																</div>
																
																<div class="col-xs-24 col-fill-240 form-group-hidden">												
																	<input value="" id="txtImage9" spellcheck="false" type="text"
																		class="input-field ma_vt C AutoIncrease form-control materail-input C"
																		style="text-transform: uppercase;" maxlength="32" tabindex="15">
																</div>
																<div class="col-xs-24 col-120 ximage-all">
																	<input type="button" id="inp_ximage9" class="ximage C AutoIncrease materail-input C" value="Tải ảnh" onclick="BrowseServer('txtImage9', 'img_ximage9');" />
																	<img class="image-single" id="img_ximage9" src="" onerror="src='../Images/noImage.png'" />
																</div>
																
															</div> 
														</div>
													</div>
												</div>
												<div id="dmvt_8" class="tab-pane">
													<div class="row">
														<div class="modal-left-0">
															<div class="form-group">
																<div class="col-xs-24 col-120"><label
																		class="control-label sl_min">Tồn tối thiểu</label></div>
																<div class="col-xs-24 col-120"><input value="0" id="inp_slmin"
																		spellcheck="false" type="text"
																		class="input-field input-number sl_min N  txt-right form-control materail-input N"
																		style="" tabindex="45"></div>
															</div>
															<div class="form-group">
																<div class="col-xs-24 col-120"><label
																		class="control-label sl_max">Tồn tối đa</label></div>
																<div class="col-xs-24 col-120"><input value="0" id="inp_slmax"
																		spellcheck="false" type="text"
																		class="input-field input-number sl_max N  txt-right form-control materail-input N"
																		style="" tabindex="46"></div>
															</div>														
															<div class="form-group">
																<div class="col-xs-24 col-120"><label
																		class="control-label ngay_nhap">Ngày nhập cuối</label>
																</div>
																<div class="col-xs-24 col-120">
																	<input value="  /  /    " id="inp_ngaynhap"
																		spellcheck="false" type="date"
																		class="input-field ngay_nhap D  form-control materail-input D"
																		style="" tabindex="47">
																	<span class="btn-lookup btn-calendar" style="display: none;"></span>
																</div>
															</div>
															<div class="form-group">
																<div class="col-xs-24 col-120"><label
																		class="control-label ngay_xuat">Ngày xuất cuối</label>
																</div>
																<div class="col-xs-24 col-120">
																	<input value="  /  /    " id="inp_ngayxuat"
																		spellcheck="false" type="date"
																		class="input-field ngay_nhap D  form-control materail-input D"
																		style="" tabindex="47">
																	<span class="btn-lookup btn-calendar" style="display: none;"></span>
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
		var editor_ghichu;
		var editor_mota;
		var editor_thongso;
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
			editor_ghichu.setData('');
			editor_mota.setData('');
			editor_thongso.setData('');
			setDisableInputs('#inp_mavt', false);
			show('#DIR_dmvt_Dir');
			flag = "NEW";	
		});
		$('#TOOLBAR_dmvt_0_edit').click(function() {
			onLoadAction();
			setDisableInputs('#inp_mavt', false);
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
					
					var query = "delete from dmvt where ma_vt = '" + key + "';if exists (select 1 from dmqddvt where ma_vt = '" + key + "') begin delete from dmqddvt where ma_vt = '" + key + "' end";
					console.log(query);
					
					var columnkey = "ma_vt";
					var id = key;
					var action = "DELETE";
					var table = "dbo.dmvt";
					
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
								getDataAll("dmvt", dataDmvt,"1");	
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
						
						var query = "delete from dmvt where ma_vt = '" + key + "';if exists (select * from dmqddvt where ma_vt = '" + key + "') begin delete from dmqddvt where ma_vt = '" + key + "' end";
						console.log(query);
						
						var columnkey = "ma_vt";
						var id = key;
						var action = "DELETE";
						var table = "dbo.dmvt";
						
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
									getDataAll("dmvt", dataDmvt,"1");	
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
			$("#DIR_dmvt_Dir").css("overflowY", "hidden");
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
			getDataAll("dmvt", dataDmvt, "1");				
			getDataAll("dmkm", dataDmkm);				
			getDataAll("dmdvt", dataDmdvt);				
			getDataAll("dmlvt", dataDmlvt);				
			getDataAll("dmkho", dataDmkho);				
			getDataAll("dmvitri", dataDmvitri);				
			getDataAll("dmnh", dataDmnh);
		}
		
		function firstLoadPaged() {
			getDm('dmvt', dataDmvt);
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
				if (item.ma_vt == id) {
					console.log(item);	
					$('#inp_mavt').val(item.ma_vt);
					$('#inp_tenvt').val(item.ten_vt);
					$('#inp_tenvt2').val(item.ten_vt2);
					$('#inp_thutu').val((item.thu_tu) == null ? 0 : (item.thu_tu));
					selectElement('select-status', item.status);
					selectElement('select-dmkm', item.ma_km);
					selectElement('select-dmdvt', item.dvt);
					selectElement('select-dmlvt', item.ma_lvt);
					selectElement('select-dmkho', item.ma_kho);
					selectElement('select-dmvitri', item.ma_vi_tri);
					selectElement('select-dmnh1', item.nh_vt1);
					selectElement('select-dmnh2', item.nh_vt2);
					selectElement('select-dmnh3', item.nh_vt3);
					setCheckedInputs("#inp_tonkhoyn", item.ton_kho_yn);
					setCheckedInputs("#inp_loyn", item.lo_yn);
					$('#inp_maimei').val(item.ma_imei);
					$('#inp_songaysp').val(item.so_ngay_sp);					
					$('#inp_songaybh').val(item.so_ngay_bh);
					editor_ghichu.setData(item.ghi_chu);
					editor_mota.setData(item.mo_ta);
					editor_thongso.setData(item.thong_so);
					console.log(item.ghi_chu);
					console.log(item.mo_ta);
					console.log(item.thong_so);
					$('#inp_mavt2').val(item.ma_vt2);
					$('#inp_nuocsx').val(item.nuoc_sx);
					$('#inp_mausac').val(item.mau_sac);
					$('#inp_kichco').val(item.kich_co);
					$('#inp_kieu').val(item.kieu);
					$('#txtImage1').val(item.ximage1);			
					$('#txtImage2').val(item.ximage2);
					$('#txtImage3').val(item.ximage3);
					$('#txtImage4').val(item.ximage4);
					$('#txtImage5').val(item.ximage5);
					$('#txtImage6').val(item.ximage6);
					$('#txtImage7').val(item.ximage7);
					$('#txtImage8').val(item.ximage8);
					$('#txtImage9').val(item.ximage9);
					setSrcImages('#img_ximage1', item.ximage1, 'REAL');
					setSrcImages('#img_ximage2', item.ximage2, 'REAL');
					setSrcImages('#img_ximage3', item.ximage3, 'REAL');
					setSrcImages('#img_ximage4', item.ximage4, 'REAL');
					setSrcImages('#img_ximage5', item.ximage5, 'REAL');	
					setSrcImages('#img_ximage6', item.ximage6, 'REAL');
					setSrcImages('#img_ximage7', item.ximage7, 'REAL');
					setSrcImages('#img_ximage8', item.ximage8, 'REAL');
					setSrcImages('#img_ximage9', item.ximage9, 'REAL');					
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
				var hinhanh6 = $('#txtImage6').val();
				var hinhanh7 = $('#txtImage7').val();
				var hinhanh8 = $('#txtImage8').val();
				var hinhanh9 = $('#txtImage9').val();

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

				
				var query = "insert into dmvt(ma_vt, ten_vt, ten_vt2, dvt, ton_kho_yn, lo_yn, ma_lvt, nh_vt1, nh_vt2, nh_vt3, ma_kho, ma_vi_tri, sl_min, sl_max, ghi_chu, mo_ta, thong_so, luot_xem, ma_vt2, ma_km, ma_th, nuoc_sx, mau_sac, " + 
							"kich_co, kieu, ngay_nhap, ngay_xuat, unit_id, status, user_id0, user_id2, datetime0, datetime2, ma_imei, so_ngay_sp, so_ngay_bh, bh_yn, ximage1, ximage2, ximage3, ximage4, ximage5,  ximage6, ximage7, ximage8, ximage9,thu_tu) " + 
							"select '" + mavt + "', N'" + tenvt + "', N'" + tenvt2 + "', '" + madvt + "', '" + tonkhoyn + "', '" + loyn + "', '" + malvt + "', '" + nhvt1 + "', '" + nhvt2 + "', '" + nhvt3 + "', '" + makho + "', '" + 
							mavitri + "', '" + slmin + "', '" + slmax + "', N'@ghichu1@ghichu2@ghichu3@ghichu4@ghichu5', N'@mota1@mota2@mota3@mota4@mota5', N'@thongso1@thongso2@thongso3@thongso4@thongso5', '" + luotxem + "', '" + mavt2 + "', '" + makm + "', '" + math + "', N'" + nuocsx + "', N'" + mausac + "', N'" + kichco + "', N'" +
							kieu + "', '" + ngaynhap + "', '" + ngayxuat + "', '" + unitid + "', '" + trangthai + "', '" + userid0 + "', '" + userid2 + "', '" + datetime0 + "', '" + datetime2 + "', '" + maimei + "', '" + songaysp + "', '" + 
							songaybh + "', '" + bhyn + "', '" + hinhanh1 + "', '" + hinhanh2 + "', '" + hinhanh3 + "', '" + hinhanh4 + "', '" + hinhanh5 + "', '" + hinhanh6 + "', '" + hinhanh7 + "', '" + hinhanh8 + "', '" + hinhanh9 + "', " + thutu + ";" +
							"if not exists (select 1 from dmqddvt where ma_vt = '" + mavt + "' and dvt = '" + madvt + "') begin insert into dmqddvt select '" + mavt + "', '" + madvt + "', 1, 'S', 1,'" + datetime0 + "', '" + datetime2 + "', '" + userid0 + "', '" + userid2 + "' end";
				console.log(query);
				
				
				var columnkey = "ma_vt";
				var id = mavt;
				var action = "NEW";
				var table = "dbo.dmvt";
				
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
							hide('#DIR_dmvt_Dir');
							setNullInputs('input.input-field');
							setZeroInputs('input.input-number');
							dataDmvt = [];
							getDataAll("dmvt", dataDmvt,"1");	
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
				var mavt = $('#inp_mavt').val().toUpperCase();
				var tenvt =  $('#inp_tenvt').val();
				var tenvt2 = $('#inp_tenvt2').val();
				var thutu = ($('#inp_thutu').val()) == null ? 0 : ($('#inp_thutu').val());
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
				//var luotxem = 0; , luot_xem = " + luotxem + "
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
				var hinhanh6 = $('#txtImage6').val();
				var hinhanh7 = $('#txtImage7').val();
				var hinhanh8 = $('#txtImage8').val();
				var hinhanh9 = $('#txtImage9').val();

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
				
				var query = "update dmvt set " +
								"ma_vt = '" + mavt + "', ten_vt = N'" + tenvt + "', ten_vt2  = N'" + tenvt2 + "', dvt  = '" + madvt + "', ton_kho_yn  = '" + tonkhoyn + "', lo_yn  = '" + loyn + "', ma_lvt  = '" + malvt + 
								"', nh_vt1  = '" + nhvt1 + "', nh_vt2  = '" +  nhvt2 + "', nh_vt3 = '" + nhvt3 + "', ma_kho = '" + makho + "', ma_vi_tri = '" + mavitri + "', sl_min = " + slmin + ", sl_max = " + slmax + 
								", ghi_chu = N'@ghichu1@ghichu2@ghichu3@ghichu4@ghichu5', mo_ta = N'@mota1@mota2@mota3@mota4@mota5', thong_so = N'@thongso1@thongso2@thongso3@thongso4@thongso5', ma_vt2 = '" + mavt2 + "', ma_km = '" + makm + "', ma_th = '" + math + "', nuoc_sx = N'" + nuocsx + 
								"', mau_sac = N'" + mausac + "', kich_co = N'" + kichco + "', kieu = N'" + kieu + "', ngay_nhap = '" + ngaynhap + "', ngay_xuat = '" + ngayxuat + "', unit_id = '" + unitid + "', status = '" + trangthai + 
								"', user_id0 = '" + userid0 + "', user_id2 = '" + userid2 + "', datetime0 = '" + datetime0 + "', datetime2 = '" + datetime2 + "', ma_imei = '" + maimei + "', so_ngay_sp = '" + songaysp + 
								"', so_ngay_bh = '" + songaybh + "', bh_yn = '" + bhyn + "', ximage1 = N'" + hinhanh1 + "', ximage2 = N'" + hinhanh2 + "', ximage3 = N'" + hinhanh3 + "', ximage4 = N'" + hinhanh4 + "', ximage5 = N'" + hinhanh5 + "',ximage6 = N'" + hinhanh6 + "',ximage7 = N'" + hinhanh7 + "',ximage8 = N'" + hinhanh8 + "',ximage9 = N'" + hinhanh9 + "', thu_tu = " + thutu + 
								" where ma_vt = '" + key + "';" + 
								"if exists (select 1 from dmqddvt where ma_vt = '" + key + "') begin update dmqddvt set ma_vt = '" + mavt + "', dvt = '" + madvt + "', datetime0 = '" + datetime0 + "', datetime2 = '" + datetime2 + "', user_id0 = '" + userid0 + "', user_id2 = '" + userid2 + "' where ma_vt = '" + key + "' end";
				console.log(query);
				
				console.log(ghichu);
				console.log(mota);
				
				var columnkey = "ma_vt";
				var id = key;
				var action = "EDIT";
				var table = "dbo.dmvt";
				
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
							hide('#DIR_dmvt_Dir');
							setNullInputs('input.input-field');
							setZeroInputs('input.input-number');
							dataDmvt = [];
							getDataAll("dmvt", dataDmvt, "1");	
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
			if (text == 'dmvt') {	
				const items = container;
				const rows = items.map((itemObj, index) => {
						let { ma_vt, ten_vt, dvt, ma_lvt, thu_tu, ximage1, ximage2, ximage3, ximage4, ximage5 , ximage6, ximage7, ximage8, ximage9} = itemObj;
						return `<tr>
								<td class="txt-right" style="position: relative; z-index: 9;">${(index + 1)}</td>
								<td class="grid-cell ma_vt C canfocus grid-cell-link" style="" tabindex="1">${ma_vt}</td>
								<td class="grid-cell ten_vt C canfocus" style="" tabindex="2">${ten_vt}</td>
								<td class="grid-cell dvt C canfocus" style="" tabindex="3">${dvt}</td>
								<td class="grid-cell ma_lvt C canfocus" style="" tabindex="4">${ma_lvt}</td>
								<td class="grid-cell thu_tu C canfocus" style="" tabindex="6">${thu_tu}</td>
								<td class="grid-cell ximage1 C canfocus" style="" tabindex="7">${(ximage1 != '' ? `<img src="${ximage1}" height="50" width="50" />` : 'Không có')}</td>
								<td class="grid-cell ximage1 C canfocus" style="" tabindex="8">${(ximage2 != '' ? `<img src="${ximage2}" height="50" width="50" />` : 'Không có')}</td>
								<td class="grid-cell ximage1 C canfocus" style="" tabindex="9">${(ximage3 != '' ? `<img src="${ximage3}" height="50" width="50" />` : 'Không có')}</td>
								<td class="grid-cell ximage1 C canfocus" style="" tabindex="10">${(ximage4 != '' ? `<img src="${ximage4}" height="50" width="50" />` : 'Không có')}</td>
								<td class="grid-cell ximage1 C canfocus" style="" tabindex="11">${(ximage5 != '' ? `<img src="${ximage5}" height="50" width="50" />` : 'Không có')}</td>
								<td class="grid-cell ximage1 C canfocus" style="" tabindex="12">${(ximage6 != '' ? (ximage6 != null ? `<img src="${ximage6}" height="50" width="50" />` : 'Không có') : 'Không có')}</td>
								<td class="grid-cell ximage1 C canfocus" style="" tabindex="13">${(ximage7 != '' ? (ximage7 != null ? `<img src="${ximage7}" height="50" width="50" />` : 'Không có') : 'Không có')}</td>
								<td class="grid-cell ximage1 C canfocus" style="" tabindex="14">${(ximage8 != '' ? (ximage8 != null ? `<img src="${ximage8}" height="50" width="50" />` : 'Không có') : 'Không có')}</td>
								<td class="grid-cell ximage1 C canfocus" style="" tabindex="15">${(ximage9 != '' ? (ximage9 != null ? `<img src="${ximage9}" height="50" width="50" />` : 'Không có') : 'Không có')}</td>
							</tr>`;
				});
				console.log(`BODY_${text}_0`);
				const tag = document.getElementById(`BODY_${text}_0`);
				tag.innerHTML = rows.join("");	
			}
			if (text == 'dmkm') {
				const items = container;
				const rows = items.map((itemObj, index) => {
						let { ma_km, ten_km } = itemObj;
						return `<option value="${ma_km}">${ten_km}</option>`;
				});
				const tag = document.getElementById(`select-${text}`);
				tag.innerHTML = `<option value='' selected='true'> Chọn </option>` + rows.join("");	 
			}
			if (text == 'dmdvt') {	
				const items = container;
				const rows = items.map((itemObj, index) => {
						let { dvt, ten_dvt } = itemObj;
						return `<option value="${dvt}">${ten_dvt}</option>`;
				});
				const tag = document.getElementById(`select-${text}`);
				tag.innerHTML = `<option value='' selected='true'> Chọn </option>` + rows.join("");	 						 
			}
			if (text == 'dmlvt') {
				const items = container;
				const rows = items.map((itemObj, index) => {
						let { ma_lvt, ten_lvt } = itemObj;
						return `<option value="${ma_lvt}">${ten_lvt}</option>`;
				});
				const tag = document.getElementById(`select-${text}`);
				tag.innerHTML = `<option value='' selected='true'> Chọn </option>` + rows.join("");		 
			}	
			if (text == 'dmkho') {	
				const items = container;
				const rows = items.map((itemObj, index) => {
						let { ma_kho, ten_kho } = itemObj;
						return `<option value="${ma_kho}">${ten_kho}</option>`;
				});
				const tag = document.getElementById(`select-${text}`);
				tag.innerHTML = `<option value='' selected='true'> Chọn </option>` + rows.join("");	 
			}	
			if (text == 'dmvitri') {	
				const items = container;
				const rows = items.map((itemObj, index) => {
						let { ma_vi_tri, ten_vi_tri } = itemObj;
						return `<option value="${ma_vi_tri}">${ten_vi_tri}</option>`;
				});
				const tag = document.getElementById(`select-${text}`);
				tag.innerHTML = `<option value='' selected='true'> Chọn </option>` + rows.join("");				 
			}	
			if (text == 'dmnh1') {	
				const items = container;
				const rows = items.map((itemObj, index) => {
						let { ma_nh, ten_nh } = itemObj;
						if (ma_nh == "VT1") {	
							return `<option value="${ma_nh}">${ten_nh}</option>`;
						}
				});
				const tag = document.getElementById(`select-${text}`);
				tag.innerHTML = `<option value='' selected='true'> Chọn </option>` + rows.join("");		 
			}		
			if (text == 'dmnh2') {
				const items = container;
				const rows = items.map((itemObj, index) => {
						let { ma_nh, ten_nh } = itemObj;
						if (ma_nh == "VT2") {	
							return `<option value="${ma_nh}">${ten_nh}</option>`;
						}
				});
				const tag = document.getElementById(`select-${text}`);
				tag.innerHTML = `<option value='' selected='true'> Chọn </option>` + rows.join("");		 
			}	
			if (text == 'dmnh3') {	
				const items = container;
				const rows = items.map((itemObj, index) => {
						let { ma_nh, ten_nh } = itemObj;
						if (ma_nh == "VT3") {	
							return `<option value="${ma_nh}">${ten_nh}</option>`;
						}
				});
				const tag = document.getElementById(`select-${text}`);
				tag.innerHTML = `<option value='' selected='true'> Chọn </option>` + rows.join("");		 
			}						
		};

		$(document).ready(function () {	
            editor_ghichu = CKEDITOR.replace('inp_ghichu', {
                customConfig: '/Js/ckeditor/config.js',
                extraAllowedContent: 'span',
				maxLength: 256, 
            });	
			editor_mota = CKEDITOR.replace('inp_mota', {
                customConfig: '/Js/ckeditor/config.js',
                extraAllowedContent: 'span',
				maxLength: 4000, 
            });	
			editor_thongso = CKEDITOR.replace('inp_thongso', {
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
				setTimeout(firstLoadPaged, 100);
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
