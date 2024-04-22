import '../navigation/routes.dart';

class AccueilPageCtrl{  
  Routes? valider(String choix){
    if (choix ==1){
      return Routes.agentCreation;
    }
    // if (choix ==2){
    //   return Routes.agentListe;
    // }
    // if (choix ==3){
    //   return Routes.paiementCreation;
    // }
    // if (choix ==4){
    //   return Routes.paiementListe;
    // }
    // if (choix ==5){
    //   return Routes.primeCreation;
    // }
    // if (choix ==6){
    //   return Routes.primeListe;
    // }
    return null;
  }
  void envoyerFormulaire(){
    
  }
}