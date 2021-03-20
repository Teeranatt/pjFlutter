import 'package:flutter/material.dart';
import 'package:myapp1/favoriteB.dart';
import 'package:myapp1/main.dart';

class firstPage extends StatefulWidget {
  @override
  _firstPageState createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: Text("Overlord"),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              child: Column(children: <Widget>[
                Image.asset(
                  'images/overlord.jpg',
                  height: 300,
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 270, left: 30, right: 30),
              child: Column(
                children: [
                  Text("overlord"),
                  Text(""),
                  
                  Text(
                      "เรื่องย่อ : เรื่องราวในปี ค.ศ. 2126 ของเกมเมอร์ผู้คลั่งไคล้เกม RPG ออนไลน์คนหนึ่ง หลังจากเขาและเพื่อนๆ ได้ร่วมกันสร้างความยิ่งใหญ่ในโลกของเกม DMMO-RPG (Dive Massively Multiplayer Online Role Playing Game) ชื่อดังอย่าง Yggdrasil จนเมื่อเวลาผ่านไป 12 ปี เกมที่ครั้งหนึ่งเคยโด่งดังก็ถึงคราวที่เซิร์ฟเวอร์ต้องปิดตัวลง เขาจึงกลับมาออนไลน์ยังโลกเสมือนเพื่อรำลึกความหลังกับเหล่ามรดกความทรงจำที่ทุกคนร่วมกันสร้างเป็นครั้งสุดท้าย "),
                  Image.asset(
                    'images/overlord.jpg',
                    height: 200,
                  ),
                  Text(
                      "แต่แล้วเมื่อเซิร์ฟเวอร์จะถูกปิดตัวลง สิ่งที่ไม่คาดคิดกลับเกิดขึ้น เพราะโลกเสมือนภายในเกมยังคงดำเนินต่อไป และเขาได้หลุดเข้าไปในตัวละครของจอมมาร Ainz Ooal Gown หรือ โมมอนกะ (Momonga) หัวหน้ากิลด์ผู้ครอบครอง มหาสุสานแห่งซาริค ซึ่งเป็นฐานที่มั่นที่แข็งแกรงที่สุดและยังคงอยู่จนถึง ณ ขณะนั้น นอกจากนี้โมมอนกะยังพบความผิดปกติที่น่าสนใจ เมื่อเหล่า NPC ที่ครั้งหนึ่งเคยอยู่ใต้อาณัติการควบคุมของโปรแกรมกลับมีความรู้สึกนึกคิดและมีชีวิตเป็นของตัวเองขึ้นมา ทั้งนี้ทั้งนั้นความเป็นตัวตนของตัวละคร NPC แต่ละตัวก็ยังคงเอกลักษณ์ของรูปแบบคำสั่งเดิมที่ต่างจงรักภักดีต่อเขา"),
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
