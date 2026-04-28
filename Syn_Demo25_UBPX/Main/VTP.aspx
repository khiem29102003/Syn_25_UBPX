<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Main/Main.Master" Inherits="ISWIFT.Sys.Web.APage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="server">
    <script src="../Js/jquery-2.2.4.min.js"></script>
    <script src="../Js/jquery-ui.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!--Leaflet-->
    <script src="https://unpkg.com/leaflet@1.4.0/dist/leaflet.js" integrity="sha512-QVftwZFqvtRNi0ZyCtsznlKSWOStnDORoefr1enyq5mVL4tmKB3S/EnC3rRJcxCPavG10IcrVGSmPh6Qw5lwrg==" crossorigin=""></script>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.4.0/dist/leaflet.css" integrity="sha512-puBpdR0798OZvTTbP4A8Ix/l+A4dHDD0DGqYW6RQ+9jxkRFclaxxQb/SJAWZfWAkuyeQUytO7+7N4QKrDh+drA==" crossorigin=""/>
    <!--Group--> 
    <link rel="stylesheet" href="https://unpkg.com/leaflet.markercluster@1.0.3/dist/MarkerCluster.css">
    <link rel="stylesheet" href="https://unpkg.com/leaflet.markercluster@1.0.3/dist/MarkerCluster.Default.css">
    <script src="https://unpkg.com/leaflet.markercluster@1.3.0/dist/leaflet.markercluster.js"></script>
    <script src='https://unpkg.com/leaflet.markercluster@1.3.0/dist/leaflet.markercluster-src.js'></script>
    <!--Search-->
    <link rel="stylesheet" href="https://unpkg.com/leaflet-search@2.3.7/dist/leaflet-search.src.css" />
    <script src="https://unpkg.com/leaflet-search@2.3.7/dist/leaflet-search.src.js"></script>
    <script src="http://labs.easyblog.it/maps/leaflet-search/examples/data/restaurant.geojson.js"></script>
    <!--Routing-->
    <link rel="stylesheet" href="https://unpkg.com/leaflet-routing-machine@3.2.12/dist/leaflet-routing-machine.css" />
    <script src="https://unpkg.com/leaflet-routing-machine@3.2.12/dist/leaflet-routing-machine.js"></script>
    <!--Geo-->
    <link rel="stylesheet" href="https://unpkg.com/leaflet-control-geocoder/dist/Control.Geocoder.css" />
    <script src="https://unpkg.com/leaflet-control-geocoder/dist/Control.Geocoder.js"></script>

    <style>
		#Map {
			width:100%; height: 90vh; margin-top: 50px;
		}
        
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <div id="Map"></div>
    <script type="text/javascript"> 
        $(document).ready(function () {
           
            var m = new Memvars();

            var controller = 'PT';

            var p = window.location.href.toString();
            p = p.substring(0, p.indexOf("Main/")) + 'AppService/EService.asmx/' + "GetData";//GetValue
            //Goi Map
            var mapObj = null;
            var defaultCoord = [14.759165097354073, 108.51621152426443]; // coord mặc định, HCM
            var zoomLevel = 6; // Mức phóng to bản đồ
            var mapConfig = {
                attributionControl: false, // để ko hiện watermark nữa, nếu bị liên hệ đòi thì nhớ open nha
                center: defaultCoord, // vị trí map mặc định hiện tại
                zoom: zoomLevel,
            };

            mapObj = L.map('Map', mapConfig);

            // xài free từ OpenStreetMap
            L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
            }).addTo(mapObj);
            
            $.ajax({
                type: "POST",
                url: p,
                header: '',

                data: JSON.stringify({ controller: controller, oMemvar: m.val() }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                timeout: 30000,
                success: function (data) {
                    //Convert từ dạng json sang Geojson
                    var dataLength = data.d.length
                        var geoJsonData = [];
                        for (var i = 0; i < data.d.length; i++) {
                            geoJsonData.push(
                                {
                                "type": "Feature",
                                "geometry": {
                                "type": "Point",
                                "coordinates": [data.d[i].tdy, data.d[i].tdx]
                                },
                                "properties": {
                                "id": data.d[i].ma_cang,
                                "name": data.d[i].ten_cang,
                                "maqg": data.d[i].ma_qg,
                                "tdx" :data.d[i].tdx,
                                "tdy" :data.d[i].tdy,
                                }
                                }
                            );

                        }
                    //Make icon marker
                    const basicPortIcon = L.icon({
                        iconUrl: '../Images/marker-icon-grey.png',
                        iconSize: [20, 30],
                    });
                    const basicSearchIcon = L.icon({
                        iconUrl: '../Images/marker-icon-red.png',
                        iconSize: [20, 30],
                    });
                    //Create marker
                    const lightData = L.geoJSON(geoJsonData, {
                        onEachFeature: function (feature, layer) {
                            let coord = feature.geometry.coordinates;
                            const popupContent =
                                "<b style='color:red;font-size:18px'>" + feature.properties.name + "</b>" + "<br>" +
                                "<div style='font-size:18px'>" +
                                "<b>Tọa độ :</b>" + feature.properties.tdx + "," + feature.properties.tdy + "<br>" +
                                "<b>Mã cảng :</b>" + feature.properties.id + "<br>" +
                                "<b>Mã quốc gia:</b>" + feature.properties.maqg + "<br>" +
                                "<button class='btn btn-info gpsphat' data-lat='" + coord[1] + "' data-lng='" + coord[0] + "'>Chỉ đường</button>" +
                                "</div>"
                            layer.bindPopup(popupContent);
                        },
                        pointToLayer: function (feature, latlng) {
                            return L.marker(latlng, { icon: basicPortIcon });
                        },
                    });
                    const markers = L.markerClusterGroup().addLayer(lightData);
                    // marker cluster
                    mapObj.addLayer(markers);
                    //Search Map
                    var searchMarker;
                    //Search Map
                    var searchControl= L.control.search({
                        layer: markers, 
                        propertyName: 'name',  
                        zoom: 16, initial: false,
                        icon: basicSearchIcon
                    });
                    //Xu ly su kien search
                    searchControl.on('search:locationfound', function(e) {

                        if(e.layer._popup)
                            e.layer.openPopup();
                        })
                    searchControl.on('search:cancel',()=>{
                        if(markers){
                            mapObj.removeLayer(markers);
                        }
                    });
                    mapObj.addControl(searchControl);
                    //
                    let latLng = [10.882935296930668, 106.65457718412632]
                    // Routing Map
                    var control = L.Routing.control({
                        waypoints: [
                            latLng
                        ],
                        geocoder: L.Control.Geocoder.nominatim(),
                        routeWhileDragging: true,
                        reverseWaypoints: true,
                        showAlternatives: true,
                        zoom:12,
                        altLineOptions: {
                            styles: [
                                {color: 'black', opacity: 0.15, weight: 9},
                                {color: 'white', opacity: 0.8, weight: 6},
                                {color: 'blue', opacity: 0.5, weight: 2}
                            ]
                        }
                    })
                    control.addTo(mapObj);
                    //Xu Ly Button
                    $(document).on("click",".gpsphat",function(){
                        let latLng = [$(this).data('lat'),$(this).data('lng')];
                        control.spliceWaypoints(control.getWaypoints().length - 1, 1, latLng);
                    })
                },
                error: function (e) {
                    // loi o day
                    console.log(e);
                }
            });
        });
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


