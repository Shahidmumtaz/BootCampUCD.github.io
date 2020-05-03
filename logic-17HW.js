// retrieves data from web site via URL request and process via d3.
var queryUrl =
  "https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&starttime=2014-01-01&endtime=2014-01-02&maxlongitude=-69.52148437&minlongitude=-123.83789062&maxlatitude=48.74894534&minlatitude=25.16517337";

d3.json(queryUrl, function (data) {
  createFeatures1(data.features);
});

// * * * GLOBAL VALUES * * *

//change the default marker to a red marker consistent with emergency/earthquake
L.Icon.Default.prototype.options.iconUrl = "e-icon.png";
L.Icon.Default.prototype.options.iconSize = [35, 35];

//temporary changing the marker, however, couldn't get it to work like i wanted.
var myIcon = L.icon({
  iconUrl: "face.png",
  iconSize: [35, 35],
  iconAnchor: [0, 0],
  popupAnchor: [0, 0],
});

//tying to be creative and funny here...couldn't get it to work
var myIcon2 = "face.png";

// Base map layers.
var streetmap = L.tileLayer(
  "https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token={accessToken}",
  {
    attribution:
      'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
    maxZoom: 18,
    id: "mapbox.streets",
    accessToken: API_KEY,
  }
);

var skyView = L.tileLayer(
  "https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token={accessToken}",
  {
    attribution:
      'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
    maxZoom: 18,
    id: "mapbox.satellite",
    accessToken: API_KEY,
  }
);
// Default map displayed on the web page
var myMap = L.map("map", {
  center: [37.09, -95.71],
  zoom: 5,
  layers: skyView, //this map shows first with circles for earthquake location
});
// baseMaps
var baseMaps = {
  "Satellite View": skyView,
  "Street Map": streetmap,
};

//* * * trying to get an action when "clicking" the marker * * *
// function clickx(data) {
//   alert("Marker clicked!");
//   marker.setIcon(myIcon);
// }

// * * * END OF GLOBAL VALUES * * *

function createFeatures1(earthquakeData) {
  function eachLayersFeature1(feature, layer) {
    // add the details of the earthquake when clicking the marker.
    layer.bindPopup(
      "<h3>" +
        feature.properties.place +
        "</h3><hr><p>" +
        new Date(feature.properties.time) +
        "</h3><hr><p>" +
        " Magnitude: " +
        feature.properties.mag +
        "</h3><hr><p>" +
        " Lattitude: " +
        feature.geometry.coordinates[0] +
        " Lattitude: " +
        feature.geometry.coordinates[1]
    );
  }
  function eachLayersFeature2(feature2, layer2) {
    // * * * left this description out since we couldn't get the circles that made sense when displayed * * *

    // layer2.bindPopup(
    //   "<h3>" +
    //     feature2.properties.place +
    //     "</h3><hr><p>" +
    //     new Date(feature2.properties.time) +
    //     "</h3><hr><p>" +
    //     " Magnitude: " +
    //     feature2.properties.mag +
    //     "</h3><hr><p>" +
    //     " Lattitude: " +
    //     feature2.geometry.coordinates[0] +
    //     " Lattitude: " +
    //     feature2.geometry.coordinates[1]
    // );
    var latlngx = [
      feature2.geometry.coordinates[1],
      feature2.geometry.coordinates[0],
    ];
    console.log("latlngx: " + latlngx);

    // Amplified the circle by multiplying the magnitude of the earthquake by a factor for visual purposes only.
    var radiusx = feature2.properties.mag * 10000;
    console.log("mag value: " + feature2.properties.mag);
    var circleStyle = {
      fillOpacity: 50,
      color: "red",
      fillColor: "yellow",
      radius: radiusx,
    };
    console.log("radiusx: " + radiusx);

    //* * * Different ways to draw a circle with different attributes * * *
    // layer2.bindPopup(L.circleMarker(latlngx, { radius: radiusx }).addTo(myMap));
    // L.circleMarker(L.latLng(latlngx), {
    //   radius: radiusx,
    // }).addTo(myMap);
    // layer2.bindPopup(L.marker(latlngx, { icon: myIcon }).addTo(myMap));
    // L.marker(latlngx, { icon: myIcon }).addTo(myMap).on("click", {clickx});
    L.circle(latlngx, circleStyle).addTo(myMap).bindPopup({ myIcon });
    console.log("typeof feature2: " + typeof feature2.properties.mag);
    console.log("circle for loop magnitude: " + feature2.properties.mag);
  }

  // built in "for" loop cycling through the d3.json array of data.
  var earthquakes1 = L.geoJSON(earthquakeData, {
    onEachFeature: eachLayersFeature1,
  });

  var earthquakes2 = L.geoJSON(earthquakeData, {
    onEachFeature: eachLayersFeature2,
  });

  console.log("eq2: " + earthquakes2);
  // Sending our earthquakes layer to the createMap1 function
  createMap1(earthquakes1, earthquakes2);
  // createMap2(earthquakes2);
}
//* * * END OF FUNCTION "createFeature1" * * *

function createMap1(marker1, marker2) {
  // created an overlay for specific data display.
  var overlayMaps = {
    "Earthquake Info": marker1,
    // Magnitude: nullx, // we couldn't isolate the second layer to for circles, so added them to the base terrain map.
  };

  // Adding a menu with toggle for the two (2) different layers.
  L.control.layers(baseMaps, overlayMaps, { collapsed: false }).addTo(myMap);

  //* * * Trying to add a legend * * *
  var legend = L.control
    .layers(baseMaps, overlayMaps, { collapsed: false, position: "topleft" })
    .addTo(myMap);
  legend.onAdd = function (map) {
    var div = L.DomUtil.create("div", "info legend"),
      infox = [1, 2, 3, 4],
      labels = ["a", "b", "c", "d"],
      innerHTML = "<div><b>Legend</b></div>";
    return div;
  };
  legend.addTo(myMap);
  //* * * END OF LEGEND ATTEMPT * * *
}
