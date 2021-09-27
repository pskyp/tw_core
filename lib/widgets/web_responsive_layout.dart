import 'package:flutter/material.dart';

class WebResponsiveLayout extends StatelessWidget {
  final Widget child;
  const WebResponsiveLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    if (width < 800 || height < 700)
      return MaterialApp(
        home: Scaffold(
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.warning_amber_rounded, color: Colors.red),
                SizedBox(width: 8),
                Text("Please maximize your browser")
              ],
            ),
          ),
        ),
      );

    return Center(
      child: Container(
        width: size.width * 0.6,
        child: child,
      ),
    );
  }
}
