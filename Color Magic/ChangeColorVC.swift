//
//  ChangeColorVC.swift
//  Color Magic
//
//  Created by Mohamed on 8/6/20.
//  Copyright © 2020 MohamedHamid. All rights reserved.
//

import UIKit

class ChangeColorVC: UIViewController {
    
    var delegate : ColorTransfareDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonChangeColor(_ sender: UIButton) {
        delegate?.changeColorWithName(color: sender.backgroundColor!, withName: sender.titleLabel!.text!)
        
        navigationController?.popViewController(animated: true)
    }
    

}
