import 'package:flutter/material.dart';
import 'package:horoscope_app/models/horoscope.dart';
import 'package:palette_generator/palette_generator.dart';

class HoroscopeDetails extends StatefulWidget {
  final Horoscope selectedHoroscope;
  const HoroscopeDetails({required this.selectedHoroscope, Key? key})
      : super(key: key);

  @override
  State<HoroscopeDetails> createState() => _HoroscopeDetailsState();
}

class _HoroscopeDetailsState extends State<HoroscopeDetails> {
  Color appBarColor = Colors.transparent;
  late PaletteGenerator _generator;

  @override
  void initState() {
    super.initState();

    print("init state calıstı");
    WidgetsBinding.instance.addPostFrameCallback((_) => appBarColorFind());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: appBarColor,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.selectedHoroscope.horoscopeName +
                  " Burcu ve Özellikleri"),
              centerTitle: true,
              background: Image.asset(
                "assets/images/" + widget.selectedHoroscope.horoscopeBigImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Text(
                  widget.selectedHoroscope.horoscopeDetails,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void appBarColorFind() async {
    print("Build bitti baskın renk bulundu");
    _generator = await PaletteGenerator.fromImageProvider(AssetImage(
        "assets/images/" + widget.selectedHoroscope.horoscopeBigImage));
    appBarColor = _generator.vibrantColor!.color;
    print("Baskın renk bulundu build metodu tekrar çalıştırıldı");
    setState(() {});
    print(appBarColor);
  }
}
