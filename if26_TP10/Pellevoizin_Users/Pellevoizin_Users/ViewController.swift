//
//  ViewController.swift
//  Pellevoizin_Users
//
//  Created by Admin on 04/12/2017.
//  Copyright © 2017 utt.fr. All rights reserved.
//

import UIKit
import SQLite
class ViewController: UIViewController {
    var database: Connection!

    let usersTable = Table("users")
    let id = Expression<Int>("id")
    let name = Expression<String>("name")
    let email = Expression<String>("email")

    //let name = Expression<String?> le ? signige que l'attribut n'est poas obligatoire (nullable)

    @IBOutlet weak var createTable: UIButton!
    
    @IBAction func createTable(_ sender: UIButton) {
        print("create table")
        let createTable = self.usersTable.create { (table) in
            table.column(self.id, primaryKey: true)
            table.column(self.name)
            table.column(self.email, unique: true)

        }
        
        do{
            try self.database.run(createTable)
            print("created table")
        }
        catch
        {
            print(error)
        }
    }
    
    
    
    
    
    
    @IBAction func insertUser(_ sender: UIButton) {
        print("Bouton insert")
        let alert = UIAlertController(title:"Insert User", message:nil,preferredStyle:.alert)
        alert.addTextField{(tf) in tf.placeholder="Name"}
        alert.addTextField{(tf) in tf.placeholder="Email"}
        let action = UIAlertAction(title:"Submit",style:.default){(_)
        in guard
            let name = alert.textFields?.first?.text,
            let email = alert.textFields?.last?.text
        else { return }
        print(name)
        print(email)
        let insertUser = self.usersTable.insert(self.name <- name, self.email <- email)
        do{
                try self.database.run(insertUser)
                print("INSERTED USER")
        }
        catch
        {
            print(error)
        }
    
     
     }
     alert.addAction(action)
     present(alert,animated: true,completion: nil)
     }
    
    @IBAction func listUser(_ sender: UIButton) {
        print("list user")
        do{
            let users = try self.database.prepare(self.usersTable)
            for user in users{
                print("userID  \(user[self.id]), name : \(user[self.name]), email : \(user[self.email])")
                
            }
        }
        catch{
            print(error)
        }
        
    }
    
    @IBAction func updateUser(_ sender: UIButton) {
        print("update user")
        let alert = UIAlertController(title:"Insert User", message:nil,preferredStyle:.alert)
        alert.addTextField{(tf) in tf.placeholder="User ID"}
        alert.addTextField{(tf) in tf.placeholder="Email"}
        let action = UIAlertAction(title:"Submit",style:.default){ (_) in
            guard
                let userIdStrind = alert.textFields?.first?.text,
                let userID = Int(userIdStrind),
                let email = alert.textFields?.last?.text
                else {  return }
            print(email)
            print(userID)
            let user = self.usersTable.filter(self.id == userID)
            let updateUser = user.update(self.email <- email )
            do{
                try self.database.run(updateUser)
                print("updated")
            }catch
            {
                print(error)
                print("___________________________________________________")
            }
        //let updateUser = self.usersTable.update(email)

        }
        alert.addAction(action)
        present(alert,animated: true,completion: nil)
    }
    
    @IBAction func deleteUser(_ sender: UIButton) {
        print("delete user")
        print("update user")
        let alert = UIAlertController(title:"Insert User", message:nil,preferredStyle:.alert)
        alert.addTextField{(tf) in tf.placeholder="Id"}
        let action = UIAlertAction(title:"Submit",style:.default){(_)
        in guard
            let id = alert.textFields?.last?.text
        else { return }
        print(id)
        }
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            let documentDirectory = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            let fileUrl = documentDirectory.appendingPathComponent("users").appendingPathExtension("sqlite3")
            let database = try Connection(fileUrl.path)
            self.database = database
            
        }
        catch{
            print(error)
        }
              // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

