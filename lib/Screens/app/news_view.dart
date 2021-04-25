import 'dart:io';
import 'package:comsci_news/Screens/app/news_screen.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsViewPage extends StatefulWidget {
  NewsViewPage({Key key, @required this.thoughts}) : super(key: key);
  final String thoughts;
  @override
  _NewsViewPageState createState() => _NewsViewPageState();
}

class _NewsViewPageState extends State<NewsViewPage> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News View'),
      ),
      body: WebView(
        initialUrl: '${widget.thoughts}',
      ),
    );
  }
}

class Booknew {
  String name;
  String short_Stories;
  String the_storyline;
  String thoughts;
  Booknew(this.name, this.short_Stories, this.the_storyline, this.thoughts);
}
