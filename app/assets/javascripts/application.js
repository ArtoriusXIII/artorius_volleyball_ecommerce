// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

function initMap() {
				var mapDiv = document.getElementById('map');
				var map = new google.maps.Map(mapDiv, {
				  center: {lat: 53.3482454384848, lng: -6.2967860673700216},
				  zoom: 18
				});
					var marker = new google.maps.Marker({
  						position: {lat: 53.3482454384848, lng: -6.2967860673700216},
  						map: map,
  		
					});
		
			      }