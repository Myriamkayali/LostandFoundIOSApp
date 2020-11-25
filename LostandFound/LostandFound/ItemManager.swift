//
//  ItemManager.swift
//  LostandFound
//
//  Created by Apple on 11/24/20.
//

import UIKit

var IMngr = ItemManager()

struct item{
    
    var name = "what is the item"
    var desc = "description of item"
    var addr = "address"
}
class ItemManager: NSObject {
    var items = [item]()
    func addItem(name: String, desc: String, addr: String){
        items.append(item(name: name, desc: desc, addr: addr))
    }
}
