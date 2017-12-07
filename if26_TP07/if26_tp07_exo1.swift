class Personne {

    var nom: String
    var prenom: String
    var age: Int

    init()
    {
    self.nom = "Jean"
    self.prenom= "Pierre"
    self.age = 18
    }

    init(nom: String, prenom: String, age: Int)
    {
    self.nom = nom
    self.prenom= prenom
    self.age = age
    }

    func isAdult() -> Bool {

      return age > 18
    }

    func description() {

      print("Nom : " + self.nom)
      print("Prénom : " + self.prenom)
      print("Age : \(self.age)")

  }


}
