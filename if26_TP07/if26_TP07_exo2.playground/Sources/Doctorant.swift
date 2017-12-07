class Doctorant : Etudiant {
var thése: String
init(nom: String, prenom: String, age: Int, nocaert: String, thése: String) {

     self.thése = thése

     super.init(nom: nom, prenom: prenom, age: age, nocaert: nocaert)

 }

 override func description() {

       print("Nom : " + self.nom)
       print("Prénom : " + self.prenom)
       print("Age : \(self.age)")
       print("nocaert : " + self.nocaert)
       print("thése : " + self.thése)


  }


}
