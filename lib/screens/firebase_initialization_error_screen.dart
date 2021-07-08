import 'package:flutter/material.dart';

class FirebaseInitializationError extends StatelessWidget {
  const FirebaseInitializationError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Could not connect to backend'),
      ),
    );
  }
}
