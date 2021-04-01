import 'package:flutter/material.dart';

// Untuk Tubuh
// ignore: camel_case_types
class bodi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const ukuran = TextStyle(fontSize: 20);
    return ListView(
      padding: const EdgeInsets.all(32.0),
      children: <Widget>[
        Container(
            height: 400,
            width: 200,
            margin: EdgeInsets.all(20),
            child: Image.asset("images/risqi.jpg")),
        Text("NAMA    : Ahmad Risqi Suaidi", style: ukuran),
        Text("TTL     : Sidoarjo, 14 September 2001", style: ukuran),
        Text("NIPP    : 20.20.04037", style: ukuran),
        Text(
          "JURUSAN : Teknik Informatika, Pemrograman dan Desain Web",
          style: ukuran,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.purple),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        title: const Text("Congratulations!"),
                        content: const Text("WELCOME Mr.Risqi"),
                        actions: <Widget>[
                          TextButton(
                              onPressed: () => Navigator.pop(context, "Batal"),
                              child: const Text("Batal")),
                          TextButton(
                              onPressed: () => Navigator.pop(context, "Ya"),
                              child: const Text("ya")),
                        ],
                      )).then((returnVal) {
                if (returnVal != null) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Kamu Klik $returnVal"),
                    action: SnackBarAction(
                      label: "Exit",
                      onPressed: () {},
                    ),
                  ));
                }
              });
            },
            child: const Text("Click Here", style: ukuran))
      ],
    );
  }
}
