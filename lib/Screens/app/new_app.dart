import 'package:flutter/material.dart';
import 'package:comsci_news/Screens/app/side_menu.dart';
import 'package:google_fonts/google_fonts.dart';

class Book123 extends StatelessWidget {
  Book123({Key key}) : super(key: key);

  var sizeBox = 14.0;

  TextStyle bulletStyle = GoogleFonts.prompt(
    fontSize: 28,
    fontWeight: FontWeight.bold,
  );

  TextStyle contentBulletStyle = GoogleFonts.prompt(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  TextStyle contentStyle = GoogleFonts.kanit(
    fontSize: 18,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: contentStyle,
        ),
        automaticallyImplyLeading: true,
      ),
      drawer: NavDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Center(
                      child: Text(
                        "คนแจวเรือจ้างกับนักศึกษา",
                        style: bulletStyle,
                      ),
                    ),
                  ),
                  SizedBox(height: sizeBox),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(200.0),
                    child: Image.network(
                      'https://nitanstory.com/wp-content/uploads/2020/12/%E0%B8%A5%E0%B8%B8%E0%B8%87%E0%B9%81%E0%B8%88%E0%B8%A7%E0%B9%80%E0%B8%A3%E0%B8%B7%E0%B8%AD%E0%B8%88%E0%B9%89%E0%B8%B2%E0%B8%87%E0%B8%81%E0%B8%B1%E0%B8%9A%E0%B8%AB%E0%B8%99%E0%B8%B8%E0%B9%88%E0%B8%A1%E0%B8%99%E0%B8%B1%E0%B8%81%E0%B9%80%E0%B8%A3%E0%B8%B5%E0%B8%A2%E0%B8%99%E0%B8%99%E0%B8%AD%E0%B8%81-390x303.jpg',
                      height: 180.0,
                    ),
                  ),
                  SizedBox(height: sizeBox),
                  ListTile(
                    title: Align(
                      child: new Text(
                        'นิทานเรื่องคนแจวเรือจ้างกับนักศึกษา‏ เป็นนิทานพื้นบ้านภาคเหนือ ที่มีเนื้อหาสนุกเพลิดเพลิน พร้อมทั้งให้แง่คิดปรัชญาคติสอนใจในการใช้ชีวิตไว้อีกด้วย',
                        style: contentStyle,
                      ),
                      alignment: Alignment(-1, 50),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone_android),
                    title: Align(
                      child: new Text(
                        '084-298-2456',
                        style: contentStyle,
                      ),
                      alignment: Alignment(-1, 0),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Align(
                      child: new Text(
                        'www.facebook.com/numvarn',
                        style: contentStyle,
                      ),
                      alignment: Alignment(-1, 0),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.web),
                    title: Align(
                      child: new Text(
                        'www.comsci-sskru.com',
                        style: contentStyle,
                      ),
                      alignment: Alignment(-1, 0),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Align(
                      child: new Text(
                        'phisan.s@sskru.ac.th',
                        style: contentStyle,
                      ),
                      alignment: Alignment(-1, 0),
                    ),
                  ),
                  SizedBox(height: sizeBox),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "ประวัติการทำงาน",
                      style: contentBulletStyle,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.arrow_forward),
                    title: Align(
                      child: new Text(
                        'อาจารประจำสาขาวิชาวิทยาการคอมพิวเตอร์,\n\nคณะศิลปศาสตร์และวิทยาศาสตร์,\n\nมหาวิทยาลัยราชภัฏศรีสะเกษ',
                        style: contentStyle,
                      ),
                      alignment: Alignment(-1.8, 0),
                    ),
                  ),
                  SizedBox(height: sizeBox),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "ความสามารถพิเศษ",
                      style: contentBulletStyle,
                    ),
                  ),
                  SizedBox(height: sizeBox),
                  ListTile(
                    leading: Icon(Icons.developer_board),
                    title: Align(
                      child: new Text(
                        'เชี่ยวชาญการเขียนโปรแกรมด้วย Python',
                        style: contentStyle,
                      ),
                      alignment: Alignment(-1, 0),
                    ),
                  ),
                  SizedBox(height: sizeBox),
                  ListTile(
                    leading: Icon(Icons.developer_board),
                    title: Align(
                      child: new Text(
                        'เชี่ยวชาญการการพัฒนาเว็บแอพพลิเคชั่นด้วย Django Framework',
                        style: contentStyle,
                      ),
                      alignment: Alignment(-1, 0),
                    ),
                  ),
                  SizedBox(height: sizeBox),
                  ListTile(
                    leading: Icon(Icons.developer_board),
                    title: Align(
                      child: new Text(
                        'การวิเคราะห์ประมวลผลข้อมูลขนาดใหญ่ด้วย Python',
                        style: contentStyle,
                      ),
                      alignment: Alignment(-1, 0),
                    ),
                  ),
                  SizedBox(height: sizeBox),
                  ListTile(
                    leading: Icon(Icons.developer_board),
                    title: Align(
                      child: new Text(
                        'การพัฒนาระบบงานเว็บเชอร์วิสด้วย Django Rest Framework',
                        style: contentStyle,
                      ),
                      alignment: Alignment(-1, 0),
                    ),
                  ),
                  SizedBox(height: sizeBox),
                  ListTile(
                    leading: Icon(Icons.developer_board),
                    title: Align(
                      child: new Text(
                        'การพัฒนาโมบายแอพพลิเคชันด้วย Flutter',
                        style: contentStyle,
                      ),
                      alignment: Alignment(-1, 0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
