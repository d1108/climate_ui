import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color myHexColor1 = Color(0xff1a1a1a);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Center(
                      child: Text(
                        'Mumbai',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 10,
                    //   width: 250,
                    //   child: Divider(
                    //     color: Colors.lightBlueAccent.shade200,
                    //   ),
                    // ),

                  ],
                ),
                margin: EdgeInsets.all(10) ,
                decoration: BoxDecoration(
                  color: myHexColor1,
                  borderRadius: BorderRadius.circular(15),

                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        '☁',
                        style: TextStyle(
                          fontSize: 70,
                        ),
                      ),
                    ),

                    Center(
                      child: Text(
                        '32°',
                        style: TextStyle(
                          fontSize: 70,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Drizzle',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                    SizedBox(height:40),
                    Center(

                      child: Text(
                        'Its ice-cream time.',

                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
                margin: EdgeInsets.all(10) ,
                decoration: BoxDecoration(
                  color: myHexColor1,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(10) ,
                decoration: BoxDecoration(
                  color: myHexColor1,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
