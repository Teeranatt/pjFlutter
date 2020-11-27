import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    'เกิดใหม่ทั้งทีก็เป็นสไลม์ไปซะแล้ว',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'อนิเมะ,มังงะ,นิยาย,',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('500'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(Colors.brown, Icons.home_rounded, 'หน้าหลัก'),
          _buildButtonColumn(Colors.pink, Icons.favorite, 'ถูกใจ'),
          _buildButtonColumn(Colors.blue, Icons.share, 'แบ่งปัน'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'มิคามิ ซาโตรุ หนุ่มโสด ไม่เคยมีแฟน วัย 37 ปี ถูกแทงตายเพราะช่วยเพื่อนจากคนร้าย เขาได้เกิดใหม่ในต่างโลกด้วยร่างของสไลม์ ได้พบมังกร เวรุโดร่า ผู้ถูกผนึกมาร่วม 3 ร้อยปีและรู้ว่าเขามาจากต่างโลก ด้วยความเบื่อหน่ายในชีวิตจึงยอมเป็นเพื่อนกับสไลม์ ตั้งชื่อให้เขา “ริมุรุ” และให้เขากลืนตนเข้าไปในร่าง ด้วย2 ความสามารถ “นักล่า” ที่ทำให้เขาสามารถชิงความสามารถของผู้ถูกกลืน และ “ปราชญ์ผู้ยิ่งใหญ่” ทำให้เขาเข้าใจเรื่องราวในโลกใหม่ ส่งผลให้เขาพัฒนาเป็นสไลม์ที่น่าเกรงขามต่อเหล่ามอนสเตอร์ทั่วไป จนกลายเป็นปีศาจที่ยิ่งใหญ่ในภายหลัง',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: '転生したらスライムだった件件',
      home: Scaffold(
        appBar: AppBar(
          title: Text('เกิดใหม่ทั้งทีก็เป็นสไลม์ไปซะแล้ว (Tensei shitara Slime Datta Ken)'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/slime4.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
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