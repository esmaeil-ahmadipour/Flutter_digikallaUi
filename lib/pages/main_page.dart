import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  final String title = "DIGIKALA";

  @override
  _MainPageState createState() => _MainPageState();
}

double appbarHeight;

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery
        .of(context)
        .size
        .width;
    var heightScreen = MediaQuery
        .of(context)
        .size
        .height;
    AppBar appbar = new AppBar(
      backgroundColor: Color(0xef394f).withOpacity(1.0),
      title: Text(widget.title),
      centerTitle: false,
      actions: <Widget>[
        Icon(
          Icons.search,
          color: Colors.white,
        ),
        SizedBox(
          width: 16,
        ),
        Icon(
          Icons.shopping_basket,
          color: Colors.white,
        ),
        SizedBox(
          width: 14,
        ),
      ],
    );
    appbarHeight = appbar.preferredSize.height;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color(0xeeeeee).withOpacity(1.0),
        appBar: appbar,
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(right: 16.0, bottom: 16.0),
                color: Color.fromRGBO(238, 88, 97, 1.0),
                height: 120.0,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.account_circle,
                      color: Colors.white,
                      size: 40.0,
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: EdgeInsets.all(
                        8.0,
                      ),
                      child: Text('ورود و ثبت نام',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
              ),
              ListTile(
                title: Text(
                  'خانه',
                ),
                leading: Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
              ),
              ListTile(
                title: Text(
                  'لیست دسته بندی محصولات',
                ),
                leading: Icon(
                  Icons.list,
                  color: Colors.grey,
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'سبد خرید',
                ),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.grey,
                ),
                trailing: Container(
                  height: 32.0,
                  child: Icon(Icons.arrow_right),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'پیشنهاد ویژه',
                ),
                leading: Icon(
                  Icons.star,
                  color: Colors.grey,
                ),
              ),
              ListTile(
                title: Text(
                  'پر فروش ترین ها',
                ),
                leading: Icon(
                  Icons.star,
                  color: Colors.grey,
                ),
              ),
              ListTile(
                title: Text(
                  'پر بازدیدترین ها',
                ),
                leading: Icon(
                  Icons.star,
                  color: Colors.grey,
                ),
              ),
              ListTile(
                title: Text(
                  'جدیدترین ها',
                ),
                leading: Icon(
                  Icons.star,
                  color: Colors.grey,
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'تنظیمات',
                ),
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey,
                ),
              ),
              ListTile(
                title: Text(
                  'سوالات متداول',
                ),
                leading: Icon(
                  Icons.help,
                  color: Colors.grey,
                ),
              ),
              ListTile(
                title: Text(
                  'درباره ما',
                ),
                leading: Icon(
                  Icons.group,
                  color: Colors.grey,
                ),
              ),
            ]),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              slider(),
              categories(),
              wonderBox(widthScreen, heightScreen),
              banner(),
              popularProducts(widthScreen, heightScreen),
              newProducts(widthScreen, heightScreen),
            ],
          ),
        ),
      ),
    );
  }

  slider() {
    return Container(
      height: 200,
      child: new Swiper(
        autoplay: true,
        itemBuilder: (BuildContext context, int index) {
          return Align(
            heightFactor: appbarHeight,
            child: new Image.asset(
              'assets/images/slider${index + 1}.png',
              fit: BoxFit.fill,
              width: double.infinity,
            ),
          );
        },
        itemCount: 4,
        pagination: new SwiperPagination(
          margin: EdgeInsets.only(top: 10, bottom: 12.0),
          builder: const DotSwiperPaginationBuilder(
              activeColor: Colors.white,
              color: Colors.white30,
              size: 8.0,
              activeSize: 8.0,
              space: 4.0),
        ),
      ),
    );
  }

  categories() {
    List categoriesList = [
      'کالای دیجیتال',
      'آرایشی , بهداشتی , سلامت',
      'خودرو , ابزار و اداری',
      'مد و پوشاک',
      'کتاب و لوازم تحریر و هنر',
      'اسباب بازی , کودک و نوزاد',
      'ورزش و سفر',
      'خوردنی و آشامیدنی',
    ];

    return Container(
      margin: EdgeInsets.symmetric(vertical: 32),
      height: 32.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (c, index) {
          return Container(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32.0),
                color: Color.fromRGBO(120, 174, 110, 1.0),
              ),
              child: Text(
                categoriesList[index],
                style: TextStyle(color: Colors.white),
              ));
        },
        itemCount: categoriesList.length,
      ),
    );
  }

  wonderBox(widthScreen, heightScreen) {
    List products = [
      'موبایل سامسونگ GalaxyA80',
      'ساعت هوشمند مدل Smart-M3',
      'هودی مردانه بای نت Double Colors',
      'اسپری نظافت چند منظوره Active',
    ];
    return Column(children: <Widget>[
      Row(children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          width: 140.0,
          child: Image.asset('assets/images/recomanded.png'),
        ),
        Spacer(),
        Row(children: <Widget>[
          Container(
            child: Text(
              '05',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            decoration: BoxDecoration(
                color: Color.fromRGBO(38, 50, 55, 1.0),
                borderRadius: BorderRadius.circular(2.0)),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
            child: Text(
              ':',
              style: TextStyle(color: Colors.black87),
            ),
          ),
          Container(
            child: Text(
              '25',
              style: TextStyle(color: Colors.white),
            ),
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            decoration: BoxDecoration(
                color: Color.fromRGBO(38, 50, 55, 1.0),
                borderRadius: BorderRadius.circular(2.0)),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
            child: Text(
              ':',
              style: TextStyle(color: Colors.black87),
            ),
          ),
          Container(
            child: Text(
              '22',
              style: TextStyle(color: Colors.white),
            ),
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            decoration: BoxDecoration(
                color: Color.fromRGBO(38, 50, 55, 1.0),
                borderRadius: BorderRadius.circular(2.0)),
          ),
        ]),
      ]),
      Container(
        height: 265.0,
        child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (c, index) {
              return new Container(
                width: widthScreen * 0.35,
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Column(children: <Widget>[
                  SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/product-wonderful-${index +
                                    1}.png'))),
                    height: 120.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                    alignment: Alignment.bottomRight,
                    child: Text(
                      products[index],
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ),
                  Padding(
                    child: Divider(color: Colors.grey),
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8.0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '2,450,000 تومان',
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 12.0,
                          decoration: TextDecoration.lineThrough,
                          color: Color.fromRGBO(230, 91, 101, 1.0)),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8.0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '1,125,000 تومان',
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromRGBO(119, 162, 109, 1.0)),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ]),
              );
            }),
      ),
    ]);
  }

  banner() {
    return new Container(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      child: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: new AssetImage(
                  'assets/images/banner-wide-1.png'),
              fit: BoxFit.fill,
            ),
            border: Border.all(color: Colors.grey),
            borderRadius:
            BorderRadius.circular(8.0),
          ),
          height: 120.0,
          width: double.infinity,
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: new AssetImage(
                  'assets/images/banner-wide-2.png'),
              fit: BoxFit.fill,
            ),
            border: Border.all(color: Colors.grey),
            borderRadius:
            BorderRadius.circular(8.0),
          ),
          height: 120.0,
          width: double.infinity,
        ),
        Container(
            height: 120.0,
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical:16.0, horizontal: 4.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child:
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 0.0,horizontal: 4.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: new AssetImage(
                            'assets/images/banner-small-1.png'),
                        fit: BoxFit.fill,
                      ),
                      border: Border.all(color: Colors.grey),
                      borderRadius:
                      BorderRadius.circular(8.0),
                    ),
                  ),

                ),

                Expanded(
                  child:
                  Container(
                    margin: EdgeInsets.symmetric( vertical: 0.0,horizontal: 4.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: new AssetImage(
                            'assets/images/banner-small-2.png'),
                        fit: BoxFit.fill,
                      ),
                      border: Border.all(color: Colors.grey),
                      borderRadius:
                      BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ],
            )),
        Container(
          margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: new AssetImage(
                  'assets/images/banner-wide-3.png'),
              fit: BoxFit.fill,
            ),
            border: Border.all(color: Colors.grey),
            borderRadius:
            BorderRadius.circular(8.0),
          ),
          height: 120.0,
          width: double.infinity,
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: new AssetImage(
                  'assets/images/banner-wide-4.png'),
              fit: BoxFit.fill,
            ),
            border: Border.all(color: Colors.grey),
            borderRadius:
            BorderRadius.circular(8.0),
          ),
          height: 120.0,
          width: double.infinity,
        ),
        Container(
            height: 120.0,
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 4.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child:
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: new AssetImage(
                            'assets/images/banner-small-3.png'),
                        fit: BoxFit.fill,
                      ),
                      border: Border.all(color: Colors.grey),
                      borderRadius:
                      BorderRadius.circular(8.0),
                    ),
                  ),
                ),

                Expanded(
                  child:
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: new AssetImage(
                            'assets/images/banner-small-4.png'),
                        fit: BoxFit.fill,
                      ),
                      border: Border.all(color: Colors.grey),
                      borderRadius:
                      BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ],
            )),
      ]),
    );
  }

  popularProducts(widthScreen, heightScreen, {title = 'محصولات پر فروش'}) {
    List popularProductsList = [
      'هندزفری وایرلس مدل TWS',
      'هدفون بی سیم نیا مدل Q8',
      'کیف چرمی موبایل - Adin',
      'کاور سلیکونی موبایل مدل soft-touch',
    ];

    return Column(children: <Widget>[
      Row(children: <Widget>[
        Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
            width: 140.0,
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 14.0, color: Color.fromRGBO(67, 137, 186, 1.0)),
            )),
        Spacer(),
        Text(
          'لیست کامل',
          style: TextStyle(
              fontSize: 14.0, color: Color.fromRGBO(67, 137, 186, 1.0)),
        ),
        Icon(
          Icons.arrow_right,
          color: Color.fromRGBO(67, 137, 186, 1.0),
        )
      ]),
      SizedBox(
        height: 16.0,
      ),
      Container(
        height: 250.0,
        child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (c, index) {
              return new Container(
                width: widthScreen * 0.35,
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Column(children: <Widget>[
                  SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/product-popular-${index +
                                    1}.png'))),
                    height: 120.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                    alignment: Alignment.bottomRight,
                    child: Text(
                      popularProductsList[index],
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ),
                  Padding(
                    child: Divider(color: Colors.grey),
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8.0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '3,250,000 تومان',
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 12.0,
                          decoration: TextDecoration.lineThrough,
                          color: Color.fromRGBO(230, 91, 101, 1.0)),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8.0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '3,100,000 تومان',
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromRGBO(119, 162, 109, 1.0)),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ]),
              );
            }),
      ),
    ]);
  }

  newProducts(widthScreen, heightScreen, {title = 'محصولات جدید'}) {
    List newProductsList = [
      'کیف دوشی مردانه شهر چرم مدل A45',
      'کت مردانه مدل 777 Desar',
      'یخچال فریز امرسان مدل CLA',
      'پیراهن مردانه زی مدل Poplin',
    ];

    return Column(children: <Widget>[
      SizedBox(
        height: 32.0,
      ),
      Row(children: <Widget>[
        Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
            width: 140.0,
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 14.0, color: Color.fromRGBO(67, 137, 186, 1.0)),
            )),
        Spacer(),
        Text(
          'لیست کامل',
          style: TextStyle(
              fontSize: 14.0, color: Color.fromRGBO(67, 137, 186, 1.0)),
        ),
        Icon(
          Icons.arrow_right,
          color: Color.fromRGBO(67, 137, 186, 1.0),
        )
      ]),
      SizedBox(
        height: 16.0,
      ),
      Container(
        height: 250.0,
        child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (c, index) {
              return new Container(
                width: widthScreen * 0.35,
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Column(children: <Widget>[
                  SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/product-new-${index + 1}.png'))),
                    height: 120.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                    alignment: Alignment.bottomRight,
                    child: Text(
                      newProductsList[index],
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ),
                  Padding(
                    child: Divider(color: Colors.grey),
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8.0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '3,250,000 تومان',
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 12.0,
                          decoration: TextDecoration.lineThrough,
                          color: Color.fromRGBO(230, 91, 101, 1.0)),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8.0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '3,100,000 تومان',
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromRGBO(119, 162, 109, 1.0)),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ]),
              );
            }),
      ),
    ]);
  }
}
