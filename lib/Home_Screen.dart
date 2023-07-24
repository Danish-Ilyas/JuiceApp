import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:juice_app/ThirdScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List flavour = [
    'images/starw.jpeg',
    'images/oranges.jpeg',
    'images/mixed.jpeg',
    'images/berrie.jpg',
    'images/grapes.jpg'
  ];
  List names = ['Strawberry', 'Oranges', 'Mixed', 'Blue Berry', 'Grapes'];
  List amount = [
    '£30/glass',
    '£25/glass',
    '£40/glass',
    '£20/glass',
    '£25/glass'
  ];
  List location = ['Pakistan','India','China','UK','Dubai'];
  String desc ='mixed with child ice and griended with sponzita,picked with soft hands in sunshine morning,100% pure,hygiene and checked by fssai.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
                child: Image.asset(
              'images/berries.jpg',
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.5),
              colorBlendMode: BlendMode.darken,
            )),
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 30),
              children: [
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(
                    Icons.sort,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    "Healthy Outside",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Center(
                  child: Text(
                    "start",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Center(
                  child: Text(
                    "From inside",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50, right: 220),
                  child: Text(
                    "We provide a variety of juice with various flavours",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Our Some Variants",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 280,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: flavour.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdScreen({
                            'background':flavour[index],
                            'title':names[index],
                            'amount':amount[index],
                            'desc':desc,
                            'location':location[index],
                          })));
                        },
                        child: Column(
                          children: [
                            Hero(
                              tag: flavour[index],
                              child: Container(
                                margin:
                                    EdgeInsets.only(left: index == 0 ? 0 : 20),
                                width: 140,
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(flavour[index]),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Text(
                                names[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                            Center(
                              child: Text(
                                amount[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 19,
                                    color: Colors.white.withOpacity(0.7)),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
