class PrimeCreationCtrl {
  String? valider(String id, String type, String montant) {
    if (id == "") {
      return "Numéro de la prime obligatoire";
    }
    if (type == "") {
      return "Type de la prime obligatoire";
    }
    if (montant == "") {
      return "Montant de la prime obligatoire";
    }
    return null;
  }
  
}
