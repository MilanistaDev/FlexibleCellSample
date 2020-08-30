//
//  SampleTableViewCell.swift
//  FlexibleCellSample
//
//  Created by Takuya Aso on 2020/08/31.
//  Copyright © 2020 Takuya Aso. All rights reserved.
//

import UIKit

class SampleTableViewCell: UITableViewCell {

    @IBOutlet weak var sampleImageView: UIImageView!
    @IBOutlet weak var sampleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
