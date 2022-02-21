//
//  ViewController.swift
//  SuperKahramanKitabi
//
//  Created by yunus oktay on 21.02.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var characters = [String]()
    var charactersImageNamed = [String]()
    var selectedNamed = ""
    var selectedImage = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        characters.append("Aang")
        characters.append("Zuko")
        characters.append("Katara")
        characters.append("Ozai")
        characters.append("Sokka")
        
        //var charactersImage = [UIImage]()
        //charactersImage.append(UIImage(named: "Aang")!)
        
        charactersImageNamed.append("Aang")
        charactersImageNamed.append("Zuko")
        charactersImageNamed.append("Katara")
        charactersImageNamed.append("Ozai")
        charactersImageNamed.append("Sokka")
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = characters[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            characters.remove(at: indexPath.row)
            charactersImageNamed.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedNamed = characters[indexPath.row]
        selectedImage = charactersImageNamed[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedHeroName = selectedNamed
            destinationVC.selectedHeroImageName = selectedImage
        }
    }
    
}

