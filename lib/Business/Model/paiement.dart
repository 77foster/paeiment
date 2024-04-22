class Paiement {
    int idPaiement ;
    String matriculeAgent ;
    int montantPaiement ;
    DateTime datePaiement ;
    String moyenPaiement;
    String moisPaiement;
    bool status;

// le constructeur    
  
  Paiement ({
        this.idPaiement =0,
        this.matriculeAgent="",
        this.montantPaiement=0,
        this.moyenPaiement="",
        this.moisPaiement="",
        required this.datePaiement,
        this.status=true,
    });

}
