import 'package:flutter/material.dart';
import 'package:paeiment/pages/agentListe/agentListePage.dart';
import 'package:paeiment/pages/paiementListe/paiementListePage.dart';
import 'package:paeiment/pages/primeListe/primeListePage.dart';

class ListBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Column(
        children: [
          SizedBox(height: 15,),
          _agentCreation(context),
          Divider(color: Colors.black,),
          _paiementCreation(context),
          Divider(color: Colors.black,),
          _primeCreation(context)
        ],
      ),
    );
  }

  Widget _agentCreation(context) {
    return TextButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (ctx) => AgentListePage()));
      },
      child: Text(
        "Liste Agent",
        style: TextStyle(
            fontWeight: FontWeight.w400, fontSize: 25, color: Colors.black),
      ),
    );
  }

  Widget _paiementCreation(context) {
    return TextButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (ctx) => PrimeListePage()));
        },
        child: Text(
          "Liste prime",
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 25, color: Colors.black),
        ));
  }

  Widget _primeCreation(context) {
    return TextButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (ctx) => PaiementListePage()));
        },
        child: Text(
          "Fiche paiement",
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 25, color: Colors.black),
        ));
  }
}
