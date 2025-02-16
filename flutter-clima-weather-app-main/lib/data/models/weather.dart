class Weather {
  final String city;
  final int condition;
  final double temperature;
  final double wind;
  final int humidity;

  Weather({
    required this.city,
    required this.condition,
    required this.temperature,
    required this.wind,
    required this.humidity,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      city: json['name'] as String,
      condition: (json['weather'][0]['id'] as num).toInt(),
      temperature: (json['main']['temp'] as num).toDouble(),
      wind: (json['wind']['speed'] as num).toDouble(),
      humidity: (json['main']['humidity'] as num).toInt(),
    );
  }
}
