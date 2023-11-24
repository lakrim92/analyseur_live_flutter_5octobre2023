import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String motSaisi = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          // Centrer le titre
          child: Text('Analyseur'),
        ),
        // Changer la couleur de la barre d'applications en bleu
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
            child: TextField(
              // configuration de l'apparence de textField
              decoration: InputDecoration(
                hintText: "Entrez votre mot",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
              onChanged: (newValue) {
                // pour metrre a jour notre variable d'etat qui va stocker le mot saisi
                // si on oublie setStable , la variable ne va pas etre changee
                setState(() {
                  motSaisi = newValue;
                  print("Mot saisi : $motSaisi");
                });
              },
            ),
          ),
          motSaisi.length > 0
              ? Text(
                  "mot saisi est : $motSaisi",
                )
              : Text("")
        ],
      ),
    );
  }
}
