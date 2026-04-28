<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Main/Main.Master" Inherits="ISWIFT.Sys.Web.APage" %>
 




<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Th&#234;m mới sản phẩm</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link href="http://store.iswift.com.vn/Content/Admin/plugins/fontawesome-free/css/all.min.css" rel="stylesheet" />
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tempusdominus Bootstrap 4 -->
     
    <!-- iCheck -->
    <link rel="stylesheet" href="http://store.iswift.com.vn/Content/Admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- JQVMap -->
    <link rel="stylesheet" href="http://store.iswift.com.vn/Content/Admin/plugins/jqvmap/jqvmap.min.css">
    <!-- Theme style -->
    <!-- <link rel="stylesheet" href="http://store.iswift.com.vn/Content/Admin/dist/css/adminlte.min.css"> -->
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="http://store.iswift.com.vn/Content/Admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="http://store.iswift.com.vn/Content/Admin/plugins/daterangepicker/daterangepicker.css">
    <!-- summernote -->
    <link rel="stylesheet" href="http://store.iswift.com.vn/Content/Admin/plugins/summernote/summernote-bs4.min.css">
    <link rel="stylesheet" href="http://store.iswift.com.vn/Content/Admin/ckeditor/skins/moono/editor.css">
    
    <link href="/Content/PagedList.css" rel="stylesheet" />

    <style>
        .cancelled {
            color:red;
            font-weight: bold;
        }
        @media (max-width: 575px) {
            table thead {
                display: none;
            }

            table tr {
                display: flex;
                flex-direction: column;
                border: 3px solid white;
                padding: 1px;
            }


            table td[data-label] {
                display: flex;
                font-weight: bold;
            }

            table td[data-label]::before {
                content: attr(data-label);
                color: lightgrey;
                font-weight: 100;
                width: 50%;
            }
        }
    </style>
<style>
    
