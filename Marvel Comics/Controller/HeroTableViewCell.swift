//
//  HeroTableViewCell.swift
//  Marvel Comics
//
//  Created by Cassia Franco on 20/05/21.
//  Copyright © 2021 Yasmin Oliveira. All rights reserved.
//

import UIKit
import Kingfisher

class HeroTableViewCell: UITableViewCell{
    
    @IBOutlet weak var ivThumb: UIImageView!
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    func prepareCell(with hero: Hero) {
        lbName.text = hero.name
        lbDescription.text = hero.description
        if let url = URL(string: hero.thumbnail.url) {
        ivThumb.kf.setImage(with: url)
        ivThumb.kf.indicatorType = .activity
             
        }else{
            ivThumb.image = nil
        }
        ivThumb.layer.cornerRadius = ivThumb.frame.size.height/2
        ivThumb.layer.borderColor = UIColor.red.cgColor
        ivThumb.layer.borderWidth = 2
    }
    
}
