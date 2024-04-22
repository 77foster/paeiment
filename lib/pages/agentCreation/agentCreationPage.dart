/*import '../../Utils/zoneSaisie.dart';
import '../../framework/page.dart';
import 'agentCreationCtrl.dart';

class AgentCreationPage implements Page{
  String matricule ="";
  String nom="";
  int tel=0;
  String email="";
  String sexe="";
  int salaireDeBase=0;
  AgentCreationCtrl? ctrl;
  AgentCreationPage({this.ctrl});
  
  @override
  void rendu() {
    // TODO: implement rendu
    print("Ajouter un agent ");
    print("================");

    matricule= zoneSaisie("Matricule :");
    print("Le matricule saisi de l'agent est :$matricule");
    
    matricule= zoneSaisie("Nom :");
    print("Le nom saisi de l'agent est :$nom");
    
    matricule= zoneSaisie("Téléphone :");
    print("Le numéro de téléphone saisi de l'agent est :$tel");
    
    matricule= zoneSaisie("Email :");
    print("L'adresse mail saisi de l'agent est :$email");
    
    matricule= zoneSaisie("Sexe :");
    print("Le sexe saisi de l'agent est :$sexe");
    
    matricule= zoneSaisie("Salaire de base :");
    print("Le salaire de base saisi de l'agent est :$salaireDeBase");
  }
  
}*/

import 'package:flutter/material.dart';

class AgentCreationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _myController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 30),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 10,
                ),
                Text(
                  "Nouvelle Agent",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 20,
                ),
                _inputText(
                    TextInputType.number, "Matricule", "Matricule de l'agent"),
                SizedBox(
                  width: double.infinity,
                  height: 10,
                ),
                _inputText(TextInputType.name, "Nom", "Nom complet de l'agent"),
                SizedBox(
                  width: double.infinity,
                  height: 10,
                ),
                _inputText(TextInputType.name, "Téléphone", "Numéro de téléphone de l'agent"),
                SizedBox(
                  width: double.infinity,
                  height: 10,
                ),
                _inputText(TextInputType.emailAddress, "Email", "Adresse email de l'agent"),
                SizedBox(
                  width: double.infinity,
                  height: 10,
                ),
                _inputText(TextInputType.name, "Sexe", "Genre de l'agent"),

                SizedBox(
                  width: double.infinity,
                  height: 10,
                ),
                _inputText(TextInputType.number, "Salaire de base", "Salaire de base de téléphone de l'agent"),
                SizedBox(
                  width: double.infinity,
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    String text = _myController.text;
                    print(text);
                  },
                  child: Text(
                    "Enregistrer",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 45),
                      backgroundColor: Colors.green,
                      shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _inputText(type, name, hint) {
    return TextField(
      keyboardType: type,
      decoration: InputDecoration(
        labelText: "$name",
        border: OutlineInputBorder(),
        hintText: '$hint',
      ),
    );
  }
}
