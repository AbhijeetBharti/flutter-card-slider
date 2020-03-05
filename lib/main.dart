import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> demo = ['Demo 1', 'Demo 5', 'Demo 4', 'Demo 3', 'Demo 2'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10),
          child: Swiper(
            onIndexChanged: (value) {
              print(demo[value]);
            },
            itemHeight: 500,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Text(demo[index]),
              );
            },
            itemWidth: 300,
            itemCount: 5,
            layout: SwiperLayout.STACK,
          ),
        ),
      ),
    );
  }
}
