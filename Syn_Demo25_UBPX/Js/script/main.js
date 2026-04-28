// initialize the map on the "map" div with a given center and zoom
var map = L.map('map', {
    center: [10.362244019315042, 106.67524538086836],
    zoom: 9
});

//Map layers
var osm = L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
}).addTo(map);

var Esri_WorldImagery = L.tileLayer('https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/{z}/{y}/{x}', {
	attribution: 'Tiles &copy; Esri &mdash; Source: Esri, i-cubed, USDA, USGS, AEX, GeoEye, Getmapping, Aerogrid, IGN, IGP, UPR-EGP, and the GIS User Community'
});

var googleStreets = L.tileLayer('http://{s}.google.com/vt/lyrs=m&x={x}&y={y}&z={z}',{
    maxZoom: 20,
    subdomains:['mt0','mt1','mt2','mt3']
});

var googleHybrid = L.tileLayer('http://{s}.google.com/vt/lyrs=s,h&x={x}&y={y}&z={z}',{
    maxZoom: 20,
    subdomains:['mt0','mt1','mt2','mt3']
});

var googleSat = L.tileLayer('http://{s}.google.com/vt/lyrs=s&x={x}&y={y}&z={z}',{
    maxZoom: 20,
    subdomains:['mt0','mt1','mt2','mt3']
});

var googleTerrain = L.tileLayer('http://{s}.google.com/vt/lyrs=p&x={x}&y={y}&z={z}',{
    maxZoom: 20,
    subdomains:['mt0','mt1','mt2','mt3']
});

var singleMarker = L.marker([50.5, 30.5]).addTo(map);

//Layer Groups and Layers Control
var baseLayers = {
    "OpenStreetMap": osm,
	"Google Streets": googleStreets,
	"Google Hybrid": googleHybrid,
	"Google Sat": googleSat,
	"Google Terrain": googleTerrain,
	"Esri WorldImagery": Esri_WorldImagery
};

var overlays = {
    "Single Marker": singleMarker
};

L.control.layers(baseLayers, overlays).addTo(map);

//Customer icon marker
var LeafIcon = L.Icon.extend({
    options: {
        //shadowUrl: '/Js/leaflet/images/marker-shadow.png',
        iconSize:     [32, 32],
        //shadowSize:   [41, 41],
		iconAnchor:   [32, 32],
        //shadowAnchor: [22, 30],
        popupAnchor:  [-15, -27]
    }
});

L.icon = function (options) {return new L.Icon(options);};

