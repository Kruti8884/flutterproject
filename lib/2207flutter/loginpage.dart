import 'package:flutter/material.dart';
import 'package:flutterproject/2207flutter/stopwatch.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String xyz = "";
  String abc = "";
  bool isloggedin = false;

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildLoginForm());
  }

  Widget _buildLoginForm() {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: t1,
              decoration: const InputDecoration(
                labelText: 'User Name',
                border: OutlineInputBorder(),
              ),
              validator: (text) => text!.isEmpty ? 'Enter Name' : null,
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: t2,
              decoration: const InputDecoration(
                labelText: 'Email Address',
                border: OutlineInputBorder(),
              ),
              validator: (text) {
                if (text!.isEmpty) {
                  return 'Email cannot be blank';
                }
                final regex =
                    RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
                if (!regex.hasMatch(text)) {
                  return 'Enter valid email address';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: _validateInput,
              child: const Text("Login "),
            ),
          ],
        ),
      ),
    );
  }

  void _validateInput() {
    final form = _formKey.currentState;
    if (form?.validate() == true) {
      xyz = t1.text;
      abc = t2.text;
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (_) => StopwatchExperiemnt(name: xyz, email: abc)));
    } else {
      print('Some values are missing in the form');
    }
  }

  @override
  void dispose() {
    t1.dispose();
    t2.dispose();
    super.dispose();
  }
}