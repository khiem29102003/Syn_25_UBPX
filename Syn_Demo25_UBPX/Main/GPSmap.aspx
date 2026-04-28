<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Main/Main.Master" Inherits="ISWIFT.Sys.Web.APage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="server">


   
    <script src="../Js/jquery-2.2.4.min.js"></script>
    <script src="../Js/jquery-ui.min.js"></script>

    <script type="text/javascript">
        window.onload = function () {
           
            var m = new Memvars();
     

            var controller = 'C1';

            var p = window.location.href.toString();
            p = p.substring(0, p.indexOf("Main/")) + 'AppService/EService.asmx/' + "GetData";//GetValue
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
                    console.log(msg);
                },
                error: function (e) {
                    // loi o day
                    console.log(e);
                }
            });
        }


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
 




	<meta charset="utf-8" />
	<title>LeafletJS - OpenStreetMap API by NTL</title>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.4.0/dist/leaflet.css" integrity="sha512-puBpdR0798OZvTTbP4A8Ix/l+A4dHDD0DGqYW6RQ+9jxkRFclaxxQb/SJAWZfWAkuyeQUytO7+7N4QKrDh+drA==" crossorigin=""/>
    <script src="https://unpkg.com/leaflet@1.4.0/dist/leaflet.js" integrity="sha512-QVftwZFqvtRNi0ZyCtsznlKSWOStnDORoefr1enyq5mVL4tmKB3S/EnC3rRJcxCPavG10IcrVGSmPh6Qw5lwrg==" crossorigin=""></script>
	
    <style>
		#ntl {
			width:100%;
			height:450px;
		}
		
		.map-popup-content {
			width: 300px;
		}
		
		.map-popup-content .left {
			float:left;
			width: 40%;
		}
		.map-popup-content .left img {
			width:100%;
			height:100px;
			margin: -15px 0 -15px -20px;
			border-radius:12px;
		}
	
		.map-popup-content .right {
			float:left;
			width: 60%;
		}
		
		.clearfix {
			clear:both;
		}
	</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
<body>
	 <div id="ntl"></div>
</body>

