import 'package:flutter/material.dart';

class Accounts extends StatefulWidget {
  const Accounts({Key? key}) : super(key: key);

  @override
  State<Accounts> createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accounts'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // Handle the click for the first account
                print('First account clicked');
              },
              child: Container(
                width: 200,
                height: 50,
                color: Colors.blue,
                alignment: Alignment.center,
                child: Text(
                  'First Account',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20), // Add spacing between accounts
            GestureDetector(
              onTap: () {
                // Handle the click for the second account
                print('Second account clicked');
              },
              child: Container(
                width: 200,
                height: 50,
                color: Colors.blue,
                alignment: Alignment.center,
                child: Text(
                  'Second Account',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