var markerStock = new LeafIcon({iconUrl: '/Js/leaflet/images/stock/warehouse-64.png'});
var markerCarGreen = new LeafIcon({iconUrl: '/Js/leaflet/images/car-color/container-green64.png'})
var markerCarGreenShadow = L.icon({
    iconUrl: '/Js/leaflet/images/car-color/container-green64.png',
    shadowUrl: '/Js/leaflet/images/car-gif/circle-animation.gif',

    iconSize:     [32, 32],
	iconAnchor:   [32, 32], // point of the icon which will correspond to marker's location
    shadowAnchor: [38, 38], // the same for the shadow
    popupAnchor:  [-15, -27], // point from which the popup should open relative to the iconAnchor
    shadowSize:   [41, 42] // size of the shadow
});
var markerCarRedShadow = L.icon({
    iconUrl: '/Js/leaflet/images/car-color/container-red64.png',
    shadowUrl: '/Js/leaflet/images/car-gif/circle-animation.gif',

    iconSize:     [32, 32],
	iconAnchor:   [32, 32], // point of the icon which will correspond to marker's location
    shadowAnchor: [38, 38], // the same for the shadow
    popupAnchor:  [-15, -27], // point from which the popup should open relative to the iconAnchor
    shadowSize:   [41, 42] // size of the shadow
});
var markerCarRed = new LeafIcon({iconUrl: '/Js/leaflet/images/car-color/container-red64.png'});
var markerCarBlueShadow = L.icon({
    iconUrl: '/Js/leaflet/images/car-color/container-blue64.png',
    shadowUrl: '/Js/leaflet/images/car-gif/circle-animation.gif',

    iconSize:     [32, 32],
	iconAnchor:   [32, 32], // point of the icon which will correspond to marker's location
    shadowAnchor: [38, 38], // the same for the shadow
    popupAnchor:  [-15, -27], // point from which the popup should open relative to the iconAnchor
    shadowSize:   [41, 42] // size of the shadow
});
var markerCarBlue = new LeafIcon({iconUrl: '/Js/leaflet/images/car-color/container-blue64.png'});
var markerCarWaterShadow = L.icon({
    iconUrl: '/Js/leaflet/images/car-color/container-water64.png',
    shadowUrl: '/Js/leaflet/images/car-gif/circle-animation.gif',

    iconSize:     [32, 32],
	iconAnchor:   [32, 32], // point of the icon which will correspond to marker's location
    shadowAnchor: [38, 38], // the same for the shadow
    popupAnchor:  [-15, -27], // point from which the popup should open relative to the iconAnchor
    shadowSize:   [41, 42] // size of the shadow
});
var markerCarWater = new LeafIcon({iconUrl: '/Js/leaflet/images/car-color/container-water64.png'});
var markerCarBlackShadow = L.icon({
    iconUrl: '/Js/leaflet/images/car-color/container-black64.png',
    shadowUrl: '/Js/leaflet/images/car-gif/circle-animation.gif',

    iconSize:     [32, 32],
	iconAnchor:   [32, 32], // point of the icon which will correspond to marker's location
    shadowAnchor: [38, 38], // the same for the shadow
    popupAnchor:  [-15, -27], // point from which the popup should open relative to the iconAnchor
    shadowSize:   [41, 42] // size of the shadow
});
var markerCarBlack = new LeafIcon({iconUrl: '/Js/leaflet/images/car-color/container-black64.png'});
var markerCarGreyShadow = L.icon({
    iconUrl: '/Js/leaflet/images/car-color/container-grey64.png',
    shadowUrl: '/Js/leaflet/images/car-gif/circle-animation.gif',

    iconSize:     [32, 32],
	iconAnchor:   [32, 32], // point of the icon which will correspond to marker's location
    shadowAnchor: [38, 38], // the same for the shadow
    popupAnchor:  [-15, -27], // point from which the popup should open relative to the iconAnchor
    shadowSize:   [41, 42] // size of the shadow
});
var markerCarGrey = new LeafIcon({iconUrl: '/Js/leaflet/images/car-color/container-grey64.png'});
var markerCarYellowShadow = L.icon({
    iconUrl: '/Js/leaflet/images/car-color/container-yellow64.png',
    shadowUrl: '/Js/leaflet/images/car-gif/circle-animation.gif',

    iconSize:     [32, 32],
	iconAnchor:   [32, 32], // point of the icon which will correspond to marker's location
    shadowAnchor: [38, 38], // the same for the shadow
    popupAnchor:  [-15, -27], // point from which the popup should open relative to the iconAnchor
    shadowSize:   [41, 42] // size of the shadow
});
var markerCarYellow = new LeafIcon({iconUrl: '/Js/leaflet/images/car-color/container-yellow64.png'});
var markerCarPurpleShadow = L.icon({
    iconUrl: '/Js/leaflet/images/car-color/container-purple64.png',
    shadowUrl: '/Js/leaflet/images/car-gif/circle-animation.gif',

    iconSize:     [32, 32],
	iconAnchor:   [32, 32], // point of the icon which will correspond to marker's location
    shadowAnchor: [38, 38], // the same for the shadow
    popupAnchor:  [-15, -27], // point from which the popup should open relative to the iconAnchor
    shadowSize:   [41, 42] // size of the shadow
});
var markerCarPurple = new LeafIcon({iconUrl: '/Js/leaflet/images/car-color/container-purple64.png'});
var redIcon = new LeafIcon({iconUrl: "/Js/leaflet/images/car-gif/circle-animation.gif"});

