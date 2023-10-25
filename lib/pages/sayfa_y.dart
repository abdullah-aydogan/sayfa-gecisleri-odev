import 'package:flutter/material.dart';

class SayfaY extends StatefulWidget {

  const SayfaY({super.key});

  @override
  State<SayfaY> createState() => _SayfaYState();
}

class _SayfaYState extends State<SayfaY> {

  Future<bool> geriDonusButonu(BuildContext context) async {

    Navigator.of(context).popUntil((route) => route.isFirst);
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),
        title: const Text("Uygulama Ekranı"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: WillPopScope(
        onWillPop: () => geriDonusButonu(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("resimler/uygulama_resim.png"),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 24, right: 24),
                child: Text(
                  "Uygulama ekranına hoşgeldiniz.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}