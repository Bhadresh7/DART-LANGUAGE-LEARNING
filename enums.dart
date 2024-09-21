enum WeatherConditions {
  Sunny("Sunny"),
  Cloudy("Cloudy"),
  Rainy("Rainy"),
  Snowy("Snowy"),
  Windy("Windy");

  final String value;

  const WeatherConditions(this.value); // constructor
}

void main() {
  var worldWeatherConditions = {
    "NewYork": WeatherConditions.Sunny.value,
  };

  print(worldWeatherConditions);
}