var stockMarkers = new L.FeatureGroup();
var carMarkers = new L.FeatureGroup();

var lastMarkerISS;
var markerISS = L.marker([0, 0], {icon: markerCarBlue}).addTo(map);
	// .on("click", (e, j) => {
		// if (lastMarker) {
			// lastMarker.setIcon(markerCarBlue);
		// }
		// e.target.setIcon(redIcon);
		// console.log("target", e.target)
		// lastMarker = e.target;
	// }).addTo(map).bindTooltip('<span class="m-font m-weight">'+data.id+'</span>', {direction: 'top', permanent: false, sticky: true, offset: [10, 0], opacity: 0.75, className: 'leaflet-tooltip-own' }).bindPopup('Where the ISS');

async function getISS() {
	const api_url = 'https://api.wheretheiss.at/v1/satellites/25544';
	const response = await fetch (api_url);
	const data = await response.json();
	//console.log(data);
	markerISS.setLatLng([data.latitude, data.longitude]);
}

/*//IF not use L.LayerGroup
var markerListCar = [];
var markerListStock = []; */

//Load firstChild
$(document).ready(function () {
	
	//getISS();
	//setInterval(getISS, 1000);
	
	map.addLayer(carMarkers);
	
	setTimeout(function () {
		window.dispatchEvent(new Event('resize'));
	}, 1000);
	
	map.on('zoomend', function() {
		if (map.getZoom() < 12){
			/*//IF not use L.LayerGroup
			stockMarkers.addLayer(marker);
			for (var i = 0; i < markerListStock.length -1; i++) {
				var marker = markerListStock[i];
				map.removeLayer(stockMarkers.addLayer(marker));
			} */
			map.removeLayer(stockMarkers);
			console.log("NOT found");
		}
		else {
			/*//IF not use L.LayerGroup
			for (var i = 0; i < markerListStock.length -1; i++) {
				var marker = markerListStock[i];
				map.addLayer(stockMarkers);
			} */
			map.addLayer(stockMarkers);
			console.log("found");
		}
	});
});

var arr1 = [];
$(document).ready(function () {
	var m = new Memvars();	
    var controller = 'DMTTXE';

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
			//console.log(msg);
			var result = msg.d;
			for (var i = 0; i <= result.length - 1; i++) {
				arr1.push(result[i]);	
			}
        },
        error: function (e) {
		// loi o day
            console.log(e);
        }
	});
});


