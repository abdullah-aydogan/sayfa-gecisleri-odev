import 'package:flutter/material.dart';
import 'package:sayfa_gecisleri/pages/sayfa_y.dart';

class SayfaB extends StatefulWidget {

  const SayfaB({super.key});

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rota Oluştur"),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("resimler/rota_resim.png"),
          const Padding(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Text(
              "İstanbul\'un dilediğiniz noktasından ulaşmak istediğiniz konuma nasıl gidebileceğinizi öğrenin. Hemen şimdi veya ileri bir tarihte yapacağınız yolculuğun detaylarını Otobüsüm Nerede? size söylesin.",
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