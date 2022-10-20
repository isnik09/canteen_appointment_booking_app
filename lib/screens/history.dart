import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  static const String id = 'history_page';
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("History"),
    );
  }
}
