//
//  UserData.swift
//  FlagQuiz
//
//  Created by Buse Karabıyık on 4.08.2023.
//

import UIKit
import CoreData

struct UserDataManager {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    
    func manageData(name: String) {
        let entity = NSEntityDescription.entity(forEntityName: "User", in: context)
        let newUser = NSManagedObject(entity: entity!, insertInto: context)
        
        newUser.setValue(name, forKey: "name")
        
        do {
           try context.save()
          } catch {
           print("Failed saving")
        }
    }
    
    func fetchUserName() -> String? {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        request.returnsObjectsAsFaults = false
        do {
            let result = try context.fetch(request)
            if let firstUser = result.first as? NSManagedObject {
                if let name = firstUser.value(forKey: "name") as? String {
                    return name
                }
            }
        } catch {
            print("Failed to fetch data")
        }
        return nil
    }
    
    func changeUserScore(newScore: Int) {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        request.returnsObjectsAsFaults = false
        do {
            let result = try context.fetch(request)
            if let firstUser = result.first as? NSManagedObject {
                firstUser.setValue(newScore, forKey: "bestScore")
                try context.save()
            } 
        } catch {
            print("Failed to change user score: \(error)")
        }
    }
    
    func fetchBestScore() -> Int? {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        request.returnsObjectsAsFaults = false
        do {
            let result = try context.fetch(request)
            if let firstUser = result.first as? NSManagedObject {
                if let bestScore = firstUser.value(forKey: "bestScore") as? Int {
                    return bestScore
                }
            }
        } catch {
            print("Failed to fetch data")
        }
        return nil
    }

}

