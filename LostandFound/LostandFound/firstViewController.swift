//
//  ViewController3.swift
//  LostandFound
//
//  Created by Apple on 11/24/20.
//

import UIKit

class firstViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var SearchBar: UISearchBar!
    @IBOutlet weak var ItemTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return IMngr.items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
         let cell: UITableViewCell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "cell")
        
        cell.textLabel?.text = IMngr.items[indexPath.row].name
        cell.detailTextLabel?.text = IMngr.items[indexPath.row].desc
        cell.detailTextLabel?.text = IMngr.items[indexPath.row].addr
        return cell
    }
    override func viewWillAppear(_ animated: Bool) {
        ItemTable.reloadData()
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle ==  UITableViewCell.EditingStyle.delete){
            IMngr.items.remove(at: indexPath.row)
            ItemTable.reloadData()
        }
    }
   

}
