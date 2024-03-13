import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../controllers/weather_controller.dart';
import '../models/city_model/city_model.dart';
import '../models/weather_element/weather_element.dart';
import '../models/weather_response/weather_response.dart';

class DaysView extends StatefulWidget {
  const DaysView({super.key});

  @override
  State<DaysView> createState() => _DaysViewState();
}

class _DaysViewState extends State<DaysView> {
  @override
  void initState() {
    super.initState();
    WeatherController.instance.getFocast();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/weather_background.png'),
              fit: BoxFit.cover)),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text('Days'),
        ),
        body: StreamBuilder<WeatherResponse>(
            stream: WeatherController.instance.weather,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Center(
                  child: Text('error'),
                );
              }
              if (snapshot.hasData) {
                List<WeatherElement> weathers = snapshot.data!.list;
                CityModel city = snapshot.data!.city;

                return ListView.builder(
                  itemCount: weathers.length,
                  itemBuilder: (context, index) {
                    if (index % 8 == 7) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("${city.name} ${city.country}"),
                                Text(DateFormat("EEEE-d-M-y").format(
                                    DateTime.tryParse(
                                        weathers[index].dtText)!)),
                                Text((weathers[index].mainWeather.temp - 273.15)
                                    .toInt()
                                    .toString()),
                              ]),
                        ),
                      );
                    }
                    return Container();
                  },
                );
              }
              return const Center(child: CupertinoActivityIndicator());
            }),
      ),
    );
  }
}
