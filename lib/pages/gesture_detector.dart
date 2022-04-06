import 'package:flutter/material.dart';

class GestDet extends StatefulWidget {
  static final String id = 'gesture_detector';

  @override
  State<GestDet> createState() => _GestDetState();
}

class _GestDetState extends State<GestDet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            print('clicked text');
          },
          child: Text('press me'),
        ),
      ),
    );
  }
}
