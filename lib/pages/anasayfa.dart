import 'package:flutter/material.dart';
import 'package:sayfa_gecisleri/pages/sayfa_a.dart';
import 'package:sayfa_gecisleri/pages/sayfa_x.dart';

class Anasayfa extends StatefulWidget {

  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anasayfa"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("resimler/otobus_resim.png"),
          const Padding(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Text(
              "Kullanıcı dostu arayüzleri ve yenilenen altyapısı ile \"Otobüsüm Nerede?\", İstanbul'daki yolculuklarınızı daha verimli ve keyifli hale getirmek için gelişiyor.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 40,
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Hesap Oluştur"),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SayfaA()));
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 40,
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("İstanbulkart Yükle"),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SayfaX()));
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}