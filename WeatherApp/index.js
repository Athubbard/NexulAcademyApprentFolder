<script>
            
                function displayWeather(weather) {
                    var tempElem = document.getElementById('temperature');
                    tempElem.innerText = weather.main.temp;

                    var humidElem = document.getElementById('humidity');
                    humidElem.innerText = weather.main.humidity;

                    var windElem = document.getElementById('speed');
                    windElem.innerText = weather.wind.speed;

                }

                function loadWeather() {
                    var zipcodeInput = document.getElementById('zipcode');
                
                    if (zipcodeInput.value == '') {return;}

                
                    fetch(`https://api.openweathermap.org/data/2.5/weather?zip=${zipcodeInput.value},US&units=imperial&appid=d480fc3689a99c12ed9ffbcba4ed6542`)
                        .then(response => response.json())
                        .then(data => displayWeather(data));
                }

                loadWeather();

                function displayWeatherCity(response, cityCard) {
                  var cardTextElem = cityCard.querySelector('.card-text');
                  var iconURL = `http://openweathermap.org/img/wn/${response.weather[0].icon}@2x.png`
                  cityCard.classList.add(response.weather[0].main);
                  
                  var iconImageElem = cityCard.querySelector('img');
                  iconImageElem.src = iconURL;
                  

                   var tempElem = document.createElement('p');
                   tempElem.appendChild(document.createTextNode(response.main.temp + " ℉"));
                   cardTextElem.appendChild(tempElem);

                }

                function loadWeatherCity(cityName, cityCard) {

                

                
                    fetch(`http://api.openweathermap.org/data/2.5/weather?q=${cityName}&units=imperial&appid=d480fc3689a99c12ed9ffbcba4ed6542`)
                        .then(response => response.json())
                        .then(data => displayWeatherCity(data, cityCard));
                }

                loadWeatherCity('Chicago',document.getElementById('Chicago'));
                loadWeatherCity('Los Angeles',document.getElementById('LosAngeles'));
                loadWeatherCity('New York',document.getElementById('NewYork'));

            </script>