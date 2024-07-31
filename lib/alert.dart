import 'package:flutter/material.dart';

class AlertPage extends StatefulWidget {
  const AlertPage({super.key});

  @override
  State<AlertPage> createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("alert 입니다"),
      ),
      body: Container(
        child: Center(
          child: TextButton(
            child: const Text("팝업 버튼"),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext con) {
                    return AlertDialog(
                      title: const Text("Dialog Title"),
                      content: Container(
                        child: const Text("내용입니다."),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text("Close"))
                      ],
                    );
                  });
            },
          ),
        ),
      ),
    );
  }
}
