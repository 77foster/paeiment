class AgentCreationCtrl{
String? valider( String matricule,String nom,int tel,String email,String sexe,int salaireDeBase){
  if (matricule == "") {
      return "Matricule obligatoire";
    }
    if (nom == "") {
      return "Nom de l'agent obligatoire";
    }
    if (tel == "") {
      return "Numéro de téléphone obligatoire";
    }
    if (email == "") {
      return "Adresse mail obligatoire";
    }
    if (sexe == "") {
      return "Sexe obligatoire";
    }
    if (salaireDeBase== "") {
      return "Salaire de base obligatoire";
    }
    return null;
  }
  void envoyerFormulaire(){}

void main(){
  var ctrl = AgentCreationCtrl();
  var resultat = ctrl.valider("","",0,"","",0);
  print("Resultat de la validation: $resultat");
}
}