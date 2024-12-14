<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js" lang="en">

<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>ServUrban</title>

        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>One</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">
        <!-- Place favicon.ico in the root directory -->
        <link rel="stylesheet" href="css/vendor.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <!-- Theme initialization -->

<script>
function access(){
  alert('Choose location ');
}
</script>
    </head>

    <body onload="access()">

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
                    <div class="header-block header-block-search hidden-sm-down">
                        <form role="search">
                            <div class="input-container"> <i class="fa fa-search"></i> <input type="search" id="mapsearch" placeholder="Search Location">
                                <div class="underline"></div>
                            </div>
                        </form>
                    </div>

                  <article class="content item-editor-page">
                    <div class="title-block">

                   <div id="map-canvas" style="height:600px;width:1330px;margin-top:50px;margin-left:90px;"> </div>
	               
                  <form action="afterMapping" method="post">
                   <input type="hidden" name ="lat" id="lat"/>
                   <input type="hidden" name ="lng" id="lng"/>
    		 		<center>  <input type="submit" id="sendloc" value="Go" class="btn btn-success" ></center>
    		 		</form>
 						 </div>
			
         <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD8DXyFQH6HR6IkcTVOIr2CxWyUSIYNAqg&libraries=places"></script>

<script type="text/javascript">

    var map = new google.maps.Map(document.getElementById('map-canvas'), {
      zoom: 15,
      center: new google.maps.LatLng(19.997454, 73.789803),

      mapTypeId: google.maps.MapTypeId.HYBRID
    });

    var infowindow = new google.maps.InfoWindow();

    var marker, i,j;



    var fenway = {lat:19.997454, lng: 73.789803};
    	var panorama = new google.maps.StreetViewPanorama(
            document.getElementById('pano'), {
              position: fenway,
              pov: {
                heading: 34,
                pitch: 10
              }
            });
        map.setStreetView(panorama);


//    map = new google.maps.Map(element, options);
	var searchBox = new google.maps.places.SearchBox(document.getElementById('mapsearch'));
       //     map.controls[google.maps.ControlPosition.TOP_LEFT].push(searchBox);

	 var marker = new google.maps.Marker({
		 position:{
			     lat:19.997454,
				 lng:73.789803
		 },
		 map:map,
		 draggable:true});

	google.maps.event.addListener(searchBox, 'places_changed', function(c){
		console.log(searchBox.getPlaces());
		var places = searchBox.getPlaces();
		var bounds = new google.maps.LatLngBounds();
		var i,place;

		for(i=0;place = places[i];i++){
			bounds.extend(place.geometry.location);
			marker.setPosition(place.geometry.location);
		}

		map.fitBounds(bounds);
		map.setZoom(17);
	});

	google.maps.event.addListener(map, 'click', function(c){
    placeMarker(c.latLng);
    
	});
  function placeMarker(location) {
     var marker = new google.maps.Marker({
         position: location,
         map: map
     });
     alert('location set ');
     var x = document.getElementById('sendloc');
     var lat = document.getElementById('lat');
     lat.value = location.lat();
     var lng = document.getElementById('lng');
     lng.value=  location.lng();
      
     x.type = "submit";
 }
 </script>

<!--       <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD8DXyFQH6HR6IkcTVOIr2CxWyUSIYNAqg&callback=myMap&libraries=places"></script> -->
      <script src="jquery.js"></script>

            </div>
        </div>
        <!-- Reference block for JS -->
        <div class="ref" id="ref">
            <div class="color-primary"></div>
            <div class="chart">
                <div class="color-primary"></div>
                <div class="color-secondary"></div>
            </div>
        </div>
        <script src="js/vendor.js"></script>
        <script src="js/app.js"></script>
    </body>

</html>

