/*import '../../Utils/zoneSaisie.dart';
import '../../framework/page.dart';
class PaiementCreationPage implements Page{
  String idPaiement = "";
  String matriculeAgent = "";
  String montantPaiement = "";
  String datePaiement = "";
  String moyenPaiement = "";
  String moisPaiement = "";
  String status = "";
  
  @override
  void rendu(){
   print("Création du paiement");
    idPaiement  = zoneSaisie('Numéro du paiement : ');
    matriculeAgent = zoneSaisie("Matricule de l'agent");
    montantPaiement = zoneSaisie("Montant du paiement");
    datePaiement = zoneSaisie("Date du paiement");
    moyenPaiement = zoneSaisie("Methode de paiement");
    moisPaiement = zoneSaisie("Mois de la paie");
    status = zoneSaisie("Statut de la paie");
  }
}*/
import 'package:flutter/material.dart';

class PaiementCreationPage extends StatelessWidget {
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
                  "Nouveau paiement",
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
                _inputText(TextInputType.number, "Montant", "Montant de la paie"),
                SizedBox(
                  width: double.infinity,
                  height: 10,
                ),
                _inputText(TextInputType.datetime, "Date", "Date de la paie"),
                SizedBox(
                  width: double.infinity,
                  height: 10,
                ),
                _inputText(TextInputType.name, "Moyen", "Moyen de la paie"),

                SizedBox(
                  width: double.infinity,
                  height: 10,
                ),
                _inputText(TextInputType.name, "Mois", "Mois de la paie"),
                SizedBox(
                  width: double.infinity,
                  height: 10,
                ),
                _inputText(TextInputType.name, "Statut", "Statut de la paie"),
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
                    "Payer",
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

