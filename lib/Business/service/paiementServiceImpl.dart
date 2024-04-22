import '../Model/Agents.dart';
import '../Model/paiement.dart';
import '../Model/prime.dart';
import 'paiementService.dart';

class TestPaiementServiceImpl implements PaiementService {
  List<Agents> listAgents = [];
  List<Paiement> listPaiement = [];
  List<Prime> listPrime = [];
  @override
  Future<bool> creerAgent(Agents data) {
    // TODO: implement creerAgent
    listAgents.add(data);
    return Future.value(true);
  }

 
  @override
  Future<bool> creerPaiement(Paiement data) {
    // TODO: implement creerPaiement
    listPaiement.add(data);
    return Future.value(true);
  }

  @override
  Future<bool> creerPrime(Prime data) {
    // TODO: implement creerPrime
    listPrime.add(data);
    return Future.value(true);
  }

  @override
  Future<bool> desactiverAgent(int matricule) {
    // TODO: implement desactiverAgent
    throw UnimplementedError();
  }

  

  @override
  Future<bool> desactiverPaiement(int id) {
    // TODO: implement desactiverPaiement
    throw UnimplementedError();
  }

  @override
  Future<bool> desactiverPrime(int id) {
    // TODO: implement desactiverPrime
    throw UnimplementedError();
  }

  @override
  Future<bool> mettreAjourAgent(int matricule) {
    // TODO: implement mettreAjourAgent
    throw UnimplementedError();
  }

  

  @override
  Future<bool> mettreAjourPrime(int id) {
    // TODO: implement mettreAjourPrime
    throw UnimplementedError();
  }

  @override
  Future<Agents> recupererAgentParId() {
    // TODO: implement recupererAgentParId
    throw UnimplementedError();
  }

  @override
  Future<List<Agents>> recupererListeAgent() {
    return Future.value(listAgents);
  }

  

  @override
  Future<List<Agents>> recupererListePaiement() {
    // TODO: implement recupererListePaiement
    throw UnimplementedError();
  }

  @override
  Future<List<Prime>> recupererListePrime() {
    // TODO: implement recupererListePrime
    throw UnimplementedError();
  }

  @override
  Future<Prime> recupererListePrimeParId(int id) {
    // TODO: implement recupererListePrimeParId
    throw UnimplementedError();
  }

  @override
  Future<Paiement> recupererPaiementParID(int id) {
    // TODO: implement recupererPaiementParID
    throw UnimplementedError();
  }

  @override
  Future<bool> cloturerPaiement(int id) {
    // TODO: implement cloturerPaiement
    throw UnimplementedError();
  }

  }

void main() async {
  var service = TestPaiementServiceImpl();
var agent = Agents(
  matricule: "001", 
  nom: "Blessing", 
  salaireDeBase: 1500);

var agent2 = Agents(
    matricule: "002", 
    nom: "Foster", 
    salaireDeBase: 1200);

var resultat = await service.creerAgent(agent);
var resultat2 =await service.creerAgent(agent2);

var listAgents = await service.recupererListeAgent();

listAgents.forEach((agent){
  print("Agent Nom : ${agent.nom}");
});


}
