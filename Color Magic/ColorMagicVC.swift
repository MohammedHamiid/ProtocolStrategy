//
//  ColorMagicVC.swift
//  Color Magic
//
//  Created by Mohamed on 8/6/20.
//  Copyright © 2020 MohamedHamid. All rights reserved.
//

import UIKit

class ColorMagicVC: UIViewController  , ColorTransfareDelegate {

    @IBOutlet weak var nameColorL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    func changeColorWithName(color: UIColor, withName name: String) {
        view.backgroundColor = color
        nameColorL.text = name
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ChangeColorVC" {
            let vc = segue.destination as! ChangeColorVC
            vc.delegate = self
        }
        
    }

}

