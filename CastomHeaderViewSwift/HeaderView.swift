//
//  HeaderView.swift
//  CastomHeaderViewSwift
//
//  Created by Vladislav Kalaev on 04.02.17.
//  Copyright © 2017 Vladislav Kalaev. All rights reserved.
//

import UIKit

class HeaderView: UITableViewCell {

    @IBOutlet weak var headerImageView: UIImageView!
   
    @IBOutlet weak var headerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
