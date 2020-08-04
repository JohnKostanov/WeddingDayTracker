//
//  AddWeddingDayViewController.swift
//  WeddingDayTracker
//
//  Created by  Джон Костанов on 04/08/2020.
//  Copyright © 2020 John Kostanov. All rights reserved.
//

import UIKit

class AddWeddingDayViewController: UIViewController {
  
    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var weddingDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        weddingDatePicker.maximumDate = Date()
        
    }
    
    @IBAction func saveTapped(_ sender: UIBarButtonItem) {
        print("Нажата кнопка сохранения")
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        let weddingDay = weddingDatePicker.date
        let newWeddingDay = WeddingDay(firstName: firstName, lastName: lastName, weddingDay: weddingDay)
        print("Создана запись о дне свадьбы")
        print("\(newWeddingDay.firstName) \(newWeddingDay.lastName)")
        print("Наша годовщина свадьбы - \(newWeddingDay.weddingDay)")
    }
    
    @IBAction func cancelTapped(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
}