var arr2 = [];			
//Get value data api and convert geojson
$(document).ready(function () {
	$.ajax({
		type: "GET",
		url: "http://198.188.100.100:3300/dmdcxe",
		contentType: "json",
		success: function (result) {
			console.log(result);
			console.log(arr1);
			var car1=0, car5=0, car6=0, car9=0, car0=0;
			
			for (var i = 0; i <= result.length - 1; i++) {
				var maxe = result[i].ma_xe;
				var ngay = result[i].ngay;
				var tdx = result[i].tdx;
				var tdy = result[i].tdy;
				arr2.push(result[i]);	
				//UL list item
				var ulRef = document.getElementById('myUl').getElementsByTagName('ul')[0];
				ulRef.innerHTML = '<li class="button facebook" id="button">' +
					'<span class="tooltip">Tổng xe</span>' +
					'<span><img style="cursor: pointer;" src="/Js/leaflet/images/icons/pie-chart.png"></img></span>' +
				'</li>' +
			
				'<li class="button facebook" id="button">' +
					'<span>0</span>' +
					'<span class="tooltip">Tổng xe</span>' +
					'<span><img style="cursor: pointer;" src="/Js/leaflet/images/car-color/car-crytal24.png"></img></span>' +
				'</li>' +
					
				'<li class="button facebook" id="button">' +
					'<span>'+car6+'</span>' +
					'<span class="tooltip">Xe đang chạy</span>' +
					'<span><img style="cursor: pointer;" src="/Js/leaflet/images/car-color/car-green24.png"></img></span>' +
				'</li>' +
					
				'<li class="button facebook" id="button">' +
					'<span>'+car9+'</span>' +
					'<span class="tooltip">Quá tốc độ</span>' +
					'<span><img style="cursor: pointer;" src="/Js/leaflet/images/car-color/car-red24.png"></img></span>' +
				'</li>' +
					
				'<li class="button facebook" id="button">' +
					'<span>'+car1+'</span>' +
					'<span class="tooltip">Dừng xe không tắt máy</span>' +
					'<span><img style="cursor: pointer;" src="/Js/leaflet/images/car-color/car-blue24.png"></img></span>' +
				'</li>' +
					
				'<li class="button facebook" id="button">' +
					'<span>'+car0+'</span>' +
					'<span class="tooltip">Dừng đỗ</span>' +
					'<span><img style="cursor: pointer;" src="/Js/leaflet/images/car-color/car-black24.png"></img></span>' +
				'</li>' +
					
				'<li class="button facebook" id="button">' +
					'<span>0</span>' +
					'<span class="tooltip">Ngừng kết nối</span>' +
					'<span><img style="cursor: pointer;" src="/Js/leaflet/images/car-color/car-white24.png"></img></span>' +
				'</li>' +
				
				'<li class="button facebook" id="button">' +
					'<span>'+car5+'</span>' +
					'<span class="tooltip">Đang hoạt động</span>' +
					'<span><img style="cursor: pointer;" src="/Js/leaflet/images/car-color/car-purple24.png"></img></span>' +
				'</li>' +
				
				'<li class="button facebook" id="button">' +
					'<span>0</span>' +
					'<span class="tooltip">Nghỉ không hợp lệ</span>' +
					'<span><img style="cursor: pointer;" src="/Js/leaflet/images/car-color/car-yellow24.png"></img></span>' +
				'</li>';
				//console.log(car5);
				for (var j = 0; j <= arr1.length-1; j++) {
					//console.log(maxe);
					//console.log(arr1[j].ma_xe);					
					if (maxe == arr1[j].ma_xe) {
						//console.log(maxe);
						//console.log(arr1[j].ma_xe);
						var tt = arr1[j].tt_xe;
						console.log(tt);
						var total = (tt == 1 ? car1=car1+1 : tt == 5 ? car5=car5+1 : tt == 6 ? car6=car6+1 : tt == 9 ? car9=car9+1 : car0=car0+1);
						//Table list
						var myHtmlContent = "<h3>hello</h3>"
						var table = document.getElementById('myTable');
						var tableRef = document.getElementById('myTable').getElementsByTagName('tbody')[0];
						//console.log(tt);
						var avatar = (tt == 1 ? 'class="car-blue"' : tt == 5 ? 'class="car-purple"' : tt == 6 ? 'class="car-green"' : tt == 9 ? 'class="car-red"' : 'class="car-black"');
						//console.log(avatar);
						var newRow = tableRef.insertRow(tableRef.rows.length);
						
						newRow.innerHTML ='<tr><td onclick="map.setView([' + result[i].tdx + ',' + result[i].tdy + '], 16)" '+avatar+'></td><td>'+arr1[j].ma_xe+'</td><td>'+arr1[j].ten_xe+'</td><td>foo</td><td>foo</td></tr>';
						//onclick="alert(' + "'You are clicking on the cell EXAMPLE'" + ')"					
						//Map Marker
						//var marker = createMarker(result[i].tdx, result[i].tdy, markerCarGreen, redIcon, result[i].ma_xe, result[i].ngay);
						var carColor = (tt == 1 ? markerCarBlue : tt == 5 ? markerCarPurple : tt == 6 ? markerCarGreen : tt == 9 ? markerCarRed : markerCarBlack);
						var carColorShadow = (tt == 1 ? markerCarGreenShadow : tt == 5 ? markerCarRedShadow : tt == 6 ? markerCarPurpleShadow : tt == 9 ? markerCarBlueShadow : markerCarYellowShadow);
						var lastMarker;
						var marker = L.marker([result[i].tdx, result[i].tdy], {icon: carColor}, {alt: result[i].ma_xe})
							// .on("click", (e, j) => {
								// if(lastMarker){
									// lastMarker.setIcon(carColor);
								// }
								// e.target.setIcon(carColorShadow);
								// console.log("target", e.target)
								// lastMarker = e.target;})
							.bindTooltip('<span class="m-font m-weight">'+result[i].ma_xe+'</span>', {direction: 'top', permanent: false, sticky: true, offset: [10, 0], opacity: 0.75, className: 'leaflet-tooltip-own' }).bindPopup(
							'<ul id="double">' +
								'<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Mã xe: </span></div><div class="m-flex"><span>' + maxe + '</span></div></li>' +
								'<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Tên xe: </span></div><div class="m-flex"><span>' + arr1[j].ten_xe + '</span></div></li>' +
								'<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Trạng thái xe: </span></div><div class="m-flex"><span>' + tt + '</span></div></li>' +
								'<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Ngày: </span></div><div class="m-flex"><span>' + ngay + '</span></div></li>' +
								'<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Hoành độ: </span></div><div class="m-flex"><span>' + tdx + '</span></div></li>' +
								'<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Tung độ: </span></div><div class="m-flex"><span>' + tdy + '</span></div></li>' +
								'<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Tốc độ: </span></div><div class="m-flex"><span>' + '0/km' + '</span></div></div></li>' +
								'<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Tổng KM: </span></div><div class="m-flex"><span>' + '0 KM' + '</span></div></li>' +
								'<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Thời gian dừng : </span></div><div class="m-flex"><span>' + '0H' + '</span></div></li>' +						
								'<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Thời gian kết nối : </span></div><div class="m-flex"><span>' + '0H' + '</span></div></li>' +
								'<li class="m-font" style="width: 100%;"><div class="m-flex m-padding-10 m-weight"><span>Địa chỉ: </span></div><div class="m-flex"><span>' + 'Thành phố Hồ Chí Minh, Việt Nam' + '</span></div></li>' +
							'</ul>'
						);
						carMarkers.addLayer(marker);
						//IF not use L.layerGroup
						//markerListCar.push(marker);
					}
				}
			}
		}
	});
})

