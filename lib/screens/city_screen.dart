import 'package:flutter/material.dart';
import 'package:weather_app/utilities/constants.dart';

class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String? cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/city_background.jpg'),
            fit: BoxFit.cover, // rasmdi polni ekran qilish ucun
          ),
        ),
        constraints: BoxConstraints.expand(),
        // bu ha shu containerni o'lchamiga bog'liq narsa
        child: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                    onChanged: (value) {
                      cityName = value;
                    },
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    decoration: kTextFieldInputDecoration),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context, cityName);
                },
                child: Text('Get weather'),
                style: kButtonTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
