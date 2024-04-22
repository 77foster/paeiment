import 'package:flutter/material.dart';
import 'package:paeiment/pages/agentCreation/agentCreationPage.dart';
import 'package:paeiment/pages/paiementCreation/paiementCreationPage.dart';
import 'package:paeiment/pages/primeCreation/primeCreationPage.dart';

class HomeBar extends StatelessWidget {
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
        Navigator.push(context, MaterialPageRoute(builder: (ctx) => AgentCreationPage()));
      },
      child: Text(
        "Enregistrement Agent",
        style: TextStyle(
            fontWeight: FontWeight.w400, fontSize: 25, color: Colors.black),
      ),
    );
  }

  Widget _paiementCreation(context) {
    return TextButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (ctx) => PrimeCreationPage()));
        },
        child: Text(
          "Nouvelle prime",
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 25, color: Colors.black),
        ));
  }

  Widget _primeCreation(context) {
    return TextButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (ctx) => PaiementCreationPage()));
        },
        child: Text(
          "Nouveau paiement",
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 25, color: Colors.black),
        ));
  }
}
