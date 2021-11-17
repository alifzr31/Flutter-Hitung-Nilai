import 'package:flutter/material.dart';
import 'package:flutter_splashscreen/constants.dart';

class Hasil extends StatelessWidget {
  final String input_nama;
  final double input_tugas;
  final double input_uts;
  final double input_uas;

  const Hasil({
    Key? key,
    required this.input_nama,
    required this.input_tugas,
    required this.input_uts,
    required this.input_uas,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double hasil =
        ((input_tugas * 0.25) + (input_uts * 0.25) + (input_uas * 0.40));
    double total_hasil = (input_tugas + input_uts + input_uas);
    String nilai_akhir = "";
    if (hasil <= 100 && hasil >= 85) {
      nilai_akhir = "A";
    } else if (hasil < 85 && hasil >= 80) {
      nilai_akhir = "AB";
    } else if (hasil < 80 && hasil >= 75) {
      nilai_akhir = "B";
    } else if (hasil < 75 && hasil >= 70) {
      nilai_akhir = "BC";
    } else if (hasil < 70 && hasil >= 60) {
      nilai_akhir = "C";
    } else if (hasil < 60 && hasil >= 50) {
      nilai_akhir = "CD";
    } else if (hasil < 50 && hasil >= 40) {
      nilai_akhir = "D";
    } else if (hasil < 40 && hasil >= 0) {
      nilai_akhir = "E";
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Nilai Anda"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30),
            Text(
              "$input_nama",
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 2,
              ),
            ),
            Text(
              "Nilai Tugas : $input_tugas",
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 2,
              ),
            ),
            Text(
              "Nilai UTS : $input_uts",
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 2,
              ),
            ),
            Text(
              "Nilai UAS : $input_uas",
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 30),
            Text("Maka ",
                style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 1,
                )),
            Text(
              "Nilai Total : $total_hasil",
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 2,
              ),
            ),
            Text(
              "Nilai Akhir : $hasil",
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 2,
              ),
            ),
            Text(
              "Nilai Akhir : $nilai_akhir",
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
