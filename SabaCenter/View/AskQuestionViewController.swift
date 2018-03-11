//
//  AskQuestionViewController.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 3/10/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
import UIKit

class AskQuestionViewController : UIViewController
{
    @IBOutlet weak var titleTextField: UITextView!
    @IBOutlet weak var descriptionTextField: UITextView!
    @IBOutlet weak var keywordsButton: UIButton!
    @IBOutlet weak var otherKeywordsTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    @IBAction func submitButtonTouchUpInside(_ sender: UIButton)
    {
        print("submitted")
    }
    
    @IBAction func otherKeyWordsTextFieldEditingDidEnd(_ sender: UITextField)
    {
        print(sender.text);
    }
    
    @IBAction func selectKeyWordsButtonTouchUpInside(_ sender: UIButton)
    {
        print("Keyword selected");
    }
}
