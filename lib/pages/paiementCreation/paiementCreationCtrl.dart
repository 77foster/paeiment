class PaiementCreationCtrl {
  String? valider(
      String idPaiement,
      String matriculeAgent,
      String montantPaiement,
      String datePaiement,
      String moyenPaiement,
      String moisPaiement,
      String status) {
    if (idPaiement == "") {
      return "Numéro du paiement obligatoire";
    }
    if (matriculeAgent == "") {
      return "Matricule de l'agent obligatoire";
    }
    if (montantPaiement == "") {
      return "Montant de la paie obligatoire";
    }
    if (datePaiement == "") {
      return "Date du paiement obligatoire";
    }
    if (moyenPaiement == "") {
      return "Méthode du paiement obligatoire";
    }
    if (moisPaiement == "") {
      return "Mois de la paie obligatoire";
    }
    if (status == "") {
      return "Statut de la paie obligatoire";
    }
    return null;
  }

  void envoyerFormulaire() {}
}
