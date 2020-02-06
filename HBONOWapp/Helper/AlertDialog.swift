//
//  AlertDialog.swift
//  HBONOWapp
//
//  Created by Yanik Perera on 1/30/20.
//  Copyright © 2020 Yanik Perera. All rights reserved.
//

import Foundation
import UIKit
class AlertDialog {
    func showAlert(title: String,message: String,buttonText: String)  {
        let alert = UIAlertView()
        alert.title = title
        alert.message = message
        alert.addButton(withTitle: buttonText)
        alert.show()
    }
}
