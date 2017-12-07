class Etudiant : Personne {
  var nocaert: String

  init(nom: String, prenom: String, age: Int, nocaert: String) {

       self.nocaert = nocaert

       super.init(nom: nom, prenom: prenom, age: age)

   }

   override func description() {

         print("Nom : " + self.nom)
         print("Prénom : " + self.prenom)
         print("Age : \(self.age)")
         print("nocaert : " + self.nocaert)

    }

}
