import '../../framework/page.dart';
import '../agentCreation/agentCreationCtrl.dart';
import '../agentCreation/agentCreationPage.dart';
import '../agentListe/agentListePage.dart';
import '../paiementCreation/paiementCreationPage.dart';
import '../paiementListe/paiementListePage.dart';
import '../primeCreation/primeCreationPage.dart';
import '../primeListe/primeListePage.dart';
import 'routes.dart';

Page navigateur (Routes route){
  Page page;
  switch(route){
    case Routes.agentCreation:
      var ctrlP = AgentCreationCtrl();
      page = AgentCreationPage(ctrl: ctrlP);
      break;
    // case Routes.agentListe:
    //   page = AgentListePage();
    //   break;
    // case Routes.paiementCreation:
    //   var ctrlPaie = AgentCreationCtrl();
    //   page = PaiementCreationPage(ctrl: ctrlPaie);
     
    //   break;
    // // case Routes.paiementListe:
    // //   page = PaiementListePage();
    // //   break;
    // // case Routes.primeListe:
    // //   page = PrimeListePage();
    // //   break;
    // case Routes.primeCreation:
    //   page = PrimeListePage();
    //   break;
    
  }
  return page;
}