import 'package:flutter/material.dart';
import 'package:myapp1/main.dart';

class firstPage3 extends StatefulWidget {
  @override
  _firstPageState3 createState() => _firstPageState3();
}

class _firstPageState3 extends State<firstPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: Text("Tensei Shitara Slime Datta Ken"),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              child: Column(children: <Widget>[
                Image.asset(
                  'images/slime4.jpg',
                  height: 300,
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 270, left: 30, right: 30),
              child: Column(
                children: [
                  Text("Tensei Shitara Slime Datta Ken"),
                  Text(""),
                  Text(
                      "เรื่องย่อ : มิคามิ ซาโตรุ  หนุ่มโสด ไม่เคยมีแฟน วัย 37 ปี ถูกแทงตายเพราะช่วยเพื่อนจากคนร้าย เขาได้เกิดใหม่ในต่างโลกด้วยร่างของสไลม์ ได้พบมังกร เวรุโดร่า ผู้ถูกผนึกมาร่วม 3 ร้อยปีและรู้ว่าเขามาจากต่างโลก ด้วยความเบื่อหน่ายในชีวิตจึงยอมเป็นเพื่อนกับสไลม์ ตั้งชื่อให้เขา “ริมุรุ” และให้เขากลืนตนเข้าไปในร่าง ด้วย2 ความสามารถ “นักล่า” ที่ทำให้เขาสามารถชิงความสามารถของผู้ถูกกลืน และ “ปราชญ์ผู้ยิ่งใหญ่” ทำให้เขาเข้าใจเรื่องราวในโลกใหม่ ส่งผลให้เขาพัฒนาเป็นสไลม์ที่น่าเกรงขามต่อเหล่ามอนสเตอร์ทั่วไป จนกลายเป็นปีศาจที่ยิ่งใหญ่ในภายหลัง"),
                  Text(""),FavoriteWidget(),
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}