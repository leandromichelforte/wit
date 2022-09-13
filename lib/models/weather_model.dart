import 'dart:convert';

class WeatherModel {
  int? cod;
  String? name;
  int? id;
  int? timezone;
  String? base;
  int? visibility;
  int? dt;
  double? coordLat;
  double? coordLon;
  int? weatherId;
  String? weatherMain;
  String? weatherDescription;
  String? weatherIcon;
  int? mainTemp;
  int? mainFeelsLike;
  int? mainTempMin;
  int? mainTempMax;
  int? mainPressure;
  int? mainHumidity;
  double? windSpeed;
  double? windDeg;
  double? windGust;
  int? cloudsAll;
  int? sysType;
  int? sysId;
  String? sysCountry;
  int? sysSunrise;
  int? sysSunset;
  WeatherModel({
    this.cod,
    this.name,
    this.id,
    this.timezone,
    this.base,
    this.visibility,
    this.dt,
    this.coordLat,
    this.coordLon,
    this.weatherId,
    this.weatherMain,
    this.weatherDescription,
    this.weatherIcon,
    this.mainTemp,
    this.mainFeelsLike,
    this.mainTempMin,
    this.mainTempMax,
    this.mainPressure,
    this.mainHumidity,
    this.windSpeed,
    this.windDeg,
    this.windGust,
    this.cloudsAll,
    this.sysType,
    this.sysId,
    this.sysCountry,
    this.sysSunrise,
    this.sysSunset,
  });

