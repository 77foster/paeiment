import 'package:flutter/material.dart';
import 'package:paeiment/pages/accueil/accueilPage.dart';

class IntroPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_logo(),
              _titre(), SizedBox(
                height:50,
              ), _btnDemarrer(context)],
          ),
        ));
  }

  Widget _logo() {
    return Image.network(
      "https://img.freepik.com/free-photo/3d-render-black-hand-taking-bill-from-wallet_107791-17723.jpg?t=st=1713781352~exp=1713784952~hmac=dfbdbb54923174fff6fdf573466f1a4b1cc26828b5d0b685d1de1dd5427a39de&w=826",
      width: 250,
    );
  }

  Widget _titre() {
    return Text(
      "PAIEMENT",
      style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold
      ),
    );
  }

  Widget _btnDemarrer(context) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (ctx) => AcceuilPage()));
      },
      label: Text("Demarrer",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
      icon: Icon(Icons.send),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          foregroundColor: Colors.black,
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
    );
  }
}