import 'package:flutter/material.dart';
import 'package:flutterchallenge/next.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.navigate_before),
        backgroundColor: Color(0xffe9b790),
        elevation: 0.0,
        actions: <Widget>[
          Icon(Icons.more_horiz)
        ],
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                child: ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    height: 420,
                    decoration: BoxDecoration(color: Color(0xffe9b790)),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                        SizedBox(
                        height: 2,
                      ),
                          Text("Book House", style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold, fontSize: 45)
                        ),
                          SizedBox(
                            height: 20,
                          ),
                          Text("BESTSELLER", style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.w600, fontSize: 20)
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Price \$39.99  ",style: TextStyle(color: Colors.white,
                              fontSize: 17)
                          ),
                          SizedBox(height: 20,),
                          CarouselSlider(
                            height: 160.0,
                            items: [
                              "images/image7.jpg",
                              "images/image5.jpg",
                              "images/image6.jpg"
                            ].map((i) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                      width: 160,
                                      margin:
                                      EdgeInsets.symmetric(horizontal: 5.0),
                                      child: FittedBox(
                                        child: Image.asset(
                                          '$i',
                                        ),
                                        fit: BoxFit.fill,
                                      ));
                                },
                              );
                            }).toList(),
                          ),
                      ],
                      ),
                  ),
                ),
              ),
              ),
              Container(
                margin: EdgeInsets.only(top: 320),
                padding: EdgeInsets.only(left: 60, right: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 25.0, // soften the shadow
                              spreadRadius: 5.0, //extend the shadow
                              offset: Offset(
                                10.0, // Move to right 10  horizontally
                                10.0, // Move to bottom 10 Vertically
                              ),
                            )
                          ],
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(Icons.arrow_back),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 25.0, // soften the shadow
                              spreadRadius: 5.0, //extend the shadow
                              offset: Offset(
                                10.0, // Move to right 10  horizontally
                                10.0, // Move to bottom 10 Vertically
                              ),
                            )
                          ],
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(Icons.arrow_forward),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text(
                "Explore More",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 50, right: 50),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.black12),
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                    ),
                  ),
                ),
                Icon(Icons.search)
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            height: 360,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 65, 0, 0),
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffe9b790),
                      ),
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 95,
                          ),

                          Container(

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,

                              children: <Widget>[
                                Text(
                                  "ANNE FRANK",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),

                          Text(
                            "\$ 69",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      width: 100,
                      child: Image.asset("images/image4.jpg"),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 65, 0, 0),
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffe9b790),
                      ),
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 95,
                          ),

                          Container(

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,

                              children: <Widget>[
                                Text(
                                  "Find your voice",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),

                          Text(
                            "\$ 63",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      width: 100,
                      child: Image.asset("images/image1.jpg"),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 65, 0, 0),
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffe9b790),
                      ),
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 95,
                          ),

                          Container(

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,

                              children: <Widget>[
                                Text(
                                  "Never tell",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),

                          Text(
                            "\$ 59",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      width: 100,
                      child: Image.asset("images/image2.jpg"),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 65, 0, 0),
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffe9b790),
                      ),
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 95,
                          ),

                          Container(

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,

                              children: <Widget>[
                                Text(
                                  "Clock Work Angel",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),

                          Text(
                            "\$ 69",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      width: 100,
                      child: Image.asset("images/image3.jpg"),
                    ),
                  ],
                ),
                SizedBox(height: 40,),
              ],
            ),
          ),
          Column(
              children: <Widget>[
                Text(
                  "BEST SELLERS",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                )
              ],
            ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            height: 360,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 65, 0, 0),
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffe9b790),
                      ),
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 95,
                          ),

                          Container(

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,

                              children: <Widget>[
                                Text(
                                  "Revolution 2020",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),

                          Text(
                            "\$ 39",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      width: 100,
                      child: Image.asset("images/image7.jpg"),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 65, 0, 0),
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffe9b790),
                      ),
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 95,
                          ),

                          Container(

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,

                              children: <Widget>[
                                Text(
                                  "2 States",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),

                          Text(
                            "\$ 39",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      width: 100,
                      child: Image.asset("images/image6.jpg"),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 65, 0, 0),
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffe9b790),
                      ),
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 95,
                          ),

                          Container(

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,

                              children: <Widget>[
                                Text(
                                  "One Indian Girl",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),

                          Text(
                            "\$ 39",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      width: 100,
                      child: Image.asset("images/image5.jpg"),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 65, 0, 0),
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffe9b790),
                      ),
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 95,
                          ),

                          Container(

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,

                              children: <Widget>[
                                Text(
                                  "The Girl in room 105",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),

                          Text(
                            "\$ 39",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      width: 100,
                      child: Image.asset("images/image8.jpg"),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 30, right: 30),
        height: 60,
        color: Color(0xffe9b790),
        child: InkWell(
          onTap: () => print('tap on close'),
          child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
                Spacer(),
                Icon(
                  Icons.add_shopping_cart,
                  color: Colors.white,
                ),
                Spacer(),
                Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                Spacer(),
                Icon(
                  Icons.zoom_out_map,
                  color: Colors.white,
                ),
                Spacer(),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder:(context) => Next()
                    ),);
                    print("you clicked me");
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical:  11),
                    decoration: BoxDecoration(
//                        borderRadius: BorderRadius.circular(4),

                  ),
                )
//                Icon(Icons.person,
//                    color: Colors.white
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path= new Path();


    path.lineTo(0, size.height*0.7);
    double xcenter = size.width*0.5;
    double ycenter = size.height;

    path.quadraticBezierTo(xcenter,ycenter,size.width,size.height*0.7);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}