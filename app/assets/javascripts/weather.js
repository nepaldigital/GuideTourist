
$(document).ready(function() {  

  getWeather(); //Get the initial weather.
  setInterval(getWeather, 60000); //Update the weather every 10 minutes.
});

function getWeather() {
  $.Weather({
    location: 'Kathmandu, Nepal',
    unit: 'f',
    success: function(weather) {
      html = '<h2>'+weather.temp+'&deg;'+weather.units.temp+'</h2>';
      html += '<ul><li>'+weather.city+', '+weather.region+'</li>';
      html += '<li class="currently">'+weather.currently+'</li>';
      html += '<li>'+weather.alt.temp+'&deg;C</li></ul>';
  
      $("#weather").html(html);
    },
    error: function(error) {
      $("#weather").html('<p>'+error+'</p>');
    }
  });
}

