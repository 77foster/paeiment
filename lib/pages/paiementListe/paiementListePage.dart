import 'package:flutter/material.dart';

class PaiementListePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liste des paies", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
      ),
      body: _listPeriode(),
    );
  }


  Widget _listPeriode() {
    return ListView.builder(
      itemCount: 100,
      shrinkWrap: true,
      itemBuilder: (Ctx, index) {
        return ListTile(
          leading: Text("$index"),
          title: Text("Paiement Numéro ABN-B${index+2}"),
          trailing: Icon(Icons.arrow_right),
        );
      },
    );
  }
}