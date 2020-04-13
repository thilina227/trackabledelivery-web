import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= 800) {
          return DesktopNavBar();
        } else {
          return MobileNavBar();
        }
      },
    );
  }
}

class DesktopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Trackable Delivery",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 30
                  ),
            ),
            Row(
              children: <Widget>[
                Text("Home", style: TextStyle(color: Colors.blueAccent),),
                SizedBox(width: 30,),
                Text("Pricing", style: TextStyle(color: Colors.black87),),
                SizedBox(width: 30,),
                Text("API", style: TextStyle(color: Colors.black87),),
                SizedBox(width: 30,),
                Text("Docs", style: TextStyle(color: Colors.black87),),
                SizedBox(width: 30,),
              ],
            )
          ],
        ),
      ),
    );
  }
}


class MobileNavBar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
                  children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Text("Trackable Delivery",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 30
                    ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Home", style: TextStyle(color: Colors.blueAccent),),
                SizedBox(width: 30,),
                Text("Pricing", style: TextStyle(color: Colors.black87),),
                SizedBox(width: 30,),
                Text("API", style: TextStyle(color: Colors.black87),),
                SizedBox(width: 30,),
                Text("Docs", style: TextStyle(color: Colors.black87),),
                SizedBox(width: 30,),
              ],
            )
          ],
      ),
    );
  }
}