import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThirdScreen extends StatefulWidget {
  Map details;
  ThirdScreen(this.details);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    String background = widget.details['background'] ?? '';
    String title = widget.details['title'] ?? '';
    String desc = widget.details['desc'] ?? '';
    String location = widget.details['location'] ?? '';
    String amount = widget.details['amount'] ?? '';

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Hero(
              tag: background,
              child: Image.asset(
                background,
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(0.75),
                colorBlendMode: BlendMode.darken,
              ),
            ),
          ),
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 30),
            children: [
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.local_fire_department,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.2),
                      offset: Offset(3, 3),
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage(background),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text(
                title + 'juice',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              SizedBox(height: 10,),
              Text(
                desc,
                style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 30),
              ),
              SizedBox(height: 10,),
              Text(
                location,
                style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 25),
              ),
              SizedBox(height: 10,),
              Text(
                amount,
                style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 20),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      'Explore more',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ],
      ),
    );
  }
}
