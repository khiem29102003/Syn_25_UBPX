

var vectorXeLayer = new ol.layer.Vector({
    source: new ol.source.Vector({
        features: {}
    }),
    style: function (feature, resolution) {
        var text = (feature.get('tai_xe') == null ? feature.get('loai_xe') : feature.get('bien_so'))
        if (feature.get('loai_xe') == 1) {
            var style = new ol.style.Style({
                image: new ol.style.Icon({
                    anchor: [0.5, 1],
                    src: '/Assert/img/container.png',
                    scale: 1
                }),
                text: new ol.style.Text({
                    text: '',
                    fill: new ol.style.Fill({
                        color: 'red'
                    })
                })
            });
            style.getText().setText(text);
            return style;
        }
        else if (feature.get('loai_xe') == 2) {          
            var style = new ol.style.Style({
                image: new ol.style.Icon({
                    anchor: [0.5, 1],
                    src: '/Assert/img/oto.png',
                    scale: 1
                }),
                text: new ol.style.Text({
                    text: '',
                    fill: new ol.style.Fill({
                        color: 'red'
                    })
                })
            });
            style.getText().setText(text);
            return style;
        }
        else {
            var style = new ol.style.Style({
                image: new ol.style.Icon({
                    anchor: [0.5, 1],
                    src: '/Assert/img/motorcycle.png',
                    scale: 1
                }),
                text: new ol.style.Text({
                    text: '',
                    fill: new ol.style.Fill({
                        color: 'red'
                    })
                })
            });
            style.getText().setText(text);
            return style;
        }
        
    },
    name: "Xe",
});


var map = new ol.Map({
    target: 'map',
    layers: [
        new ol.layer.Tile({
            source: new ol.source.OSM({
                "url": "https://mt1.google.com/vt/lyrs=m&x={x}&y={y}&z={z}"
            })
        }),
        vectorXeLayer
    ],
    view: new ol.View({
        center: [11872465.471, 1211217.214], // Coordinates of New York
        zoom: 15 //Initial Zoom Level
    })
});


$(document).ready(function () {
    $.ajax({
        url: "/api/xe", success: function (result) {

            var totalGeometry = {};
            var totalProperties = {};
            var objects = {};
            var totalObjects = [];

            for (var i = 0; i <= result.length - 1; i++) {

                totalGeometry = {
                    type: "Point",
                    coordinates: [result[i].lat, result[i].lng,]
                };

                totalProperties = {
                    id: result[i].id,
                    bien_so: result[i].bien_so,
                    loai_xe: result[i].loai_xe,
                    tai_xe: result[i].tai_xe
                };

                objects = {
                    type: "Feature",
                    id: `${result[i].id}`,
                    geometry: totalGeometry,
                    properties: totalProperties
                };

                totalObjects.push(objects);
            }

            var obj = {
                type: "FeatureCollection",
                features: totalObjects
            };

            console.log(obj);

            var xeFeatures = new ol.format.GeoJSON().readFeatures(obj);
            vectorXeLayer.getSource().addFeatures(xeFeatures);


            //function CustomType() {
            //    this.name = this.name || "someValue";
            //    this.greeting = "Hi";
            //}

            //CustomType.prototype.sayHi = function () {
            //    alert(this.greeting + ", " + this.name);
            //};

            //obj.__proto__ = CustomType.prototype;
            //obj.constructor.call(obj);
            //obj.constructor.call(obj);
            //console.log(obj);

            ////var myJsonString = JSON.stringify(objectConvert);
        }
    });

    setInterval(function () {
        $.ajax({
            url: "/api/xe", success: function (result) {

                var totalGeometry = {};
                var totalProperties = {};
                var objects = {};
                var totalObjects = [];

                for (var i = 0; i <= result.length - 1; i++) {

                    totalGeometry = {
                        type: "Point",
                        coordinates: [result[i].lat, result[i].lng,]
                    };

                    totalProperties = {
                        id: '"' + result[i].id + '"',
                        bien_so: result[i].bien_so,
                        loai_xe: result[i].loai_xe,
                        tai_xe: result[i].tai_xe
                    };

                    objects = {
                        type: "Feature",
                        id: result[i].id,
                        geometry: totalGeometry,
                        properties: totalProperties
                    };

                    totalObjects.push(objects);
                }

                var obj = {
                    type: "FeatureCollection",
                    features: totalObjects
                };

                var listFeatures = obj.features;
                var sourceXeLayer = vectorXeLayer.getSource();
                for (var index in listFeatures) {
                    var itemFeature = listFeatures[index];
                    var featureToUpdate = sourceXeLayer.getFeatureById(itemFeature.id);
                    if (featureToUpdate != null) {
                        featureToUpdate.getGeometry().setCoordinates(itemFeature.geometry.coordinates);
                    }
                    else {
                        sourceXeLayer.addFeature(new ol.format.GeoJSON().readFeature(itemFeature));
                    }
                }
            }
        });
    }, 5000);
});

