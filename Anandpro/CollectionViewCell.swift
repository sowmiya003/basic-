//
//  CollectionViewCell.swift
//  Anandpro
//
//  Created by sowmiya s on 13/02/24.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    static let identifier = String(describing: CollectionViewCell.self)
    
    @IBOutlet weak var mainImage: UIImageView!
    
    @IBOutlet weak var mainText: UILabel!
    

    
    
    
    @IBOutlet weak var subText: UILabel!
    
    
    
    func setup(_ slider:onboard){
        mainImage.image = slider.image
        mainText.text = slider.title
        subText.text = slider.des
    }
}
