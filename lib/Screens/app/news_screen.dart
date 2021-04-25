import 'dart:convert';

import 'package:comsci_news/Screens/app/new_app.dart';
import 'package:flutter/material.dart';
import 'package:comsci_news/Screens/app/news_view.dart';
import 'package:comsci_news/Screens/app/side_menu.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as Http;
import '../Login/components/background.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  var jsonData;
  List<Booknew> dataList = [];

  TextStyle titleStyle =
      GoogleFonts.kanit(fontSize: 18, fontWeight: FontWeight.bold);

  TextStyle contentStyle = GoogleFonts.kanit(
    fontSize: 18,
  );

  Future<Null> updateData(BuildContext context) async {
    setState(() {
      dataList = [];
    });
  }

  Future<String> _GetNewsAPI() async {
    var response =
        await Http.get('https://kriengsaksskru.github.io/booka1/book.json');

    jsonData = json.decode(utf8.decode(response.bodyBytes));

    for (var data in jsonData) {
      Booknew bookneww = Booknew(data['name'], data['short_Stories'],
          data['the_storyline'], data['thoughts']);
      dataList.add(bookneww);
    }

    return 'ok';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'นิทาน ทั้งหมด',
          style: contentStyle,
        ),
      ),
      drawer: NavDrawer(),
      body: Background(
        child: new RefreshIndicator(
            child: FutureBuilder(
              future: _GetNewsAPI(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: dataList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          children: <Widget>[
                            InkWell(
                              child: Container(
                                margin: EdgeInsets.all(1),
                                child: Align(
                                    child: Text(
                                  '${dataList[index].name}',
                                  style: titleStyle,
                                )),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Book123()));
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      );
                    },
                  );
                } else {
                  return Container(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            onRefresh: () {
              return updateData(context);
            }),
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
