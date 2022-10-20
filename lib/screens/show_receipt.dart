import 'package:flutter/material.dart';

class ReceiptPage extends StatefulWidget {
  static const String id = 'receipt_page';
  const ReceiptPage({super.key});

  @override
  State<ReceiptPage> createState() => _ReceiptPageState();
}

class _ReceiptPageState extends State<ReceiptPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Show Receipt"),
    );
  }
}
