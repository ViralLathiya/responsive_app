import 'package:demoapp/Module/HomeScreen.dart';
import 'package:flutter/material.dart';
// import 'package:responsive_framework/responsive_wrapper.dart';
// import 'package:responsive_framework/utils/scroll_behavior.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // builder: (context, widget) => ResponsiveWrapper.builder(
      //     BouncingScrollWrapper.builder(context, widget),
      //     maxWidth: 1200,
      //     minWidth: 450,
      //     defaultScale: true,
      //     breakpoints: [
      //       ResponsiveBreakpoint.resize(450, name: MOBILE),
      //       ResponsiveBreakpoint.autoScale(800, name: TABLET),
      //       ResponsiveBreakpoint.autoScale(1000, name: TABLET),
      //       ResponsiveBreakpoint.resize(1200, name: DESKTOP),
      //       ResponsiveBreakpoint.autoScale(2460, name: "4K"),
      //     ],
      //     background: Container(color: Color(0xFFF5F5F5))),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen()
    );
  }
}