<script>
	var mapObj = null;
	var defaultCoord = [10.88271,106.65425]; // vị trí mặc định, ISWIFT location
	var zoomLevel = 13;
	var mapConfig = {
		attributionControl: false, // để ko hiện watermark nữa, nếu bị liên hệ đòi thì nhớ open 
		center: defaultCoord, // vị trí map mặc định hiện tại
		zoom: zoomLevel, // level zoom
	};
	
	window.onload = function() {
		// init map
		mapObj = L.map('ntl', mapConfig);
		
		// add tile để map có thể hoạt động, xài free từ OSM
		L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
			attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
		}).addTo(mapObj);
		
		// tạo marker
		var popupOption = {
		  	className: "map-popup-content",
		};
		var marker = addMarker([10.88271,106.65425], `<div class='left'><img src='https://scontent.fsgn5-13.fna.fbcdn.net/v/t1.15752-9/294049673_731668878123394_1932169027396625321_n.png?_nc_cat=106&ccb=1-7&_nc_sid=ae9488&_nc_ohc=T4_8u2tb_GEAX_2EkFf&_nc_ht=scontent.fsgn5-13.fna&oh=03_AVJaoN4KdYb3-xLs-cfL0w2D_3qGRUkdj_9B98vXTQZhBQ&oe=630D3525' /></div><div class='right'><b>Đây là</b><br>ISWIFT Solutions</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([10.8829125,106.654533], `<div class='left'><img src='https://scontent.fsgn5-11.fna.fbcdn.net/v/t39.30808-6/275794386_3126060084296842_1284179607573277901_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=cdMo1AOWOzEAX8b0Xz4&_nc_ht=scontent.fsgn5-11.fna&oh=00_AT-MikkhmMJAEJ_dVuICYRu6ovNCw-o41au49pvh-u5_Wg&oe=62EE724F' /></div><div class='right'><b>Đây là</b><br>NTL</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([21.289687,107.4500753] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Cảng Mũi Chùa</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([21.289687,107.4500753] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Nhà máy xi măng Thăng Long</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([12.5909924,109.2120427] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Cảng Hòn Khói</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([12.50259891495887, 109.25506279676274] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Trạm phân phối xi măng Ninh Thủy</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([12.493680741891026, 109.3032574157156] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng kho xăng dầu Ngoại quan Vân Phong</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([12.206212033469868, 109.21516356368265] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Nha Trang</div><div class='clearfix'></div>`, popupOption);
	
	  	var marker = addMarker([12.2169079,109.2045424] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Học viện Hải quân</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([11.8952765,109.1441083] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Ba Ngòi</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([11.426031878136996, 108.89292055716379] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng K720 – Tổng công ty Xăng dầu quân đội</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([11.342841096046397, 108.88536054052402] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Cà Ná</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([20.988424398734193, 107.02611977928512] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng xăng dầu Cái Lân (PV OIL)</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.503333677370993, 108.9514838302827] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Phú Quý</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([10.766771890772578, 106.7066907876381] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Sài Gòn</div><div class='clearfix'></div>`, popupOption);
	
		var marker = addMarker([10.757668028856175, 106.7316901487456] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Tân Thuận Đông</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.555130219717741, 107.01876327758563] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Nhà máy đóng, sửa chữa tàu biển Ba Son</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.773672128926222, 106.80287411838594] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Tân Cảng</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([10.773238446152916, 106.73810823569588] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng ELF gas Sài Gòn</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.729186337283252, 106.747534002195] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng dầu thực vật (Navioil)</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.710566089988141, 106.74350246904987] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng đóng tàu và công nghiệp hàng hải Sài Gòn</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([20.865062006278126, 106.68506651713174] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Hải Phòng</div><div class='clearfix'></div>`, popupOption);
	
	    var marker = addMarker([10.72601492014654, 106.74378049629686] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng đóng tàu An Phú</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.76202089498435, 106.73546123862647] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Bến Nghé</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.74265427724874, 106.74072722216064] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Rau Quả</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([10.741745719879022, 106.7409639803175] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Bông Sen</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.76645373546597, 106.7953990572056] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Cát Lái (Tân Cảng)</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.756563398803584, 106.78236802513267] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng xăng dầu Sài Gòn Petro</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([20.865062006278126, 106.68506651713174] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng xăng dầu PVOil</div><div class='clearfix'></div>`, popupOption);

	    var marker = addMarker([10.778947680628882, 106.70218546058992] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng xi măng Sao Mai</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.67371308618476, 106.76633566746084] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng X51</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([20.88856452339328, 106.6182188626931] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Vật Cách</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([10.677456227869774, 106.75670379629635] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng kho xăng dầu VK.102	</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.746752794527648, 106.74044350527737] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng công nghiệp tàu thủy Sài Gòn</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.647964985294623, 106.73954821855011] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng CTY XM CHINFON</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([10.649780380002628, 106.74165245268439] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng xi măng Holcim Hiệp Phước</div><div class='clearfix'></div>`, popupOption);

	    var marker = addMarker([10.640072534892422, 106.75558599629593] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng xi măng Nghi Sơn</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.651792262887932, 106.74107790441501] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng xi măng Fico</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.7185529348121, 106.7435096023097] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng thương mại vận tải xăng dầu Minh Tấn</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([20.840914911781, 106.76865578297793] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng đầu tư và phát triển cảng Đình Vũ</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.74937643724872, 106.74084326768606] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Biển Đông</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.641845560124539, 106.76225753628329] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng CTY DTV Cái Lân</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([10.652353135092119, 106.73664698098587] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng xi măng Thăng Long</div><div class='clearfix'></div>`, popupOption);

        var marker = addMarker([10.756351139286812, 106.68842246746183] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng xi măng Hà Tiên 1</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.638549558642701, 106.7595428962959] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng container Trung tâm Sài Gòn (SPCT)</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.520975710319176, 106.74022236930708] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Fu-I</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([10.613029005212121, 106.76843826902784] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Sài Gòn - Hiệp Phước</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([20.840912583937165, 106.76869086149738] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng liên doanh phát triển Đình Vũ</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.588594784660032, 107.03054399444721] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Baria Serece</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([10.606724942786798, 107.03614311439203] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Nhà máy điện Phú Mỹ</div><div class='clearfix'></div>`, popupOption);

        var marker = addMarker([10.53091353774815, 107.02605989818515] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng PVGas Vũng Tàu</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.38850403232688, 107.09586935497636] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Vietsovpetro</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.621220244743151, 107.06529248913805] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng xi măng Cẩm Phả</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([10.412598327667073, 107.12741298289436] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng thương cảng Vũng Tàu (phân cảng Cát Lở)</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.387609838794672, 107.09582037407318] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng xăng dầu PTSC</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.383627891993246, 107.09339141178619] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng hạ lưu PTSC</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([10.407747556921066, 107.12770669684325] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng dầu K2 (phân cảng dầu Vũng Tàu)</div><div class='clearfix'></div>`, popupOption);

        var marker = addMarker([20.845999976959057, 106.74193592387275] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng kho xăng dầu Đình Vũ (19-9)</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.544080798342728, 107.03112163891545] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Interflour Cái Mép</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.40515334312761, 107.10783596010926] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng xăng dầu Đông Xuyên</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([10.580122246369356, 107.03224226590348] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng đạm và dịch vụ dầu khí tổng hợp Phú Mỹ</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.573783105592915, 107.02988881008024] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng thép Phú Mỹ</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.572341520032916, 107.02548879658639] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng chuyên dùng Holcim Thị Vải</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([10.38572775967657, 107.07985102919412] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Vungtau Shipyard</div><div class='clearfix'></div>`, popupOption);

        var marker = addMarker([10.412864048383186, 107.13133535240834] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Cát Lở Vũng Tàu</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.412726840817419, 107.12737641165855] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng thủy sản Cát Lở</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.419123731240786, 107.14923248309134] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng hải sản Trường Sa</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([10.599451883253158, 107.02513144397723] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng quốc tế Sài Gòn Việt Nam (SITV)</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([20.86797916306201, 106.71643973904041] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Đoạn Xá</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.527559457347655, 107.02280876775069] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng xăng dầu Petec Cái Mép</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([10.391366406679827, 107.10174841120019] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>BC kết cấu kim loại và lắp máy dầu khí (PVC-MS)</div><div class='clearfix'></div>`, popupOption);

        var marker = addMarker([10.402829952234985, 107.10612335240823] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Vina Offshore</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.384450326482721, 107.07978782357277] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng chế tạo dàn khoan dầu khí (PV Shipyard)</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.534175744896022, 107.03442858309216] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng container Cái Mép Thượng TCIT</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([10.398654660887887, 107.10784133706686] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng công ty TNHH STX (VARD)</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.572352066736222, 107.02545661008027] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng tổng hợp Thị Vải (ODA)</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.585285249036005, 107.15512993891574] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng container quốc tế Cái Mép (ODA) (TCOT)</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([10.568512457148705, 107.02223498309245] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Quốc tế SP-PSA</div><div class='clearfix'></div>`, popupOption);

        var marker = addMarker([10.758907555706827, 106.78483752542311] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>BC 10.000DWT Nhà máy đóng, sửa chữa tàu biển SG(Saigon Shipyard)</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([20.867664413424386, 106.7194418832172] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Transvina</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.512523446467167, 107.01916100056147] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng quốc tế Cái Mép (CMIT)</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([10.413746695484912, 107.13927219658527] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Hà Lộc</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.396030299598472, 107.09673884076199] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng kho xăng dầu Cù Lao Tào</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.403733508880382, 107.10829895425594] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Khu công nghiệp Đông Xuyên</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([8.65936146615408, 106.5691849877828] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Bến Đầm (Côn Đảo)</div><div class='clearfix'></div>`, popupOption);

        var marker = addMarker([10.900875246388813, 106.84160934555679] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Đồng Nai - Phân cảng Long Bình Tân</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.66067718392344, 107.02175405610535 ],`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Gò Dầu A</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.651084736230814, 107.01652079658692] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Gò Dầu B<div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([10.662278138926258, 107.01606938309301] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Vedan Phước Thái</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.657558505496459, 107.01936155610527] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng chuyên dụng Long Thành</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([20.86675696397731, 106.72079442554636] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Hải Đăng</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([10.654720576828105, 107.01851294076373] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Gas PVC Phước Thái</div><div class='clearfix'></div>`, popupOption);

        var marker = addMarker([10.71313569650481, 106.80015032542272] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Phú Đông</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.679334867739191, 106.77840731008092 ],`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng xăng dầu Phước Khánh</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.63533838315351, 106.82365886775148] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng chuyên dùng VOPAK<div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([10.654449085342675, 106.81640513072131] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Lafarge Xi măng</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.89287806826641, 106.84719104809392] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng SCT Gas</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.795864055885358, 106.72227010013701] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Sanrimjohap Vina</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([10.882363519598558, 106.64874101847445] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng LPG Hồng Mộc</div><div class='clearfix'></div>`, popupOption);

        var marker = addMarker([10.895562019903306, 106.81384265425943] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng tổng hợp Bình Dương</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.343765994862043, 106.32747112115867 ],`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Mỹ Tho</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([20.865110365247826, 106.68807475366253] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng container Việt Nam (Viconship)<div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([10.493561973734048, 105.57969605929728] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Đồng Tháp</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.320261403199282, 105.75729668939137] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Sa Đéc</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.507641501472998, 105.56147089503567] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng xăng dầu Đồng Tháp</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([10.076971696857791, 105.74988661419738] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Cần Thơ</div><div class='clearfix'></div>`, popupOption);

	    var marker = addMarker([10.028426391759426, 105.77382179578139] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Sài Gòn Petro Cần Thơ</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.087293192799288, 105.73532409658308 ],`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Total Gas Cần Thơ</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([10.113245122042668, 105.70280492541859] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng tổng kho xăng dầu Cần Thơ<div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([10.104648478263064, 105.71132893891243] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng lương thực Sông Hậu (Trà Nóc)</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([20.860538450886413, 106.7246685525342] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng container Chùa Vẽ</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([9.97296285339358, 105.84736079586666] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng xăng dầu Hậu Giang</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([10.005484054867564, 105.81514090621022] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng xăng dầu Petro Mekong</div><div class='clearfix'></div>`, popupOption);

	    var marker = addMarker([ 10.084574229057674, 105.73658583969862 ] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng X55</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([ 10.087317247979005, 105.73211560514606 ],`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Container Cần Thơ</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([ 9.982273523921432, 105.82313729562871 ] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Cái Cui	<div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([ 10.03035671425011, 105.81948675425349 ] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Bình Minh</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([ 10.136671999602928, 105.673068367748 ] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Nhiệt điện Ô Môn</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([ 20.871334659987852, 106.71263849671118 ] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Cửa Cấm</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([ 10.786842491749145, 106.70489799658795 ] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng PV Gas South</div><div class='clearfix'></div>`, popupOption);

	    var marker = addMarker([ 9.986872649658062, 105.83073539473483] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng PVFCco Cái Cui</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([ 10.335857187469523, 105.477179254255496 ],`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Mỹ Thới</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([ 10.260996805153033, 105.94054084188944 ] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Vĩnh Long	</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([ 8.763076187302854, 105.0012301965752 ] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Năm Căn</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([ 10.146810492758553, 104.59965982357122 ] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Hòn Chông</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([ 20.871334659987852, 106.71263849671118 ] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Bình Trị</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([ 10.786842491749145, 106.70489799658795 ] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng An Thới</div><div class='clearfix'></div>`, popupOption);

    	var marker = addMarker([ 20.867394834086724, 106.71275169605492] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Thủy sản II</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([ 20.906931557546105, 106.6250930983517 ],`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Thép Việt Nhật</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([ 20.88011473459604, 106.62573332554672 ] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Nam Ninh	</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([ 20.879359414203517, 106.62775617807137 ] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Duy Linh</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([ 20.942366562661547, 105.9590947091979 ] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>BC Rau quả, thực phẩm, tổng hợp Hùng Vương</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([ 20.87688900586924, 106.64166958576648 ] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Hồng Bàng</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([ 20.82772605836877, 106.78568126787512 ] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Nam Hải Đình Vũ</div><div class='clearfix'></div>`, popupOption);

	    var marker = addMarker([ 20.940780634089275, 106.75917422000501] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Nhà máy nhiệt điện Hải Phòng</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([ 20.862194474240855, 106.67765269783584 ],`<div class='left'></div><div class='right'><b>Đây là</b><br>Cầu cảng Đóng tàu thủy sản VN</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([ 20.87445266822455, 106.66071313959128] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Cầu cảng Sửa chữa tàu - Lữ Đoàn 273	</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([ 10.144547516719639, 104.03640590260459 ] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Cầu cảng Bình An</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([ 20.86446686222144, 106.67582763619032] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Nhà máy X46 Hải Quân</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([ 20.873285300979745, 106.70227331157179 ] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>XN Cơ khí HH Miền Bắc</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([ 20.842748587026367, 106.76653661003358 ] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Cầu cảng PTS</div><div class='clearfix'></div>`, popupOption);
 
        var marker = addMarker([ 20.852952847164982, 106.73754639915154] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Cầu cảng Sửa chữa tàu thuyền 128</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([ 20.859288242148118, 106.72540116693013 ],`<div class='left'></div><div class='right'><b>Đây là</b><br>Công ty TNHH SCTB Vinaline Đông Đô</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([ 20.857829418892887, 106.66892152860471] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Công ty CP Đóng tàu Sông Cấm	</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([ 20.888917633871525, 106.63424573424949 ] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Công ty CP Đóng tàu Damen - Sông Cấm</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([ 20.874640870463566, 106.70666521509916] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Cầu cảng TT Phối hợp tìm kiếm cứu nạn HH KVI</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([ 20.875162733608974, 106.67002553904052 ] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Cầu cảng Cảnh sát biển</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([ 20.872893784000023, 106.70689212369894] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng đài hải</div><div class='clearfix'></div>`, popupOption);

	    var marker = addMarker([ 20.875343176024394, 106.67000408136975] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Cầu cảng K20 (quân sự)</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([ 20.86450118322939, 106.6850114087363 ],`<div class='left'></div><div class='right'><b>Đây là</b><br>Khu neo Vật Cách</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([ 21.024383095087956, 107.36689873416289] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Khu neo Cẩm Phả</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([ 20.856168941220147, 106.7319600390402 ] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Total Gas Hải Phòng</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([ 20.80592402216855, 106.84532638319547] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến phao Ninh Tiếp</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([ 20.80700654900227, 106.90196984103568 ] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến phao Bến Gót</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([ 20.850775943379976, 106.74477873904013] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng xăng dầu Petec Hải Phòng</div><div class='clearfix'></div>`, popupOption);
        var marker = addMarker([ 10.560755161116788, 107.01676307252214] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng POSCO</div><div class='clearfix'></div>`, popupOption);
	    var marker = addMarker([ 10.573996145820598, 107.031826267751 ] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng Posco SS-Vina</div><div class='clearfix'></div>`, popupOption);
		var marker = addMarker([ 10.77464936080864, 106.70608209145165] ,`<div class='left'></div><div class='right'><b>Đây là</b><br>Bến cảng container Quốc tế Sài Gòn-SSA (SSIT)</div><div class='clearfix'></div>`, popupOption);

	
	
	};
	
	function addMarker(coord, popupContent, popupOptionObj, markerObj) {
		if (!popupOptionObj) {
			popupOptionObj = {};
		}
		if (!markerObj) {
			markerObj = {};
		}
		
		var marker = L.marker(coord, markerObj).addTo(mapObj); // @@
		var popup = L.popup(popupOptionObj);
		popup.setContent(popupContent);
		
		// binding
		marker.bindPopup(popup);
		
		return marker;
	}	
</script>

</asp:Content>
