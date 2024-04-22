import 'package:flutter/material.dart';

class PrimeCreationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _myController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: 10,
            ),
            Text(
              "Nouvelle Prime",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: double.infinity,
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Numéro",
                border: OutlineInputBorder(),
                hintText: 'Numéro de la prime',
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Type",
                border: OutlineInputBorder(),
                hintText: 'Type de la prime',
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 20,
            ),
            TextField(
              onChanged: (value){
                print(value);
              },
              controller: _myController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Montant",
                border: OutlineInputBorder(),
                hintText: 'Montant de la prime',
              ),
            ),
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
                  "Créer",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),

                style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 45),
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero)),

            )
          ],
        ),
      ),
    );
  }
}
