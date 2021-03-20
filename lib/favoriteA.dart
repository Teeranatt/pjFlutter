// TapboxA manages its own state.

//------------------------- TapboxA ----------------------------------

import 'package:flutter/material.dart';
import 'package:myapp1/main.dart';

class firstPage2 extends StatefulWidget {
  @override
  _firstPageState2 createState() => _firstPageState2();
}

class _firstPageState2 extends State<firstPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: Text("Attack on Titan"),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              child: Column(children: <Widget>[
                Image.asset(
                  'images/attack on titan.jpg',
                  height: 300,
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 270, left: 30, right: 30),
              child: Column(
                children: [
                  Text("Attack on Titan"),
                  Text(""),
                  Text(
                      "เรื่องย่อ : เอเรน เยเกอร์ เด็กหนุ่มที่ต้องเสียแม่ไปจากเหตุการณ์ไททันบุกเข้าทำลายวอลล์มาเรียในเขตชิกันชินา เพราะต้องการแก้แค้นให้กับแม่ของ เอเรน, มิคาสะ และอาร์มิน จึงเข้าศึกษาที่โรงเรียนทหาร รุ่นที่ 104 เพื่อตั้งเป้าหมายจะเป็นเหล่าสำรวจ ออกไปสู้รบกับไททัน และออกไปดูโลกภายนอกกำแพง เวลาผ่านมาเกือบห้าปี หลังจากเหตุการณ์ที่ไททัน 60 เมตรบุกทลายวอลล์มาเรีย ทำให้มนุษย์ชาติต้องถอยร่นไปยังวอลล์โรเซ กำแพงชั้นต่อไป เอเรน และพรรคพวกรุ่น 104 อีกไม่นานก็จะได้เลื่อนขั้นจากทหารฝึกหัดไปสังกัดกองทหารต่าง ๆ ในเวลาพักของวันธรรมดา ๆ วันหนึ่ง ไททันห้าสิบเมตรตัวเดิมได้บุกเข้ามาอีกครั้ง และบุกเข้าทำลายวอลล์โรเซทางเขตทรอสทำให้ไททันบุกเข้ามากวาดล้างมนุษย์อีกครั้ง ประจวบเหมาะกับที่ทหารหน่วยสำรวจได้ออกไปสำรวจนอกกำแพงในระหว่างนั้นพอดี ทำให้ทหารฝึกหัดทุกหน่วยได้รับคำสั่งให้ออกกวาดล้างไททัน และคุ้มครองให้ประชาชนทุกคนหนีไปยังวอลล์ชีนา กำแพงชั้นสุดท้ายให้ได้ ในเหตุการณ์ครั้งนี้ทำให้ทหารฝึกหัดจำนวนมากต้องเสียชีวิตลงมากมาย รวมทั้งเอเรนที่ถูกไททันกินเข้าไปเพื่อช่วยเหลือเพื่อนของเขาอาร์มิน แต่เอเรนก็รอดตายมาได้ เพราะพลังบางอย่างที่สามารถแปลงร่างเป็นไททันที่เขาเองก็ไม่รู้ที่มาที่ไป"),
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