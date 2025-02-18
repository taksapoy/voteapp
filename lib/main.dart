import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:voteapp/Provider/voting_provider.dart';
import 'package:voteapp/into.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => VotingProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
      home: IntroPage(),
      ),
    );
  }
}
