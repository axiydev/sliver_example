import 'package:flutter/material.dart';

class ListWheelPage extends StatefulWidget {
  static const String route = '/list_wheel';
  const ListWheelPage({super.key});

  @override
  State<ListWheelPage> createState() => _ListWheelPageState();
}

class _ListWheelPageState extends State<ListWheelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListWheelScrollView(
        diameterRatio: 1,
        offAxisFraction: 0,
        itemExtent: 100,
        useMagnifier: true,
        children: [
          for (var i = 0; i < 200; i++)
            Container(
              width: double.infinity,
              color: Colors.red,
              child: Text('index $i'),
            ),
        ],
      ),
    );
  }
}
