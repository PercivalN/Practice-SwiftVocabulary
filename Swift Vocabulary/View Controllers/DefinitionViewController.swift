//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Lambda_School_Loaner_263 on 5/24/20.
//  Copyright © 2020 Lambda_School_Loaner_263. All rights reserved.
//

import UIKit

@IBDesignable
class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord? 
    
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        setViews()
        //printAllFonts()
    }
    
    func updateViews() {
        
        guard let word = vocabWord else { return }
        wordLabel.text = word.word
        definitionTextView.text = word.definition
    
    }
    
    func setViews() {
        
        wordLabel.textColor = .red
        wordLabel.font = UIFont(name: "BradleyHandITCTT-Bold", size: 35)
        definitionTextView.font = UIFont(name: "BradleyHandITCTT-Bold", size: 20)
        
        
        
    }
    
    func printAllFonts() {
        
        for familyName in UIFont.familyNames {
            print(UIFont.fontNames(forFamilyName: familyName))
        }
    }
}
