import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:water_tracker/common/constant.dart';
import '../common/light.dart' as theme_color;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double indicatorSize = MediaQuery.of(context).size.width / 1.2;
    int indicatorValue = 43;
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Icon(
            Icons.show_chart_sharp,
            color: Colors.black54,
            size: 30,
          ),
        ),
        centerTitle: true,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        title: const Text(
          'WaterTrack',
          style: TextStyle(
              color: Color(0xFF3A4750),
              fontSize: 24,
              fontWeight: FontWeight.w900,
              letterSpacing: 1.5,
              fontFamily: fontTitle),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Icon(
                Icons.settings_outlined,
                color: Colors.black54,
                size: 26,
              ))
        ],
        backgroundColor: theme_color.appBar,
        elevation: 0,
      ),
      backgroundColor: theme_color.background,
      body: Center(
          child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(200)),
            color: Colors.transparent,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 5,
                  spreadRadius: 1)
            ]),
        width: indicatorSize,
        height: indicatorSize,
        child: LiquidCircularProgressIndicator(
          borderColor: theme_color.indicatorWaterColor,
          borderWidth: 1,
          value: indicatorValue / 100,
          valueColor: AlwaysStoppedAnimation(theme_color.indicatorWaterColor),
          center: Text(
            indicatorValue.toString() + '%',
            style: TextStyle(
                color: theme_color.background,
                fontSize: 45,
                fontFamily: fontGotham,
                fontWeight: FontWeight.w900),
          ),
          backgroundColor: theme_color.indicatorBackgroundColor,
        ),
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          isExtended: true,
          backgroundColor: theme_color.secondaryColor,
          child: Icon(
            Icons.add,
            color: theme_color.background,
            size: 28,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
