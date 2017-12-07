//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground";
var x = 2;
var prix:Double = 12.56;
print(prix);
print("prix  : "+String(prix));
var nom:String = "p2l";
var prenom:String = "yorkmout";
print(nom+" "+prenom);

func echo1(chaine: String) -> String {
    
    return chaine+" avec "+nom+" "+prenom;
}

print(echo1(chaine: "my frist app"))


func echo2(chaine: String) -> Int {
    return chaine.count;
}

print(echo2(chaine: nom));

var sigles = ["lo07","NF19","IF26"];
print(sigles[1]);
var sigles2 = ["lo07":"dev web","NF19":"admin db","IF26":"dev mobile"];

print(sigles2["IF26"]);
typealias Point = (x:Int, y:Int)
let point1 = Point(x:4,y:6)
let point2 = Point(x:10,y:0)

func fpoint(pointp: Point,pointpp: Point)  -> Point {
    var maxx:Int;
    var maxy:Int;
    if(pointp.x > pointpp.x) {maxx=pointp.x;}
    else {maxx=pointp.x;}
    
    if(pointp.x > pointpp.y) {maxy=pointp.y;}
    else {maxy=pointpp.y;}
    
    var preturn = Point(x:maxx,y:maxy);
    return preturn;
    
}

print(fpoint(pointp: point1, pointpp: point2))
    