$(document).ready(function () {
	var m = new Memvars();	
	var totalGeometry = {};
    var totalProperties = {};
    var objects = {};
    var totalObjects = [];
    var controller = 'KHO';

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
			//console.log(msg);
			var result = msg.d;
			for (var i = 0; i <= result.length - 1; i++) {
				var marker = L.marker([result[i].tdx, result[i].tdy], {icon: markerStock}, {alt: result[i].ma_kho}).bindTooltip('<span class="m-font m-weight">'+result[i].ma_kho+'</span>', {direction: 'top', permanent: false, sticky: true, offset: [10, 0], opacity: 0.75, className: 'leaflet-tooltip-own' }).bindPopup(
					'<ul id="double">' +
						'<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Mã kho: </span></div><div class="m-flex"><span>' + result[i].ma_kho + '</span></div></li>' +
						'<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Tên kho 2: </span></div><div class="m-flex"><span>' + result[i].ten_kho2 + '</span></div></li>' +						
						'<li class="m-font" style="width: 100%;"><div class="m-flex m-padding-10 m-weight"><span>Tên kho: </span></div><div class="m-flex"><span>' + result[i].ten_kho + '</span></div></li>' +
						'<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Hoành độ: </span></div><div class="m-flex"><span>' + result[i].tdx + '</span></div></li>' +
						'<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Tung độ: </span></div><div class="m-flex"><span>' + result[i].tdy + '</span></div></li>' +
						'<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Mã loại: </span></div><div class="m-flex"><span>' + result[i].ma_loai + '</span></div></div></li>' +
						'<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Mã quốc gia: </span></div><div class="m-flex"><span>' + result[i].ma_qg + '</span></div></li>' +
						'<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Trạng thái: </span></div><div class="m-flex"><span>' + result[i].status + '</span></div></li>' +						
						'<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Số điện thoại: </span></div><div class="m-flex"><span>' + result[i].dien_thoai + '</span></div></li>' +
						'<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Email: </span></div><div class="m-flex"><span>' + result[i].email + '</span></div></li>' +						
						'<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Fax: </span></div><div class="m-flex"><span>' + result[i].fax + '</span></div></li>' +
						'<li class="m-font" style="width: 100%;"><div class="m-flex m-padding-10 m-weight"><span>Địa chỉ: </span></div><div class="m-flex"><span>' + result[i].dia_chi + '</span></div></li>' +
					'</ul>'
				);
				stockMarkers.addLayer(marker);
				//IF not use L.LayerGroup
				//markerListStock.push(marker);
			}
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

// Example 1
$('.pane-hScroll').scroll(function() {
	$('.pane-vScroll').width($('.pane-hScroll').width() + $('.pane-hScroll').scrollLeft());
});

//Close panel right
function closeRightPanel() {
	var elm = document.querySelector('.wrapper .right-panel');
	if (elm)
	{
		elm.style.right = '-39%';
	}
}

function showRightPanel() {
	var elm = document.querySelector('.wrapper .right-panel');
	if (elm)
	{
		elm.style.right = '0';
	}
}

//Close panel left
function closeLeftPanel() {
	var elm = document.querySelector('.wrapper .left-panel');
	if (elm)
	{
		elm.style.left = '-22.5%';
	}
}

function showLeftPanel() {
	var elm = document.querySelector('.wrapper .left-panel');
	if (elm)
	{
		elm.style.left = '0';
	}
}
	
$('#showmenu').click(function () {
	var hidden = $('.sidebarmenu').data('hidden');
	$('#showmenu').text(hidden ? 'Hide Menu' : 'Show Menu');
	if (hidden) {
		$('.sidebarmenu').animate({
			right: '0px'
		}, 500);

		$('.tablemenu').animate({
			paddingRight: '400px',
			width: '100%'
		}, 500);
		
		setTimeout(function () {
			window.dispatchEvent(new Event('resize'));
		}, 1000);
	} else {
		$('.sidebarmenu').animate({
			right: '-400px'
		}, 500);

		$('.tablemenu').css('float', 'none');
		$('.tablemenu').animate({
			paddingRight: '0px',
			width: '100%'
		}, 500);
		
		setTimeout(function () {
			window.dispatchEvent(new Event('resize'));
		}, 1000);
	}
	$('.sidebarmenu,.image').data("hidden", !hidden);
});

// var selectedMarker = false;
// var createMarker = function(lat, lng, icon, shadow, id, ngay) {
	// var marker = L.marker([lat, lng], {icon: icon}, {alt: id})
		// .bindTooltip('<span class="m-font m-weight">'+id+'</span>', {direction: 'top', permanent: false, sticky: true, offset: [10, 0], opacity: 0.75, className: 'leaflet-tooltip-own' }).bindPopup(
		// '<ul id="double">' +
			// '<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Mã xe: </span></div><div class="m-flex"><span>' + id + '</span></div></li>' +
			// '<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Ngày: </span></div><div class="m-flex"><span>' + ngay + '</span></div></li>' +
			// '<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Hoành độ: </span></div><div class="m-flex"><span>' + lat + '</span></div></li>' +
			// '<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Tung độ: </span></div><div class="m-flex"><span>' + lng + '</span></div></li>' +
			// '<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Tốc độ: </span></div><div class="m-flex"><span>' + '0/km' + '</span></div></div></li>' +
			// '<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Tổng KM: </span></div><div class="m-flex"><span>' + '0 KM' + '</span></div></li>' +
			// '<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Thời gian dừng : </span></div><div class="m-flex"><span>' + '0H' + '</span></div></li>' +						
			// '<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Thời gian kết nối : </span></div><div class="m-flex"><span>' + '0H' + '</span></div></li>' +
			// '<li class="m-font" style="width: 100%;"><div class="m-flex m-padding-10 m-weight"><span>Địa chỉ: </span></div><div class="m-flex"><span>' + 'Thành phố Hồ Chí Minh, Việt Nam' + '</span></div></li>' +
		// '</ul>'
	// );
	// marker.on('click', function(e) {
		// if(selectedMarker) {
			// if(selectedMarker !== e.target) {
				// selectedMarker.setIcon(icon);
				// e.target.setIcon(shadow);
				// selectedMarker = e.target;
			// }
			// else {
				// selectedMarker.setIcon(icon);
				// selectedMarker = false;
			// }
		// }
		// else {
			// selectedMarker = e.target;
			// e.target.setIcon(shadow);
		// }
	// });
// };

// var createMarker = function(lat, lng, icon, id, ten2, ten1, loai, qg, status, phone, email, fax, diachi) {
	// var marker = L.marker([lat, lng], {icon: icon, draggable:'true'}, {alt: id}).bindTooltip('<span class="m-font m-weight">'+id+'</span>', {direction: 'top', permanent: false, sticky: true, offset: [10, 0], opacity: 0.75, className: 'leaflet-tooltip-own' }).bindPopup(
		// '<ul id="double">' +
			// '<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Mã kho: </span></div><div class="m-flex"><span>' + id + '</span></div></li>' +
			// '<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Tên kho 2: </span></div><div class="m-flex"><span>' + ten2 + '</span></div></li>' +						
			// '<li class="m-font" style="width: 100%;"><div class="m-flex m-padding-10 m-weight"><span>Tên kho: </span></div><div class="m-flex"><span>' + ten1 + '</span></div></li>' +
			// '<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Hoành độ: </span></div><div class="m-flex"><span>' + lat + '</span></div></li>' +
			// '<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Tung độ: </span></div><div class="m-flex"><span>' + lng + '</span></div></li>' +
			// '<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Mã loại: </span></div><div class="m-flex"><span>' + loai + '</span></div></div></li>' +
			// '<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Mã quốc gia: </span></div><div class="m-flex"><span>' + qg + '</span></div></li>' +
			// '<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Trạng thái: </span></div><div class="m-flex"><span>' + status + '</span></div></li>' +						
			// '<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Số điện thoại: </span></div><div class="m-flex"><span>' + phone + '</span></div></li>' +
			// '<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Email: </span></div><div class="m-flex"><span>' + email + '</span></div></li>' +						
			// '<li class="m-font"><div class="m-flex m-padding-10 m-weight"><span>Fax: </span></div><div class="m-flex"><span>' + fax + '</span></div></li>' +
			// '<li class="m-font" style="width: 100%;"><div class="m-flex m-padding-10 m-weight"><span>Địa chỉ: </span></div><div class="m-flex"><span>' + diachi + '</span></div></li>' +
		// '</ul>'
	// );
		
	// marker.on('click', function(e) {
		// if(selectedMarker) {
			// if(selectedMarker !== e.target) {
				// selectedMarker.setIcon(greenIcon);
				// e.target.setIcon(greenIconWithShadow);
				// selectedMarker = e.target;
			// }
			// else {
				// selectedMarker.setIcon(greenIcon);
				// selectedMarker = false;
			// }
		// }
		// else {
			// selectedMarker = e.target;
			// e.target.setIcon(greenIconWithShadow);
		// }
	// });
// };



