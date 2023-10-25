import 'package:flutter/material.dart';
import 'package:sayfa_gecisleri/pages/sayfa_y.dart';

class SayfaX extends StatefulWidget {

  const SayfaX({super.key});

  @override
  State<SayfaX> createState() => _SayfaXState();
}

class _SayfaXState extends State<SayfaX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("İstanbulkart Yükle"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("resimler/kart_resim.png"),
          const Padding(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Text(
              "Bulunduğunuz konuma en yakın İstanbulkart dolum noktalarını görün. Harita üzerinden inceleyin ve gitmek istediğiniz dolum noktasına yol tarifi alın.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(
            height: 40,
            width: 200,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: const Text("Uygulamayı Aç"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SayfaY()));
              },
            ),
          ),
        ],
      ),
    );
  }
}