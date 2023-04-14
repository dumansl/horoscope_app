import 'package:flutter/material.dart';
import 'package:horoscope_app/data/strings.dart';
import 'package:horoscope_app/horoscope_item.dart';
import 'package:horoscope_app/models/horoscope.dart';

class HoroscopeList extends StatelessWidget {
  late List<Horoscope> allHoroscope;

  HoroscopeList() {
    allHoroscope = prepareDataSource();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Horoscopes List"),
        ),
        body: Center(
            child: ListView.builder(
          itemBuilder: (context, index) {
            return HoroscopeItem(
              listedHoroscope: allHoroscope[index],
            );
          },
          itemCount: allHoroscope.length,
        )));
  }

  List<Horoscope> prepareDataSource() {
    List<Horoscope> temporary = [];
    for (int i = 0; i < 12; i++) {
      Horoscope addedHoroscope = Horoscope(
        Strings.BURC_ADLARI[i],
        Strings.BURC_TARIHLERI[i],
        Strings.BURC_GENEL_OZELLIKLERI[i],
        Strings.BURC_ADLARI[i].toLowerCase() + "${i + 1}.png",
        Strings.BURC_ADLARI[i].toLowerCase() + "_buyuk" + "${i + 1}.png",
      );
      temporary.add(addedHoroscope);
    }
    return temporary;
  }
}
