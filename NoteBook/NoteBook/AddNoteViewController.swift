//
//  AddNoteViewController.swift
//  NoteBook
//
//  Created by Eslam Ali  on 03/04/2022.
//

import UIKit

class AddNoteViewController: UIViewController {
    //MARK:- Vars
    @IBOutlet weak var bodyField: UITextField!
    @IBOutlet weak var titleField: UITextField!
    
    public var completion : ((String, String)->Void)?
    
    
    //MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem =  UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(didTabSaveButton))
        
    }
    //MARK:- Save Button
    @objc func didTabSaveButton (){
       if let title = titleField.text, !title.isEmpty,
          let body = bodyField.text, !body.isEmpty {
        
        completion?(title,body)
  
       }
            
        
        
        
        
        navigationController?.popViewController(animated: true)
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
