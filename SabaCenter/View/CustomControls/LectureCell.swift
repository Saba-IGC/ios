//
//  LectureCell.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 4/7/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import UIKit

class LectureCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var lecturerLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func updateCell (lecture: LectureViewModel) {
        titleLabel.text = lecture.title
        dateLabel.text = lecture.date
        lecturerLabel.text = lecture.lecturerName
    }

}
