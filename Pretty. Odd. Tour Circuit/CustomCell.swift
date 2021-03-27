//
//  CustomCell.swift
//  Pretty. Odd. Tour Circuit
//
//  Created by Ananya George on 3/24/21.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var concertView: UIView!
    @IBOutlet weak var WherenWhenLabel: UILabel!
    @IBOutlet weak var thumbnail: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
