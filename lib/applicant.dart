import 'package:flutter/material.dart';
import 'candidate_detail.dart';
import 'package:voteapp/Screen/voting_screen.dart';

class Applicant extends StatelessWidget {
  const Applicant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (int i = 0; i < 4; i++) ...[
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CandidateDetail(candidateIndex: i),
                    ),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 80,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Text(
                      _getCandidateInfo(i),
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
              ],
              GestureDetector(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const VotingScreen()),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: const Text(
                    "Click To Vote",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  String _getCandidateInfo(int index) {
    switch (index) {
      case 0:
        return 'Candidate 1\nพรรคเลิกโสดแห่งชาติ';
      case 1:
        return 'Candidate 2\nพรรคไม่ทำงานแต่ได้เงิน';
      case 2:
        return 'Candidate 3\nพรรคหลบงานการเมือง';
      case 3:
        return 'Candidate 4\nพรรคกินก่อน ค่อยคิดทีหลัง';
      default:
        return '';
    }
  }
}

