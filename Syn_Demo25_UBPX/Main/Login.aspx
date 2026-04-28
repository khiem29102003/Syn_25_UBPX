<%@ Page Language="vb" AutoEventWireup="false" Inherits="ISWIFT.Sys.Login" %>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
 <title class="label-message" id="TitleLoginLabel">SYN Login</title>
    <link href="/Images/logomain.png" rel="shortcut icon" type="image/ico" />
    <link href="../Css/c0.css" rel="stylesheet" />
    <link href="../Css/c2.css" rel="stylesheet" />
    <link href="../Css/c3.css" rel="stylesheet" />

    <script src="../JsLogin/j0.js"></script>
    <script src="../JsLogin/j1.js"></script>
    <script src="../Js/j2.js"></script>
    <script src="../Js/j3.js"></script>
</head>
<body>
    <form id="LoginForm" runat="server">
    </form>
    <div id="header">
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="/Main/Default.aspx">
                        <div style="margin-top: -4px;">
                             <img src="/Images/syn_slogan1.png" style="margin-top: 0px;width: 190px;" />
                        </div>
                    </a>
                </div>

                <div class="menubar">
                    <div class="collapse navbar-collapse navbar-ex1-collapse">
                    </div>
                </div>
            </div>
        </nav>
    </div>
    <div id="content">
        <div class="row">
            <div class="col-xs-24 col-sm-12  mobile-hide" style="width: 65%">
                <div style="text-align: center; vertical-align: middle; width: 100%; height: 50%;">
                    <img src="/Images/syn_slogan1.png" style="width: 400px;border-radius: 20px;" class="image-center" />
                </div>
            </div>
            <div class="col-xs-24 col-sm-12" style="width: 35%">
                <div style="position: absolute; right: 40px" class="mobile-show">
               
                </div>
                <div class="container" style="background: #fff">
                    <div>
                        <div class="col-xs-2" style="z-index: 5;">
                            <div class="gradientBar mobile-invisible">
                            </div>
                        </div>
                        <div class="box-login">
                            <div class="col-xs-22" style="margin-top: 5%;">
                                <div class="row">
                                    <p class="text-title label-message" id="LoginLabel" style="font-size: 30px; margin-top: 20px;">
                                        Đăng nhập
                                    </p>
                                </div>
                            </div>
                            <div class="col-xs-22 col-sm-22">
                                <div class="row">
                                    <div class="col-xs-22 col-sm-22" style="margin-top: 7px;">
                                        <label class="label-message" id="AccountLabel">
                                            Tên đăng nhập</label>
                                        <div class="input-group">
                                            <span class="input-group-addon LoginUsernameText">&nbsp;</span>
                                            <input type="text" spellcheck="false" autocomplete="off" class="form-control txt-login"
                                                id="txt_user" style="padding: 4px; text-transform: uppercase;" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-22 col-sm-22" style="margin-top: 10px;">
                                        <label class="label-message" id="PasswordLabel">
                                            Mật khẩu</label>
                                        <div class="input-group">
                                            <span class="input-group-addon LoginPasswordText">&nbsp;</span>
                                            <input type="password" spellcheck="false" autocomplete="off" class="form-control txt-login"
                                                id="txt_pass" style="padding-left: 4px;" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-22 col-sm-22" style="align-items: center;">
                                        <button type="button" class="btn btn-primary pull-right btn-login" id="btn_login"
                                            style="margin-top: 15px; padding-right: 15px; padding-left: 15px; min-width: 100px;">
                                            <img id="LoadingGif" src="../Images/ic_loading.gif" style="display: none; width: 16px; height: 16px; position: absolute; margin-left: -50px; margin-top: 2px;" />
                                            <span class="label-message" id="LoginLabel">Đăng nhập</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="LoginFooter">
        <div class="LoginBottomBorder">
        </div>
        <div class="row" style="margin-left: 30px; margin-right: 40px; padding-top: 7px;">
            <div class="col-xs-10">
                <label class="text-muted">
                    &copy; 2024 SYN</label>
            </div>
            <div class="col-xs-14 text-right">
                <span class="LoginLanguageV">
                    <label class="label-button label-message" id="VietnameseLabel">
                        Tiếng Việt</label>
                </span><span class="LoginLanguageE">
                    <label class="label-button label-message" id="EnglishLabel">
                        Tiếng Anh</label>
                </span>
            </div>
        </div>
    </div>
</body>
</html>
