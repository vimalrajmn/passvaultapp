import 'package:flutter/material.dart';

class Tools extends StatefulWidget {
  const Tools({super.key});

  @override
  State<Tools> createState() => _ToolsState();
}

class _ToolsState extends State<Tools> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tools'),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          myBox('1pass'),
          myBox('BitWarden'),
          myBox('Dashlane'),
          myBox('Nordpass'),
          myBox('Lastpass'),
          myBox('Keeper'),
        ],
      ),
    );
  }
}

Widget myBox(String index) {
  return Container(
    margin: const EdgeInsets.all(8),
    color: Colors.blue,
    alignment: Alignment.center,
    child: Text(index),
  );
}
