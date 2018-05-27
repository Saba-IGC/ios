//
//  KeyWordPickerViewDataSource.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 4/22/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
import UIKit

class KeyWordPickerViewDataSource: NSObject, UIPickerViewDataSource {
    let keyWords: [String]
    var firstKeyWords: [String]
    var secondKeyWords: [String]
    var indexSelectedFirst: Int
    var indexSelectedSecond: Int

    init(keyWords: [String]) {
        self.keyWords = keyWords
        self.firstKeyWords = keyWords
        self.secondKeyWords = keyWords
        indexSelectedFirst = -1
        indexSelectedSecond = -1
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return keyWords.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {

        if component == 0 && indexSelectedSecond >= 0 {
           return firstKeyWords[row]
        } else if component == 1 && indexSelectedFirst >= 0 {
           return secondKeyWords[row]
        }
        return keyWords[row]
    }

    func pickerView(_ pickerView: UIPickerView,
                    didSelectRow row: Int,
                    inComponent component: Int) {
        if component == 0 {
            indexSelectedFirst = row
            secondKeyWords = keyWords
            secondKeyWords.remove(at: indexSelectedFirst)
        } else {
            indexSelectedSecond = row
            firstKeyWords = keyWords
            firstKeyWords.remove(at: indexSelectedSecond)
        }
    }
}
