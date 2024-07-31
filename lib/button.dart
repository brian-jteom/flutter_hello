import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key});

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("버튼페이지"),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow
                ),
                onPressed: () { print("ElevatedButton click"); },
                child: Text("ElevatedButton 버튼"),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () { print("TextButton click"); },
                child: Text("TextButton 버튼"),
              ),
            ),
            Center(
              child: OutlinedButton(
                onPressed: () { print("OutlinedButton click"); },
                child: Text("OutlinedButton 버튼"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
