import 'package:flutter/material.dart';
import 'package:flutter_splashscreen/constants.dart';
import 'package:flutter_splashscreen/hasil.dart';

class hitungnilai extends StatefulWidget {
  const hitungnilai({Key? key}) : super(key: key);

  @override
  _hitungnilaiState createState() => _hitungnilaiState();
}

class _hitungnilaiState extends State<hitungnilai> {
  var nama;
  double tugas = 0;
  double uts = 0;
  double uas = 0;

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
                  _logo(),
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

  Widget _logo() {
    return Image.asset(
      "lib/images/book.png",
      width: 150.0,
      height: 150.0,
    );
  }

  Widget _textField() {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          decoration: const InputDecoration(
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
            hintText: "Nama",
            hintStyle: TextStyle(color: ColorPalette.hintColor),
          ),
          onChanged: (str) {
            setState(() {
              nama = str;
              print(nama);
            });
          },
          keyboardType: TextInputType.text,
          style: const TextStyle(color: Color(0xff000080)),
          autofocus: false,
        ),
        TextFormField(
          decoration: const InputDecoration(
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
            hintText: "Tugas",
            hintStyle: TextStyle(color: ColorPalette.hintColor),
          ),
          onChanged: (txt) {
            setState(() {
              tugas = double.parse(txt);
            });
          },
          keyboardType: TextInputType.number,
          style: const TextStyle(color: Color(0xff000080)),
          autofocus: false,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          decoration: const InputDecoration(
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
            hintText: "UTS",
            hintStyle: TextStyle(color: ColorPalette.hintColor),
          ),
          onChanged: (txt) {
            setState(() {
              uts = double.parse(txt);
            });
          },
          keyboardType: TextInputType.number,
          style: const TextStyle(color: Color(0xff000080)),
          autofocus: false,
        ),
        TextFormField(
          decoration: const InputDecoration(
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
            hintText: "UAS",
            hintStyle: TextStyle(color: ColorPalette.hintColor),
          ),
          onChanged: (txt) {
            setState(() {
              uas = double.parse(txt);
            });
          },
          keyboardType: TextInputType.number,
          style: const TextStyle(color: Color(0xff000080)),
          obscureText: false,
          autofocus: false,
        ),
        Container()
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
              'Hitung',
              style: TextStyle(color: Color(0xffff8080)),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              color: Color(0xff000080),
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          onPressed: () {
            var route = new MaterialPageRoute(
              builder: (BuildContext) => new Hasil(
                  input_nama: nama,
                  input_tugas: tugas,
                  input_uts: uts,
                  input_uas: uas),
            );
            Navigator.of(context).push(route);
          },
        ),
      ],
    );
  }
}
