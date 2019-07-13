import 'package:flutter/material.dart';

//no outer packges to import enjoy fluttering.....

void main() {
  runApp(MaterialApp(
    home: App(),
  ));
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animation"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
          color: Colors.grey,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
          
          //adding a guesture on click to image

                GestureDetector(
                  child: Hero(
                    tag: 'hero_animation',
                    child: CircleAvatar(
                      maxRadius: 70.0,
                      backgroundImage: NetworkImage(
                          "http://clipart-library.com/image_gallery/21766.gif"),
                    ),
                  ),
                  onTap: () => _gotoDetailsPage(context),
                ),

                Divider(
                  color: Colors.transparent,
                ),

                Text("Click to view Hero ANimation !")

              ],
            ),
          )),
    );
  }

  //on click what context to appear....

  void _gotoDetailsPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => Scaffold(
          body: Container(
        color: Colors.grey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
        
        //a same hero animation with the tag as defined

              Hero(
                tag: 'hero_animation',
                child: CircleAvatar(
                  maxRadius: 180.0,
                  backgroundImage: NetworkImage(
                      "http://clipart-library.com/image_gallery/21766.gif"),
                ),
              ),

              Divider(
                color: Colors.transparent,
                height: 30.0,
              ),

              Text(
                'Yup Its a Postman here !!!',
                style: TextStyle(fontSize: 20.0),
              ),

            ],
          ),
        ),
      )),
    ));
  }
}
