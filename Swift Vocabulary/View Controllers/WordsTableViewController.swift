//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Lambda_School_Loaner_263 on 5/24/20.
//  Copyright © 2020 Lambda_School_Loaner_263. All rights reserved.
//

import UIKit

@IBDesignable
class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Apple", definition: "The usually round, red or yellow, edible fruit of a small tree, Malus sylvestris, of the rose family."),
                                        VocabularyWord(word: "Pear", definition: "The edible fruit, typically rounded but elongated and growing smaller toward the stem, of a tree, Pyrus communis, of the rose family."),
                                        VocabularyWord(word: "Pomegranate", definition: "A chambered, many-seeded, globose fruit, having a tough, usually red rind and surmounted by a crown of calyx lobes, the edible portion consisting of pleasantly acid flesh developed from the outer seed coat."),
                                        VocabularyWord(word: "Strawberry", definition: "The fruit of any stemless plant belonging to the genus Fragaria, of the rose family, consisting of an enlarged fleshy receptacle bearing achenes on its exterior.")]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Swift Vocabulary"
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        let vocabWord = vocabWords[indexPath.row]
        
        cell.textLabel?.text = vocabWord.word

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Check the segue identifier to know which view controller you are segueing to
        if segue.identifier == "ShowDefinitionSegue" {
        
            // Get the new view controller using segue.destination.
            guard let detailVC = segue.destination as? DefinitionViewController,
                let indexPath = tableView.indexPathForSelectedRow else { return }
            
            // Get the information you want to pass to the new view controller
                
                let vocabWord = vocabWords[indexPath.row]
                
                // Pass the selected object to the new view controller.
                detailVC.vocabWord = vocabWord
    
    

}
}
}
