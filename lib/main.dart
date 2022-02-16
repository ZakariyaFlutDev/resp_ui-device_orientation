import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:with_zayniddin/pages/home_page.dart';

void main() {

  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations(
  //   [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]
  // );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  HomePageSt(),
    );
  }
}

class HomePageSt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    final size = MediaQuery.of(context).size;
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        title: Text("App"),
      ),
      body: isPortrait ?
      Container(
        child: Column(
          children: [
            Container(
              height: size.height * 0.5,
              color: Colors.amberAccent,
              margin: EdgeInsets.all(20),
              child: Center(
                child: Text("Vertical one"),
              ),
            ),
            Container(
              height: size.height * 0.2,
              color: Colors.amberAccent,
              margin: EdgeInsets.all(20),
              child: Center(
                child: Text("Vertical two"),
              ),
            )
          ],
        ),
      ) :
          Container(
            child: Row(
              children: [
                Container(
                  width: size.width * 0.5,
                  margin: EdgeInsets.all(20),
                  color: Colors.amberAccent,
                  child: Center(
                    child: Text("Horizontal One"),
                  ),
                ),
                Container(
                  width: size.width * 0.2,
                  margin: EdgeInsets.all(20),
                  color: Colors.amberAccent,
                  child: Center(
                    child: Text("Horizontal Two"),
                  ),
                ),
                // Container(
                //   width: 200,
                //   color: Colors.purple,
                // )
              ],
            ),
          )
    );
  }
}


