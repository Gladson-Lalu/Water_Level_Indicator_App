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
    double indicatorSize = MediaQuery.of(context).size.width / 1.34;
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
              color: Color(0xFF003459),
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
          child: SizedBox(
        width: indicatorSize,
        height: indicatorSize,
        child: LiquidCircularProgressIndicator(
          value: indicatorValue / 100,
          valueColor: const AlwaysStoppedAnimation(Color(0xff00a8e8)),
          borderColor: const Color(0xff007ea7),
          borderWidth: 3,
          center: Text(
            indicatorValue.toString() + '%',
            style: const TextStyle(
                color: Colors.white,
                fontSize: 45,
                fontFamily: fontGotham,
                fontWeight: FontWeight.w900),
          ),
          backgroundColor: const Color(0xff003459),
        ),
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          isExtended: true,
          backgroundColor: const Color(0xff3A4750),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
