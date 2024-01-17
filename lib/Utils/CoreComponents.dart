import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';

abstract class CoreComponents extends StatefulWidget {
  CoreComponents({Key key}) : super(key: key);
}

abstract class BaseState<Page extends CoreComponents> extends State<Page> {
//function

  Widget listCard({
    ScreenScaler scaler,
    @required String backgroundImage,
    @required String shopStatus,
    @required String rating,
    @required String name,
    @required String address,
    @required String city,
    @required String km,
    @required int userRateCount,
  }) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(15), boxShadow: [
        BoxShadow(
            blurRadius: 10,
            color: Colors.black.withOpacity(0.10),
            spreadRadius: 10)
      ]),
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width <= 768 ? 30 : 10,
          vertical: 20),
      child: Material(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        child: InkWell(
            // When the user taps the button, show a snackbar.
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      image: DecorationImage(
                          image: ExactAssetImage(backgroundImage),
                          fit: BoxFit.cover)),
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 6, horizontal: 9),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Color(0xFFFFFFFF),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 6,
                                      offset: Offset(0, 3),
                                      color: Colors.black.withOpacity(0.16),
                                      spreadRadius: 0)
                                ]),
                            child: Container(
                              margin: EdgeInsets.only(top: 3),
                              child: Text(
                                shopStatus,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "JosefinSans",
                                    color: shopStatus == "OPEN"
                                        ? Color(0XFF4CD964)
                                        : Color(0XFFFF3B30)),
                              ),
                            )),
                        Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 6, horizontal: 9),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Color(0xFFFFFFFF),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 6,
                                      offset: Offset(0, 3),
                                      color: Colors.black.withOpacity(0.16),
                                      spreadRadius: 0)
                                ]),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color(0XFFFFCC00),
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  rating,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "JosefinSans",
                                      color:
                                          Color(0XFF222455).withOpacity(0.8)),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                color: Colors.white,
                                child: Text(
                                  name,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontFamily: "JosefinSans",
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.width <= 768
                                            ? scaler.getTextSize(12)
                                            : scaler.getTextSize(9),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 3, horizontal: 10),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color(0XFFFF8A49).withOpacity(0.55),
                                        Color(0XFFFF5673).withOpacity(0.55),
                                      ],
                                      stops: [0.0, 1.0],
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(.30),
                                          blurRadius: 5)
                                    ],
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  city,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: "JosefinSans",
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 3, horizontal: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0XFF848DFF).withOpacity(1.0)),
                                child: Text(
                                  km,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: "JosefinSans",
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          userRateCount == 4
                              ? Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 5),
                                    child: new Stack(
                                      children: <Widget>[
                                        new Container(
                                            alignment: Alignment.topRight,
                                            decoration: new BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(2.0),
                                              child: new Image.asset(
                                                'assets/images/user.png',
                                                width: 26,
                                                height: 26,
                                              ),
                                            )),
                                        new Positioned(
                                          right: 15.0,
                                          child: new Container(
                                            decoration: new BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(2.0),
                                              child: new Image.asset(
                                                'assets/images/user1.png',
                                                width: 26,
                                                height: 26,
                                              ),
                                            ),
                                          ),
                                        ),
                                        new Positioned(
                                          right: 30.0,
                                          child: new Container(
                                            decoration: new BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(2.0),
                                              child: new Image.asset(
                                                'assets/images/user2.png',
                                                width: 26,
                                                height: 26,
                                              ),
                                            ),
                                          ),
                                        ),
                                        new Positioned(
                                          right: 45.0,
                                          child: new Container(
                                            decoration: new BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(2.0),
                                              child: new Image.asset(
                                                'assets/images/user1.png',
                                                width: 26,
                                                height: 26,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : Expanded(
                                  child: Container(
                                    child: new Stack(
                                      children: <Widget>[
                                        new Container(
                                            alignment: Alignment.topRight,
                                            decoration: new BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(2.0),
                                              child: new Image.asset(
                                                'assets/images/user2.png',
                                                width: 26,
                                                height: 26,
                                              ),
                                            )),
                                        new Positioned(
                                          right: 15.0,
                                          child: new Container(
                                            decoration: new BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(2.0),
                                              child: new Image.asset(
                                                'assets/images/user1.png',
                                                width: 26,
                                                height: 26,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Text(
                          address,
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "JosefinSans",
                              fontWeight: FontWeight.w400,
                              color: Color(0XFF8A98BA)),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
