//
//  ScheduleItemCell.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 5/27/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import UIKit

class ScheduleItemCell: UITableViewCell {

    @IBOutlet weak var reminderButton: UIButton!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func update(schedule: ScheduleViewModel) {

        titleLabel.text = schedule.title
        descriptionLabel.text = schedule.description

        if self.tag % 2 == 0 {
            self.backgroundColor = UIColor.CellBackgroundColor.normalBackgroundColor
        } else {
            self.backgroundColor = UIColor.CellBackgroundColor.alternateBackgroundColor
        }

        if schedule.importance == ScheduleItem.Importance.high {
            titleLabel.textColor = UIColor.red
        }
    }
}
