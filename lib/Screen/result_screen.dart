import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/voting_provider.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final votingProvider = Provider.of<VotingProvider>(context);
    final isTie = votingProvider.isTie;
    final winners = votingProvider.winners;
    final highestVotes = winners.isNotEmpty ? winners.first.votes : 0;
    
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: const Text("Voting Results"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: winners.length,
              itemBuilder: (context, index) {
                final candidate = winners[index];
                return ListTile(
                  title: Text(
                    candidate.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  trailing: Text("Vote : ${candidate.votes}"),
                  subtitle: Text(isTie ? "Tie for Winner" : "Winner"),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              isTie ? "It's a tie!" : "Highest Vote: $highestVotes",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: isTie ? Colors.red : Colors.green,
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
