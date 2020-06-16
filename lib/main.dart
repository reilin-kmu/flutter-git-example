import 'package:flutter/material.dart';
import 'package:social_media_widgets/instagram_story_swipe.dart';
import 'basic_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title)
      ),
      body: Container(
        color: Colors.amber,
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 16),
              RaisedButton(
                onPressed: _onInstagramStorySwipeClicked,
                child: Text(
                  'Instagram story swipe',
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  void _onInstagramStorySwipeClicked() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => InstagramStorySwipe(
            initialPage: 2,
            children: <Widget>[
              Screen('Screen 1', Colors.redAccent),
              Screen('Screen 2', Colors.greenAccent),
              Screen('Screen 3', Colors.blueAccent),
            ],
          )
      )
    );
  }
}
