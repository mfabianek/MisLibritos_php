const city = "Buenos Aires";

const apiUrl = `https://api.openweathermap.org/data/2.5/weather?q=${city}&units=metric&appid=21e3195e9bfeb6879e788ec605b09ab0`;

fetch(apiUrl)
  .then((response) => response.json())
  .then((data) => {
    const main = data.main;
    const temp = main.temp;
    const feelsLike = main.feels_like;
    const tempMin = main.temp_min;
    const tempMax = main.temp_max;
    const pressure = main.pressure;
    const humidity = main.humidity;

    let cityElement = document.getElementById("city");
    cityElement.textContent += city;

    let tempElement = document.getElementById("temp");
    tempElement.textContent = temp.toFixed(1) + tempElement.textContent;

    let feelsLikeElement = document.getElementById("feelsLike");
    feelsLikeElement.textContent =
      feelsLike.toFixed(0) + feelsLikeElement.textContent;

    let pressureElement = document.getElementById("pressure");
    pressureElement.textContent = pressure + pressureElement.textContent;

    let humidityElement = document.getElementById("humidity");
    humidityElement.textContent = humidity + humidityElement.textContent;

    let tempMinElement = document.getElementById("tempMin");
    tempMinElement.textContent =
      tempMin.toFixed(0) + tempMinElement.textContent;

    let tempMaxElement = document.getElementById("tempMax");
    tempMaxElement.textContent =
      tempMax.toFixed(0) + tempMaxElement.textContent;
  })
  .catch((error) => {
    console.error("Error fetching weather data:", error);
  });

/* import { ajax } from "../tools/ajax.js";

export const getCityWeatherFuture = async city => {
    const optionsRequest = {
        method: "GET",
        url: "https://api.openweathermap.org/data/2.5/forecast",
        params: {
            q: city,
            appid: "21e3195e9bfeb6879e788ec605b09ab0",
            units: "metric" // Grados centígrados
        }
    };
    return await ajax(optionsRequest);
}
 */