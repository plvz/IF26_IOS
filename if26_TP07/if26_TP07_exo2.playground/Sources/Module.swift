import Resultat
class Module{

  var sigle: String
  var categorie: String
  var credit: Int
  var resultat: Resultat

  init(sigle: String, categorie: String, credit: Int, resultat: Resultat)
  {
    self.sigle = sigle
    self.categorie = categorie
    self.credit = credit
    self.resultat = resultat
  }

  init()
  {
    self.sigle = "sigle"
    self.categorie = "categorie"
    self.credit = 4
    self.resultat = "A"
  }
}
