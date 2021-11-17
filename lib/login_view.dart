import 'package:flutter/material.dart';
import 'package:flutter_splashscreen/constants.dart';
import 'package:flutter_splashscreen/hitungnilai.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPalette.primaryColor,
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  _iconLogin(),
                  _textField(),
                  _buildButton(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _iconLogin() {
    return Image.asset(
      "lib/images/book.png",
      width: 150.0,
      height: 150.0,
    );
  }

  Widget _textField() {
    return Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          decoration: const InputDecoration(
            icon: Icon(
              Icons.person,
              color: Color(0xff000080),
            ),
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField,
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff000080),
                width: 3.0,
              ),
            ),
            hintText: "E-mail",
            hintStyle: TextStyle(color: ColorPalette.hintColor),
          ),
          style: const TextStyle(color: Color(0xff000080)),
          autofocus: false,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          decoration: const InputDecoration(
            icon: Icon(
              Icons.lock_outlined,
              color: Color(0xff000080),
            ),
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField,
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff000080),
                width: 3.0,
              ),
            ),
            hintText: "Password",
            hintStyle: TextStyle(color: ColorPalette.hintColor),
          ),
          style: const TextStyle(color: Color(0xff000080)),
          obscureText: true,
          autofocus: false,
        ),
      ],
    );
  }

  Widget _buildButton(BuildContext context) {
    return Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        // ignore: deprecated_member_use
        FlatButton(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            width: double.infinity,
            child: const Text(
              'Login',
              style: TextStyle(color: Color(0xffff8080)),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              color: Color(0xff000080),
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const hitungnilai(),
                ));
          },
        ),
      ],
    );
  }
}
