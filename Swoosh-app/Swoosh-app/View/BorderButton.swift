//
//  BorderButton.swift
//  Swoosh-app
//
//  Created by Apple on 7/24/18.
//  Copyright © 2018 ikode. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
