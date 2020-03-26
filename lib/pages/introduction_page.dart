import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/Helpers/Helpers.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class IntroductionPage extends StatelessWidget {
  IntroductionPage({Key key}) : super(key: key);

  static const TextStyle upWidgetsTextStyleWhite = TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle downWidgetsTextStyleWhite = TextStyle(
    color: Colors.white,
    fontSize: 40.0,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle downWidgetsTextStyleBlack = TextStyle(
    color: Colors.black87,
    fontSize: 40.0,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle descriptionTextStyleWhite = TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontWeight: FontWeight.normal,
  );

  List<Container> pages(BuildContext context){return [
    Container(
      color: Color(0xef394f).withOpacity(1.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 24.0, horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "کد تخفیف",
                  style: upWidgetsTextStyleWhite,
                ),
                InkWell(splashColor: Color(0xef394f).withOpacity(1.0),onTap: (){
                  Navigator.pushReplacementNamed(context,'/main');

                },
                  child: Text(
                    "خروج",
                    style: upWidgetsTextStyleWhite,
                  ),
                ),
              ],
            ),
          ),
          Image.asset("assets/images/ls-02.jpg"),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Directionality(textDirection: TextDirection.rtl,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("فروشگاه آنلاین", style: downWidgetsTextStyleWhite),
                  Text("دیجیکالا", style: downWidgetsTextStyleBlack),
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    "ارایه پایینترین قیمت ها\n"
                    "بهترین خدمات و\n"
                    "با طرح های تشویقی\n",
                    style: descriptionTextStyleWhite,
                    textAlign: TextAlign.right,

                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
    Container(
      color: Color(0x0FBED1).withOpacity(1.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 24.0, horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "کد تخفیف",
                  style: upWidgetsTextStyleWhite,
                ),
                InkWell(splashColor: Color(0x0FBED1).withOpacity(1.0),onTap: (){
                  Navigator.pushReplacementNamed(context,'/main');

                },
                  child: Text(
                    "خروج",
                    style: upWidgetsTextStyleWhite,
                  ),
                ),
              ],
            ),
          ),
          Image.asset("assets/images/ls-01.jpg"),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Directionality(textDirection: TextDirection.rtl,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("فروشگاه آنلاین", style: downWidgetsTextStyleWhite),
                  Text("دیجیکالا", style: downWidgetsTextStyleBlack),
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    "طیف گسترده ای از  \n"
                        "معتبرترین برندها در  \n"
                        "گروه های مختلف  \n",
                    style: descriptionTextStyleWhite,
                    textAlign: TextAlign.right,

                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
    Container(
      color: Color(0xFF894F).withOpacity(1.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 24.0, horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "کد تخفیف",
                  style: upWidgetsTextStyleWhite,
                ),
                InkWell(splashColor: Color(0xFF894F).withOpacity(1.0),onTap: (){
                  Navigator.pushReplacementNamed(context,'/main');

                },
                  child: Text(
                    "خروج",
                    style: upWidgetsTextStyleWhite,
                  ),
                ),
              ],
            ),
          ),
          Image.asset("assets/images/ls-03.jpg"),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Directionality(textDirection: TextDirection.rtl,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("فروشگاه آنلاین", style: downWidgetsTextStyleWhite),
                  Text("دیجیکالا", style: downWidgetsTextStyleBlack),
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    "حداکثر اطمینان در انتخاب\n"
                        "با محتوای تخصصی\n"
                        "در کنار نقد و بررسی کالاها\n",
                    style: descriptionTextStyleWhite,
                    textAlign: TextAlign.right,

                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  ];}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LiquidSwipe(
          pages: pages(context),
          enableLoop: true,
          fullTransitionValue: 400,
          enableSlideIcon: true,
          waveType: WaveType.liquidReveal,
          positionSlideIcon: 0.5,
        ),
      ),
    );
  }
}
