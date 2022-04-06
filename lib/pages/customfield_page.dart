import 'package:flutter/material.dart';

class CustomFieldPage extends StatefulWidget {
  static final String id = 'customfield_page';

  @override
  State<CustomFieldPage> createState() => _CustomFieldPageState();
}

class _CustomFieldPageState extends State<CustomFieldPage> {
  final _formKey = GlobalKey<FormState>();
  late String _email, _password;
void _doSingUp(){
  if(_formKey.currentState!.validate()){
    _formKey.currentState!.save();
    print('WELCOME');
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter course'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                validator: (input) =>
                    input!.contains('@') ? 'please enter valid email' : null,
                onSaved: (input) => _email = input!,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                validator: (input) =>
                    input!.length < 6 ? 'Must be at least 6 character' : null,
                onSaved: (input) => _email = input!,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {_doSingUp();},
              child: Text('Sign up'),
            ),
          ],
        ),
      ),
    );
  }
}
