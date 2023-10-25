import 'package:flutter/material.dart';
import 'package:sayfa_gecisleri/pages/sayfa_b.dart';

class SayfaA extends StatefulWidget {

  const SayfaA({super.key});

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hesap Oluştur"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("resimler/hesap_resim.png"),
          const Padding(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Text(
              "Tek adımda kolayca hesap oluşturun. Bilgilerinizi kaydederek yolculuklarınızı kişiselleştirin. Tek bir kullanıcı hesabı ile tüm cihazlarınızda senkron kalın.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(
            height: 40,
            width: 200,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
              ),
              child: const Text("Rota Oluştur"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SayfaB()));
              },
            ),
          ),
        ],
      ),
    );
  }
}