//$(document).ready(function () {
//    $.ajax({
//        url: "/Assert/xe.json", success: function (result) {
//            var xeFeatures = new ol.format.GeoJSON().readFeatures(result);
//            vectorXeLayer.getSource().addFeatures(xeFeatures);
//            //console.log(xeFeatures);
//            //console.log(vectorXeLayer);
//        }
//    });

//    setInterval(function () {
//        $.ajax({
//            url: "/Assert/xe.json", success: function (result) {
//                var listFeatures = result.features;
//                var sourceXeLayer = vectorXeLayer.getSource();
//                for (var index in listFeatures) {
//                    var itemFeature = listFeatures[index];
//                    var featureToUpdate = sourceXeLayer.getFeatureById(itemFeature.id);
//                    if (featureToUpdate != null) {
//                        featureToUpdate.getGeometry().setCoordinates(itemFeature.geometry.coordinates);
//                    }
//                    else {
//                        sourceXeLayer.addFeature(new ol.format.GeoJSON().readFeature(itemFeature));
//                    }
//                }
//            }
//        });
//    }, 5000);
//});



var selectElement = document.getElementById("carList");

$(document).ready(function () {
    $.ajax({
        url: "/api/xe", success: function (result) {
            for (var i = 0; i <= result.length - 1; i++) {
                selectElement.add(new Option(result[i].bien_so, result[i].id));
            }
            $('select').on('change', function (e) {
                var optionSelectedText = $("option:selected", this).text();
                console.log(optionSelectedText);
                var optionSelectedValue = $("option:selected", this).val();
                console.log(optionSelectedValue);
                //var valueSelected = this.value;
                for (var i = 0; i <= result.length - 1; i++) {
                    if (optionSelectedText == result[i].bien_so) {
                        map.getView().animate({ zoom: 19, center: [result[i].lat, result[i].lng] });
                    }
                }
            });
        }
    });
});


var wathPositionId;
var coor3857 = [];

function stopLocation() {
    navigator.geolocation.clearWatch(wathPositionId);
}

function getLocation() {
    if (navigator.geolocation) {
        wathPositionId = navigator.geolocation.watchPosition(showPosition);
        console.log(wathPositionId);
    } else {
        alert("Trình duyệt không hỗ trợ định vị");
    }
}

function showPosition(position) {
    var coor = [position.coords.longitude, position.coords.latitude];
    coor3857 = ol.proj.transform(coor, 'EPSG:4326', 'EPSG:3857');
    //map.getView().animate({ zoom: 19, center: coor3857 });
}

//Thuc hien Tracking
var locationTrackingInterval;
$("#btnLocation").click(function () {

    //showPosition(getLocation());

});

$("#btnTracking").click(function () {
    if ($(this).text().startsWith("Start")) {
        getLocation();
        var trackingCarId = $("#CarList").val();
        locationTrackingInterval = setInterval(function () {
            if (coor3857.length > 0) {
                $.ajax({
                    url: 'http://localhost:8098/api/xe/' + trackingCarId,
                    type: 'POST',
                    data: "Id=" + trackingCarId + "&LocationLat=" + coor3857[0] + "&LocationLong=" + coor3857[1]
                });
            }
        }, 5000);
        $(this).text("Stop tracking");
    }
    else {
        clearInterval(locationTrackingInterval);
        stopLocation();
        $(this).text("Start tracking");
    }

    getLocation();
    var trackingCarId = $("#CarList").val();

    //    if (coor3857.length > 0) {
    //        $.ajax({
    //            url: 'http://localhost:8098/api/xe/'+trackingCarId,
    //            type: 'POST',
    //            data: "Id=" + trackingCarId + "&LocationLat=" + coor3857[0] + "&LocationLong=" + coor3857[1]
    //        });
    //    }
    //stopLocation();
});









