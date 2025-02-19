// candidate_detail.dart
import 'package:flutter/material.dart';

class CandidateDetail extends StatelessWidget {
  final int candidateIndex;

  const CandidateDetail({super.key, required this.candidateIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: Text('Candidate Details'),
        backgroundColor: Colors.pink[100],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _getCandidateDetails(candidateIndex),
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  String _getCandidateDetails(int index) {
    switch (index) {
      case 0:
        return 'Candidate 1\n\nพรรคเลิกโสดแห่งชาติ\n\nนโยบาย\n"คนโสดรับเงินเยียวยา หาคู่ให้ฟรี สมัครเดตครั้งแรกมีเงินสนับสนุน อกหักได้วันลาพิเศษ"';
      case 1:
        return 'Candidate 2\n\nพรรคไม่ทำงานแต่ได้เงิน\n\nนโยบาย\n"เงินเดือนออกทุกต้นเดือนโดยไม่ต้องทำงาน ประชาชนทุกคนได้โบนัสปีละ 4 ครั้ง กาแฟฟรีทุกเช้า Wi-Fi แรงทุกพื้นที่ วันจันทร์เป็นวันหยุดแห่งชาติ"';
      case 2:
        return 'Candidate 3\n\nพรรคหลบงานการเมือง\n\nนโยบาย\n"ทำงานแค่ครึ่งวัน ที่เหลือเป็นเวลาพักผ่อน เพิ่มวันหยุดทุกวันศุกร์ แถมงีบได้วันละ 2 รอบ"';
      case 3:
        return 'Candidate 4\n\nพรรคกินก่อน ค่อยคิดทีหลัง\n\nนโยบาย\n"ข้าวฟรีทุกมื้อ บุฟเฟ่ต์ทุกเขต ไก่ทอดราคา 5 บาท ห้ามใครอดเพราะท้องร้องมันดัง"';
      default:
        return '';
    }
  }
}
