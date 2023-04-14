import 'package:flutter/material.dart';
import 'package:horoscope_app/horoscope_details.dart';
import 'package:horoscope_app/models/horoscope.dart';

class HoroscopeItem extends StatelessWidget {
  final Horoscope listedHoroscope;
  const HoroscopeItem({required this.listedHoroscope, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.pushNamed(
                context,
                "horoscopeDetails",
                arguments: listedHoroscope,
              );
            },
            leading: Image.asset(
              "assets/images/" + listedHoroscope.horoscopeThumbnailImage,
            ),
            title: Text(
              listedHoroscope.horoscopeName,
              style: myTextStyle.headline5,
            ),
            subtitle: Text(
              listedHoroscope.horoscopeDate,
              style: myTextStyle.subtitle1,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}
