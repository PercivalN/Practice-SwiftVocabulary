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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        
    }
    
    func updateViews() {
        guard let word = vocabWord else { return }
            wordLabel.text = word.word
            definitionTextView.text = word.definition
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
