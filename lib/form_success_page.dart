import 'package:flutter/material.dart';


class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});


  @override
  Widget build(BuildContext context) {

    final Map<String, String> args = ModalRoute.of(context)!.settings.arguments
    as Map<String, String>;



    return Scaffold(
      appBar: AppBar(
        title: Text("성공페이지"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Username : ${args['username']}"),
            Text("email : ${args['email']}"),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                }, 
                child: const Text("홈으로 돌아가기")
            )
          ],
        ),
      ),
    );
  }
}
