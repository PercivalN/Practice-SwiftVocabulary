//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Lambda_School_Loaner_263 on 5/24/20.
//  Copyright © 2020 Lambda_School_Loaner_263. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord? 
    
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    @IBOutlet weak var addButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        setViews()
        printAllFonts()
    }
    
    func updateViews() {
        
        guard let word = vocabWord else { return }
        wordLabel.text = word.word
        definitionTextView.text = word.definition
    }
    
    func setViews() {
        
        wordLabel.textColor = .red
        wordLabel.font = UIFont(name: "BradleyHandITCTT-Bold", size: 35)
        definitionTextView.font = UIFont(name: "BradleyHandITCTT-Bold", size: 12)
        
        addButton.setTitle("Add Word", for: .normal)
        self.addButton.backgroundColor = .red
    }
    
    func printAllFonts() {
        
        for familyName in UIFont.familyNames {
            print(UIFont.fontNames(forFamilyName: familyName))
        }
    }
    
    @IBAction func addButton(_ sender: Any) {
        let alert = UIAlertController(title: "Alert", message: "This is the messsage", preferredStyle: .alert)
        
        let action1 = UIAlertAction(title: "Default", style: .default) { (action:UIAlertAction) in
            print("You've pressed default");
        }

//        let action2 = UIAlertAction(title: "Cancel", style: .cancel) { (action:UIAlertAction) in
//            print("You've pressed cancel");
//        }
//
//        let action3 = UIAlertAction(title: "Destructive", style: .destructive) { (action:UIAlertAction) in
//            print("You've pressed the destructive");
//        }
        
        alert.addAction(action1)
        
        self.present(alert, animated: true, completion: nil)
    }
    
}
