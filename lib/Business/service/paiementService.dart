import '../Model/Agents.dart';
import '../Model/paiement.dart';
import '../Model/prime.dart';

abstract class PaiementService {
  //agents
  Future<bool> creerAgent(Agents data);
  Future<List<Agents>> recupererListeAgent();
  Future<Agents>recupererAgentParId();
  Future <bool> mettreAjourAgent(int matricule);
  Future <bool> desactiverAgent(int matricule);

  //Paiement
  Future <bool> creerPaiement(Paiement data);
  Future <List<Agents>>recupererListePaiement();
  Future <Paiement> recupererPaiementParID(int id);
  Future <bool> desactiverPaiement(int id);
  Future <bool> cloturerPaiement(int id);

  //Prime
  Future <bool> creerPrime(Prime data);
  Future <List<Prime>> recupererListePrime();
  Future <Prime> recupererListePrimeParId(int id);
  Future <bool> mettreAjourPrime(int id);
  Future <bool> desactiverPrime(int id);

    
}
