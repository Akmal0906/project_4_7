import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  static final String id = 'textfield_page';

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter Course'),
      ),
      backgroundColor: Colors.grey,
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'phone',
                  hintStyle: TextStyle(color: Colors.red),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.phone_android,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'email',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
