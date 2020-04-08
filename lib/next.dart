import 'package:flutter/material.dart';
import 'package:flutterchallenge/main.dart';

//void main() => runApp(MaterialApp(
//  debugShowCheckedModeBanner: false,
//  home: MyApp(),
//));

class Next extends StatefulWidget {

  @override
  _NextState createState() => _NextState();
}

class _NextState extends State<Next> {

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
          ClipPath(
            clipper: MyClipper(),
            child:Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                  color: Color(0xffe9b790)
                  ),
                ),
              Container(
                child: Text("Revloution 2020", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28
                ),
                ),
              ),
              ]
            ),
          ),
          ListView(
            shrinkWrap: true,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Reviews",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: <Widget>[
                          Image.asset("images/star.png", height: 15,
                          ),
                          Image.asset("images/star.png", height: 15,
                          ),
                          Image.asset("images/star.png", height: 15,
                          ),
                          Image.asset("images/star.png", height: 15,
                          ),
                          Image.asset("images/star.png", height: 15,
                          ),
                        ],
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: <Widget>[
                      Text(
                          "Author",
                          style: TextStyle(fontWeight: FontWeight.w500)
                      ),
                      Text(
                          "Chetan Bhagat",
                          style: TextStyle(fontWeight: FontWeight.w500)
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: <Widget>[
                      Text("Category",
                          style: TextStyle(fontWeight: FontWeight.w500)
                      ),
                      Text("PaperBack",
                          style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Stack(
              children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage("images/image7.jpg"),
                      backgroundColor: Colors.grey.withOpacity(0.2),
                      radius: 150,
                    ),
                Positioned(
                      bottom: 40,
                      right: 0,
                      child: Container(
                        alignment: Alignment.bottomRight,
                        height: 40,
                        width: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xffe9b790)
                        ),
                        child: Center(
                          child: Text(
                            "Price \$ 39",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                      ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
                  padding: EdgeInsets.only(left: 30),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "About",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 26),
                  )),
              Container(
                  padding: EdgeInsets.only(left: 30),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Its story is concerned with a love triangle, corruption and a journey of self-discovery.",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  )),
        ],
      ),

      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 30, right: 30),
        height: 80,
        color: Color(0xffe9b790),
        child: InkWell(
          child: Padding(
            padding: EdgeInsets.only(top: 1.0),
            child: Row(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 70),
                      child: Text("Buy it Now",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20, fontWeight: FontWeight.w600)
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(color: Color(0xffe9b790)),
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                ),
                ],
            ),
          ),
        )
      )


    );
  }

}


class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path= new Path();


    path.lineTo(0, size.height*0);
    double xcenter = size.width*0.5;
    double ycenter = size.height;

    path.quadraticBezierTo(xcenter,ycenter,size.width,size.height*0.0);

    path.lineTo(size.width, 0);


    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {

    return true;
  }

}