</style>
 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    

           
  <div id="content" style="overflow: auto;padding-left: 20px;"> 
    <div class="content-wrapper" style="min-height: 560px;">
            


        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Sản phẩm</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="/admin/Products">Sản phẩm</a></li>
                            <li class="breadcrumb-item active">Thêm mới sản phẩm</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>
        
        <!-- Main content -->
        <section class="content">
        
            <!-- Default box -->
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Thêm mới sản phẩm</h3>
        
                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                            <i class="fas fa-minus"></i>
                        </button>
                        <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                            <i class="fas fa-times"></i>
                        </button>
                    </div>
                </div>
                <div class="card-body">
                    <div class="bs-stepper-content">
        <form action="/Admin/Products/Add" method="post"><input name="__RequestVerificationToken" type="hidden" value="QyAsDIkHs4UiEtjsH5aabm7-HA3VYUFWShOhAANNqJJcp5q1KrmrF6YmYcD_3usWi6vAX0k3uOiARm4jBZceP5_cMj_HW644BLlwTnKZ73aIJASWkcAgs37tF4ErNr7LJv2VqbnB3pXZSPcHD_iQ8w2">                    <div class="card">
                                <div class="card-header p-2">
                                    <ul class="nav nav-pills">
                                        <li class="nav-item"><a class="nav-link active" href="#activity" data-toggle="tab">Thông tin chung</a></li>
                                        <li class="nav-item"><a class="nav-link" href="#timeline" data-toggle="tab">Hình ảnh</a></li>
                                        <li class="nav-item"><a class="nav-link" href="#settings" data-toggle="tab">SEO</a></li>
                                    </ul>
                                </div><!-- /.card-header -->
                                <div class="card-body">
                                    <div class="tab-content">
                                        <div class="active tab-pane" id="activity">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Tên sản phẩm</label>
                                                <input class="form-control" data-val="true" data-val-length="Không được vượt quá 250 ký tự" data-val-length-max="250" data-val-required="Tên không được để trống" id="Title" name="Title" placeholder="Nhập tên tài khoản" type="text" value="">
                                                <span class="field-validation-valid text-danger" data-valmsg-for="Title" data-valmsg-replace="true"></span>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Alias</label>
                                                <input class="form-control" data-val="true" data-val-length="Không được vượt quá 150 ký tự" data-val-length-max="150" data-val-required="Đường dẫn không được để trống" id="Alias" name="Alias" placeholder="Nhập alias" type="text" value="">
                                                <span class="field-validation-valid text-danger" data-valmsg-for="Alias" data-valmsg-replace="true"></span>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">SKU</label>
                                                <input class="form-control" data-val="true" data-val-length="Không được vượt quá 150 ký tự" data-val-length-max="150" id="ProductCode" name="ProductCode" placeholder="Nhập code sản phẩm" type="text" value="">
                                                <span class="field-validation-valid text-danger" data-valmsg-for="ProductCode" data-valmsg-replace="true"></span>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Danh mục sản phẩm</label>
                                                <select class="form-control dropdown-group" data-val="true" data-val-number="The field Mã loại sản phẩm must be a number." data-val-required="Mã loại sản phẩm không được để trống" id="ProductCategoryId" name="ProductCategoryId"><option value="">Chọn danh mục sản phẩm</option>
        <option value="1">Mini PC Iswift</option>
        <option value="2">Âm Ly Toshiba</option>
        <option value="3">Loa Iswift</option>
        <option value="4">Âm Ly Yamaha</option>
        <option value="5">Âm Ly Boston</option>
        <option value="6">Âm Ly JBL</option>
        <option value="7">Nas Iswift</option>
        </select>
                                                <span class="field-validation-valid text-danger" data-valmsg-for="ProductCategoryId" data-valmsg-replace="true"></span>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Thương hiệu</label>
                                                <select class="form-control dropdown-group" data-val="true" data-val-number="The field Mã thương hiệu must be a number." data-val-required="Mã thương hiệu không được để trống" id="BrandId" name="BrandId"><option value="">Chọn thương hiệu</option>
        <option value="1">Iswift</option>
        <option value="2">Yamaha</option>
        <option value="3">Toshiba</option>
        <option value="4">Boston</option>
        <option value="5">JBL</option>
        </select>
                                                <span class="field-validation-valid text-danger" data-valmsg-for="BrandId" data-valmsg-replace="true"></span>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Danh mục khuyến mãi</label>
                                                <select class="form-control dropdown-group" data-val="true" data-val-number="The field Mã khuyến mãi must be a number." id="PromotionId" name="PromotionId"><option value="">Chọn danh mục khuyễn mãi</option>
        <option value="1">Mini PC Khuyến Mãi</option>
        <option value="2">Loa Karaoke Khuyễn Mãi</option>
        <option value="3">Âm Ly Khuyến Mãi</option>
        </select>
                                                <span class="field-validation-valid text-danger" data-valmsg-for="PromotionId" data-valmsg-replace="true"></span>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Mô tả</label>
                                                <span class="field-validation-valid text-danger" type="text" data-valmsg-for="Description" data-valmsg-replace="true"></span>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Thông tin sản phẩm</label>
                                                <input class="form-control" data-val="true" data-val-length="Không được vượt quá 150 ký tự" data-val-length-max="150" data-val-required="Đường dẫn không được để trống" id="Alias" name="Alias" placeholder="Nhập alias" type="text" value="">
                                                <span class="field-validation-valid text-danger" data-valmsg-for="Alias" data-valmsg-replace="true"></span>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Chi tiết sản phẩm </label>
                                                <input class="form-control" data-val="true" data-val-length="Không được vượt quá 150 ký tự" data-val-length-max="150" data-val-required="Đường dẫn không được để trống" id="Alias" name="Alias" placeholder="Nhập alias" type="text" value="">
                                                <span class="field-validation-valid text-danger" data-valmsg-for="Alias" data-valmsg-replace="true"></span>
                                            </div>
                                            <div class="row">
                                                <div class="col-2">
                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Số lượng</label>
                                                        <input value="1" class="form-control" data-val="true" data-val-number="The field Số lượng must be a number." data-val-required="The Số lượng field is required." id="Quantity" name="Quantity" type="text">
                                                        <span class="field-validation-valid text-danger" data-valmsg-for="Quantity" data-valmsg-replace="true"></span>
                                                    </div>
                                                </div>
                                                <div class="col-3">
                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Giá</label>
                                                        <input type="text" name="demoPrice" value="0" id="demoPrice" class="form-control auto" data-a-dec="," data-a-sep=".">
                                                        <input class="" data-val="true" data-val-number="The field Giá gốc must be a number." data-val-required="Giá gốc không được để trống" id="Price" name="Price" placeholder="Nhập giá" type="hidden" value="0">
                                                        <span class="field-validation-valid text-danger" data-valmsg-for="Price" data-valmsg-replace="true"></span>
                                                    </div>
                                                </div>
                                                <div class="col-3">
                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Giá khuyến mãi</label>
                                                        <input type="text" name="demoPriceSale" value="0" id="demoPriceSale" class="form-control auto" data-a-dec="," data-a-sep=".">
                                                        <input class="form-control" data-val="true" data-val-number="The field Đơn giá must be a number." data-val-required="Đơn giá không được để trống" id="PriceSale" name="PriceSale" placeholder="Nhập giá khuyến mãi" type="hidden" value="">
                                                        <span class="field-validation-valid text-danger" data-valmsg-for="PriceSale" data-valmsg-replace="true"></span>
                                                    </div>
                                                </div>
                                                <div class="col-2">
                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Thứ tự</label>
                                                        <input value="1" class="form-control" data-val="true" data-val-number="The field Thứ tự must be a number." data-val-required="The Thứ tự field is required." id="Position" name="Position" type="text">
                                                        <span class="field-validation-valid text-danger" data-valmsg-for="Position" data-valmsg-replace="true"></span>
                                                    </div>
                                                </div>
                                                <div class="col-2">
                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Bảo hành</label>
                                                        <input value="1" class="form-control" data-val="true" data-val-number="The field Bảo hành must be a number." data-val-required="The Bảo hành field is required." id="Guarantee" name="Guarantee" type="text">
                                                        <span class="field-validation-valid text-danger" data-valmsg-for="Guarantee" data-valmsg-replace="true"></span>
                                                    </div>
                                                </div>
                                            </div>
                                                
        
                                                <div class="form-group">
                                                    <a href="/admin/Products" class="btn btn-danger">Quay lại</a>
                                                    <button type="submit" class="btn btn-primary">Submit</button>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /.tab-pane -->
                                        <div class="tab-pane" id="timeline">
                                            <div class="row">
                                                <div class="col-12 text-right">
                                                    <input type="button" class="btn btn-sm btn-primary" id="iTaiAnh" onclick="BrowseServer();" value="Tải ảnh">
                                                </div>
                                                <div class="col-12">
                                                    <table class="table table-hover">
                                                        <thead>
                                                            <tr>
                                                                <th>STT</th>
                                                                <th>Ảnh</th>
                                                                <th class="text-center">Ảnh đại điện</th>
                                                                <th>Thao tác</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody id="tbHtml">
                                                        </tbody>
                                                    </table>
        
                                                    <input type="hidden" id="tCurrentId" value="0">
        
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /.tab-pane -->
        
                                        <div class="tab-pane" id="settings">
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">SEO Title</label>
                                                <input class="form-control" data-val="true" data-val-length="Không được vượt quá 250 ký tự" data-val-length-max="250" id="SeoTitle" name="SeoTitle" placeholder="Nhập SEO Title" type="text" value="">
                                                <span class="field-validation-valid text-danger" data-valmsg-for="SeoTitle" data-valmsg-replace="true"></span>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">SEO Description</label>
                                                <input class="form-control" data-val="true" data-val-length="Không được vượt quá 550 ký tự" data-val-length-max="550" id="SeoDescription" name="SeoDescription" placeholder="Nhập SEO Description" type="text" value="">
                                                <span class="field-validation-valid text-danger" data-valmsg-for="SeoDescription" data-valmsg-replace="true"></span>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">SEO Keywords</label>
                                                <input class="form-control" data-val="true" data-val-length="Không được vượt quá 250 ký tự" data-val-length-max="250" id="SeoKeywords" name="SeoKeywords" placeholder="Nhập SEO Keywords" type="text" value="">
                                                <span class="field-validation-valid text-danger" data-valmsg-for="SeoKeywords" data-valmsg-replace="true"></span>
                                            </div>
                                        </div>
                                        <!-- /.tab-pane -->
                                    </div>
                                    <!-- /.tab-content -->
                                </div><!-- /.card-body -->
                            </div>
        </form>            </div>
                </div>
                <!-- /.card-body -->
                <div class="card-footer">
                </div>
                <!-- /.card-footer-->
            </div>
            <!-- /.card -->
        
        </section>
        <!-- /.content -->
        
        
                </div>
</div>
    
    
    
   

    
   
   
</asp:Content>
 
 