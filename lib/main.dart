import 'package:flutter/material.dart';

import 'favoriteA.dart';
import 'favoriteB.dart';
import 'favoriteC.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'เกือบจะโอตาคุ',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'เกือบจะโอตาคุ'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          /*1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'เกือบจะโอตาคุ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'อนิเมะ',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        /*3*/
       //step4 เรียกใช้ state FavoriteWidget()
      ],
    ),
  );

  Widget textSection = Container(
    padding: const EdgeInsets.all(32),
    child: Text(' ประวัติ : ประเทศญี่ปุ่นเริ่มผลิตภาพยนตร์แอนิเมชั่นในเชิงพาณิชย์ตั้งแต่ปี ค.ศ. 1917 แต่ภาพลักษณ์ในฐานะสื่อสำหรับเด็กของภาพยนตร์การ์ตูนทำให้การเผยแพร่ยังมีอยู่อย่างจำกัด และแผ่นดินไหวใหญ่ในที่ราบคันโตเมื่อ ปี 1923 ทำให้สตูดิโอและงานในยุคแรกเริ่มถูกทำลายไปเป็นจำนวนมาก. การ์ตูนอนิเมะเรื่องยาวเรื่องแรก คือ โมโมทาโร่ อุมิโนะชินเปอิ (桃太郎 海の神兵) หรือ โมโมทาโร่ ทหารเทพแห่งท้องทะเล ซึ่งถูกสร้างขึ้นโดยราชนาวีของจักรวรรดิ์ญี่ปุ่น ในปี ค.ศ. 1944 เพื่อใช้ในการโฆษณาชวนเชื่อในระหว่างสงคราม. พอถึงยุคหลังสงครามความนิยมในภาพยนตร์แอนิเมชั่นก็ได้รับการฟื้นฟูเป็นลำดับ. จนกระทั่งในทศวรรศที่ 1960 นักสร้างแอนิเมชั่นอย่าง เทะซิกะ โอซามุ ได้บุกเบิกเทคนิคในการสร้างภาพยนตร์การ์ตูนในญี่ปุ่น โดยการศึกษาเลียนแบบเทคนิคของนักทำแอนิเมชั่นของดิสนีย์และคิดหาทางลดความยุ่งยากและค่าใช้จ่ายลง. ผลงานของโอซามุได้รับความนิยมแพร่หลายไปนอกประเทศญี่ปุ่น และได้รับฉายทั้งในอเมริกาและประเทศในยุโรปหลายเรื่อง. พอถึงปลายปี 1970 ภาพยนตร์การ์ตูนญี่ปุ่นได้พัฒนาลักษณะเฉพาะตัวขึ้นจนสามารถแบ่งแยกออกจากภาพยนตร์การ์ตูนของสหรัฐอเมริกาได้อย่างชัดเจน. ในทศวรรษที่ 1980 อนิเมะได้รับความนิยมกว้างขวางในญี่ปุ่น ทำให้ธุรกิจการสร้างอนิเมะเจริญเติบโตอย่างรวดเร็ว และในทศวรรษที่ 1990 และ 2000 ชื่อเสียงของอนิเมะได้แพร่ขยายไปยังนอกประเทศญี่ปุ่น พร้อม ๆ กับการขยายตัวของตลาดอนิเมะนอกประเทศสำหรับคนที่ชื่นชอบ',
      softWrap: true,
    ),
  );
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => firstPage2()), //เรียกใช้ TapboxA() ใน favoriteA.dart เมื่อกด ไอคอน home_rounded ที่มีข้อความว่า หน้าหลัก
                );
              },
              child: _buildButtonColumn(color, Icons.favorite, 'อันดับ 1')),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => firstPage3()),//เรียกใช้ ParentWidget() ใน favoriteB.dart เมื่อกด ไอคอน favorite ที่มีข้อความว่า ถูกใจ
                );
              },
              child: _buildButtonColumn(color, Icons.favorite, 'อันดับ 2')),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => firstPage()),//เรียกใช้ ParentWidgetC ใน favoriteC.dart เมื่อกด ไอคอน share ที่มีข้อความว่า แบ่งปัน
                );
              },
              child: _buildButtonColumn(color, Icons.favorite, 'อันดับ 3')),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('เกือบจะโอตาคุ'),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'images/Best_New_Anime_Series_2017_Cover.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textSection,
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class FavoriteWidget extends StatefulWidget { //step  2 
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState(); //เรียกใช้ _FavoriteWidgetState()
}

class _FavoriteWidgetState extends State<FavoriteWidget> {  // step3  Subclass State สร้างตัวแปรเก็บค่าเพื่อเรียกใช้งาน
  bool _isFavorited = true;
  int _favoriteCount = 80;

  void _toggleFavorite() { //step4 เมื่อมีการคลิกที่ดาว
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  Widget build(BuildContext context) { //step 3
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            padding: EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite, //เมื่อกดเรียกใช้ฟังก์ชั่น  _toggleFavorite
          ),
        ),
        SizedBox(
          width: 18,
          child: Container(
            child: Text('$_favoriteCount'), //แสดงค่า _favoriteCount = 80
          ),
        ),
      ],
    );
  }
}