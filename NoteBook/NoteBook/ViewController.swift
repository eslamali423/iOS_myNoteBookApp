//
//  ViewController.swift
//  NoteBook
//
//  Created by Eslam Ali  on 03/04/2022.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    
    //MARK:- Vars
    @IBOutlet weak var noNotesLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    var notes : [Note] = []
    
    //MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self

    }
    
    
    //MARK:- TableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let note = notes[indexPath.row]
        let cell  = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = note.title
        cell.detailTextLabel?.text = note.body
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let noteVc = storyboard?.instantiateViewController(identifier: "NoteViewController") as! NoteViewController
        
        let note = notes[indexPath.row]
        noteVc.noteTitle = note.title
        noteVc.noteBody = note.body

        navigationController?.pushViewController(noteVc, animated: true)
        
        
    }

    @IBAction func didTabAddButton(_ sender: Any) {
        let addNoteVC =  storyboard?.instantiateViewController(identifier: "AddNoteViewController") as! AddNoteViewController
        addNoteVC.modalPresentationStyle = .fullScreen
        addNoteVC.title = "Add Note"
        addNoteVC.navigationItem.largeTitleDisplayMode = .never
        
        addNoteVC.completion = { title, body in
            let newNote =  Note(title: title, body: body)
            self.notes.append(newNote)
            self.noNotesLabel.isHidden = true
            self.tableView.isHidden = false
            self.tableView.reloadData()
            
        }
        navigationController?.pushViewController(addNoteVC, animated: true)

    }
    
}

