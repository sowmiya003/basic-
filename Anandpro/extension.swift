//
//  extension.swift
//  Anandpro
//
//  Created by sowmiya s on 13/02/24.
//

import Foundation
import UIKit

extension UIView{
   @IBInspectable var corneraRadius: CGFloat{
        
        get {
            return corneraRadius }
        set{
            self.layer.cornerRadius = newValue
        }
    }
}
 
