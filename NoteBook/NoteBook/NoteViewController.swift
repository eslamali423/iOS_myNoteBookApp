//
//  NoteViewController.swift
//  NoteBook
//
//  Created by Eslam Ali  on 03/04/2022.
//

import UIKit

class NoteViewController: UIViewController {

    @IBOutlet weak var bodyTextView: UITextView!
    @IBOutlet weak var titleLable: UILabel!
    
    var noteTitle : String = ""
    var noteBody : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLable.text = noteTitle
        bodyTextView.text = noteBody
        
        
    }
    

   

}
