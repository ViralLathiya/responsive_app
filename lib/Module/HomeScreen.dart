import 'package:demoapp/Utils/CoreComponents.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:responsive_grid/responsive_grid.dart';

// ignore: must_be_immutable
class HomeScreen extends CoreComponents {
  HomeScreen();

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends BaseState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenScaler scaler = ScreenScaler()..init(context);
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 16),
              child: Image.asset(
                'assets/images/back_arrow.png',
                width: 24,
                height: 24,
              ),
            ),
          ],
        ),
        title: Text(
          'Trending Restaurant',
          style: TextStyle(
              color: Color(0xFF222455),
              fontFamily: "JosefinSans",
              fontWeight: FontWeight.w500),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 99,
                            color: Colors.black.withOpacity(0.05),
                            spreadRadius: 0)
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              // width: 0.1,
                              color: Colors.red
                              // Color(0xFFE8E8E8).withOpacity(0.5),
                              ),
                          borderRadius: BorderRadius.circular(5)),
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,

                      // filled: true,
                      // fillColor: Color(0xFFFFFFFF),
                      hintText: "Search",
                      hintStyle:
                          TextStyle(color: Color(0xFF6E7FAA).withOpacity(0.8)),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Image.asset(
                          'assets/images/search.png',
                          height: 24,
                          width: 24,
                        ),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Image.asset(
                          'assets/images/setting.png',
                          height: 24,
                          width: 24,
                        ),
                      ),
                    ),
                  )),
            ),
            ResponsiveGridRow(children: [
              ResponsiveGridCol(
                lg: 4,
                md: 4,
                sm: 6,
                xs: 12,
                child: Container(
                  child: listCard(
                      backgroundImage: "assets/images/bg1.png",
                      shopStatus: 'OPEN',
                      rating: "4.5",
                      address: "394 Brooms St, New York, NY 10013, USA",
                      city: "Italian",
                      km: "1.2 km",
                      name: "Happy Bones",
                      userRateCount: 4,
                      scaler: scaler
                      ),
                ),
              ),
              ResponsiveGridCol(
                lg: 4,
                md: 4,
                sm: 6,
                xs: 12,
                child: Container(
                  child: listCard(
                      backgroundImage: "assets/images/bg2.png",
                      shopStatus: 'OPEN',
                      rating: "4.3",
                      address: "7 Spring St, New York, NY 10012, USA",
                      city: "Chinese",
                      km: "2.5 km",
                      name: "Uncle Boons",
                      userRateCount: 2,
                      scaler: scaler),
                ),
              ),
              ResponsiveGridCol(
                lg: 4,
                md: 4,
                sm: 6,
                xs: 12,
                child: Container(
                  child: listCard(
                      backgroundImage: "assets/images/bg3.png",
                      shopStatus: 'CLOSE',
                      rating: "4.2",
                      address: "394 Broome St, New York, NY 10013, USA",
                      city: "Italian",
                      km: "1.2 km",
                      name: "Happy Bones",
                      userRateCount: 4,
                      scaler: scaler),
                ),
              )
            ]),
          ],
        ),
      )),
    );
  }
}