  WeatherModel copyWith({
    int? cod,
    String? name,
    int? id,
    int? timezone,
    String? base,
    int? visibility,
    int? dt,
    double? coordLat,
    double? coordLon,
    int? weatherId,
    String? weatherMain,
    String? weatherDescription,
    String? weatherIcon,
    int? mainTemp,
    int? mainFeelsLike,
    int? mainTempMin,
    int? mainTempMax,
    int? mainPressure,
    int? mainHumidity,
    double? windSpeed,
    double? windDeg,
    double? windGust,
    int? cloudsAll,
    int? sysType,
    int? sysId,
    String? sysCountry,
    int? sysSunrise,
    int? sysSunset,
  }) {
    return WeatherModel(
      cod: cod ?? this.cod,
      name: name ?? this.name,
      id: id ?? this.id,
      timezone: timezone ?? this.timezone,
      base: base ?? this.base,
      visibility: visibility ?? this.visibility,
      dt: dt ?? this.dt,
      coordLat: coordLat ?? this.coordLat,
      coordLon: coordLon ?? this.coordLon,
      weatherId: weatherId ?? this.weatherId,
      weatherMain: weatherMain ?? this.weatherMain,
      weatherDescription: weatherDescription ?? this.weatherDescription,
      weatherIcon: weatherIcon ?? this.weatherIcon,
      mainTemp: mainTemp ?? this.mainTemp,
      mainFeelsLike: mainFeelsLike ?? this.mainFeelsLike,
      mainTempMin: mainTempMin ?? this.mainTempMin,
      mainTempMax: mainTempMax ?? this.mainTempMax,
      mainPressure: mainPressure ?? this.mainPressure,
      mainHumidity: mainHumidity ?? this.mainHumidity,
      windSpeed: windSpeed ?? this.windSpeed,
      windDeg: windDeg ?? this.windDeg,
      windGust: windGust ?? this.windGust,
      cloudsAll: cloudsAll ?? this.cloudsAll,
      sysType: sysType ?? this.sysType,
      sysId: sysId ?? this.sysId,
      sysCountry: sysCountry ?? this.sysCountry,
      sysSunrise: sysSunrise ?? this.sysSunrise,
      sysSunset: sysSunset ?? this.sysSunset,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (cod != null) {
      result.addAll({'cod': cod});
    }
    if (name != null) {
      result.addAll({'name': name});
    }
    if (id != null) {
      result.addAll({'id': id});
    }
    if (timezone != null) {
      result.addAll({'timezone': timezone});
    }
    if (base != null) {
      result.addAll({'base': base});
    }
    if (visibility != null) {
      result.addAll({'visibility': visibility});
    }
    if (dt != null) {
      result.addAll({'dt': dt});
    }
    if (coordLat != null) {
      result.addAll({'coordLat': coordLat});
    }
    if (coordLon != null) {
      result.addAll({'coordLon': coordLon});
    }
    if (weatherId != null) {
      result.addAll({'weatherId': weatherId});
    }
    if (weatherMain != null) {
      result.addAll({'weatherMain': weatherMain});
    }
    if (weatherDescription != null) {
      result.addAll({'weatherDescription': weatherDescription});
    }
    if (weatherIcon != null) {
      result.addAll({'weatherIcon': weatherIcon});
    }
    if (mainTemp != null) {
      result.addAll({'mainTemp': mainTemp});
    }
    if (mainFeelsLike != null) {
      result.addAll({'mainFeelsLike': mainFeelsLike});
    }
    if (mainTempMin != null) {
      result.addAll({'mainTempMin': mainTempMin});
    }
    if (mainTempMax != null) {
      result.addAll({'mainTempMax': mainTempMax});
    }
    if (mainPressure != null) {
      result.addAll({'mainPressure': mainPressure});
    }
    if (mainHumidity != null) {
      result.addAll({'mainHumidity': mainHumidity});
    }
    if (windSpeed != null) {
      result.addAll({'windSpeed': windSpeed});
    }
    if (windDeg != null) {
      result.addAll({'windDeg': windDeg});
    }
    if (windGust != null) {
      result.addAll({'windGust': windGust});
    }
    if (cloudsAll != null) {
      result.addAll({'cloudsAll': cloudsAll});
    }
    if (sysType != null) {
      result.addAll({'sysType': sysType});
    }
    if (sysId != null) {
      result.addAll({'sysId': sysId});
    }
    if (sysCountry != null) {
      result.addAll({'sysCountry': sysCountry});
    }
    if (sysSunrise != null) {
      result.addAll({'sysSunrise': sysSunrise});
    }
    if (sysSunset != null) {
      result.addAll({'sysSunset': sysSunset});
    }

    return result;
  }

  factory WeatherModel.fromMap(Map<String, dynamic> map) {
    return WeatherModel(
      cod: map['cod']?.toInt(),
      name: map['name'],
      id: map['id']?.toInt(),
      timezone: map['timezone']?.toInt(),
      base: map['base'],
      visibility: map['visibility']?.toInt(),
      dt: map['dt']?.toInt(),
      coordLat: map['coord']['lat']?.toDouble(),
      coordLon: map['coord']['lon']?.toDouble(),
      weatherId: map['weather'].first['id']?.toInt(),
      weatherMain: map['weather'].first['main'],
      weatherDescription: map['weather'].first['description'],
      weatherIcon: map['weather'].first['icon'],
      mainTemp: map['main']['temp']?.toInt(),
      mainFeelsLike: map['main']['feels_like']?.toInt(),
      mainTempMin: map['main']['temp_min']?.toInt(),
      mainTempMax: map['main']['temp_max']?.toInt(),
      mainPressure: map['main']['pressure']?.toInt(),
      mainHumidity: map['main']['humidity']?.toInt(),
      windSpeed: map['wind']['speed']?.toDouble(),
      windDeg: map['wind']['deg']?.toDouble(),
      windGust: map['wind']['gust']?.toDouble(),
      cloudsAll: map['clouds']['all']?.toInt(),
      sysType: map['sys']['type']?.toInt(),
      sysId: map['sys']['id']?.toInt(),
      sysCountry: map['sys']['country'],
      sysSunrise: map['sys']['sunrise']?.toInt(),
      sysSunset: map['sys']['sunset']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory WeatherModel.fromJson(String source) =>
      WeatherModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'WeatherModel(cod: $cod, name: $name, id: $id, timezone: $timezone, base: $base, visibility: $visibility, dt: $dt, coordLat: $coordLat, coordLon: $coordLon, weatherId: $weatherId, weatherMain: $weatherMain, weatherDescription: $weatherDescription, weatherIcon: $weatherIcon, mainTemp: $mainTemp, mainFeelsLike: $mainFeelsLike, mainTempMin: $mainTempMin, mainTempMax: $mainTempMax, mainPressure: $mainPressure, mainHumidity: $mainHumidity, windSpeed: $windSpeed, windDeg: $windDeg, windGust: $windGust, cloudsAll: $cloudsAll, sysType: $sysType, sysId: $sysId, sysCountry: $sysCountry, sysSunrise: $sysSunrise, sysSunset: $sysSunset)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is WeatherModel &&
        other.cod == cod &&
        other.name == name &&
        other.id == id &&
        other.timezone == timezone &&
        other.base == base &&
        other.visibility == visibility &&
        other.dt == dt &&
        other.coordLat == coordLat &&
        other.coordLon == coordLon &&
        other.weatherId == weatherId &&
        other.weatherMain == weatherMain &&
        other.weatherDescription == weatherDescription &&
        other.weatherIcon == weatherIcon &&
        other.mainTemp == mainTemp &&
        other.mainFeelsLike == mainFeelsLike &&
        other.mainTempMin == mainTempMin &&
        other.mainTempMax == mainTempMax &&
        other.mainPressure == mainPressure &&
        other.mainHumidity == mainHumidity &&
        other.windSpeed == windSpeed &&
        other.windDeg == windDeg &&
        other.windGust == windGust &&
        other.cloudsAll == cloudsAll &&
        other.sysType == sysType &&
        other.sysId == sysId &&
        other.sysCountry == sysCountry &&
        other.sysSunrise == sysSunrise &&
        other.sysSunset == sysSunset;
  }

  @override
  int get hashCode {
    return cod.hashCode ^
        name.hashCode ^
        id.hashCode ^
        timezone.hashCode ^
        base.hashCode ^
        visibility.hashCode ^
        dt.hashCode ^
        coordLat.hashCode ^
        coordLon.hashCode ^
        weatherId.hashCode ^
        weatherMain.hashCode ^
        weatherDescription.hashCode ^
        weatherIcon.hashCode ^
        mainTemp.hashCode ^
        mainFeelsLike.hashCode ^
        mainTempMin.hashCode ^
        mainTempMax.hashCode ^
        mainPressure.hashCode ^
        mainHumidity.hashCode ^
        windSpeed.hashCode ^
        windDeg.hashCode ^
        windGust.hashCode ^
        cloudsAll.hashCode ^
        sysType.hashCode ^
        sysId.hashCode ^
        sysCountry.hashCode ^
        sysSunrise.hashCode ^
        sysSunset.hashCode;
  }
}
