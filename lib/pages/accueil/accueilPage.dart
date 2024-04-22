/*import '../../Utils/zoneSaisie.dart';
import '../../framework/page.dart';
import '../navigation/navigateur.dart';
import 'accueilCtrl.dart';

class AccueilPage implements Page{
  AccueilPageCtrl? ctrl;
  AccueilPage({this.ctrl});

  @override
  void rendu() {
    print("Menu Principal");
    print("==============");
    print("1. Créer un agent");
    print("2. Liste des agents");
    print("3. Créer un paiement");
    print("4. Liste des Paiements");
    print("5. Créer une prime");
    print("6. Liste des primes");

    var choix = zoneSaisie("Faire un choix :  ");
  }
  var route = ctrl?.valider(choix);
  
    if(route!=null){
      navigateur(route).rendu();
    }
  }
}*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:paeiment/pages/pageBar/homeBar.dart';
import 'package:paeiment/pages/pageBar/listBar.dart';

class AcceuilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNavigation(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text(
        "Home",
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      backgroundColor: Colors.green,
      foregroundColor: Colors.black,
    );
  }
}

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  final List<String> _titre = ["Home", "Liste"];
  final List<Widget> _list = [HomeBar(), ListBar()];

  @override
  void _envoiPage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${_titre[_currentIndex]}",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.green,
      ),
      body: _list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Liste',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        onTap: _envoiPage,
        elevation:1,
        backgroundColor: Color.fromRGBO(199, 255, 202, 100),
      ),
    );
  }
}
