//
//  ViewController1.swift
//  LostandFound
//
//  Created by Apple on 11/24/20.
//

import UIKit

class secondViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var ItemName: UITextField!
    
    @IBOutlet weak var ItemDesc: UITextField!
    
    @IBOutlet weak var ItemAddr: UITextField!
    func textFieldShouldReturn( _ textField: UITextField) -> Bool{
             textField.resignFirstResponder()
             return true
         }
    @IBAction func AddItemButton(_ sender: Any) {
        IMngr.addItem(name: ItemName.text!, desc: ItemDesc.text!, addr: ItemAddr.text!)
        self.view.endEditing(true)
        ItemName.text=""
        ItemDesc.text=""
        ItemAddr.text=""
        self.tabBarController?.selectedIndex=0
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
