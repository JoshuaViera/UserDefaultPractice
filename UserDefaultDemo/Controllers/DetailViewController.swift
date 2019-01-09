//
//  DetailViewController.swift
//  UserDefaultDemo
//
//  Created by Joshua Viera on 1/8/19.
//  Copyright © 2019 Joshua Viera. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let red = UserDefaults.standard.float(forKey: UserDefaultsKeys.red)
        let green = UserDefaults.standard.float(forKey: UserDefaultsKeys.green)
        let blue = UserDefaults.standard.float(forKey: UserDefaultsKeys.blue)
        let color = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1)
        view.backgroundColor = color
    }


    @IBAction func ChangeColor(_ sender: UISlider) {
        updateColor()
        let red = UserDefaults.standard.float(forKey: UserDefaultsKeys.red)
        let green = UserDefaults.standard.float(forKey: UserDefaultsKeys.green)
        let blue = UserDefaults.standard.float(forKey: UserDefaultsKeys.blue)
        let color = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1)
        view.backgroundColor = color
    }
    
    private func updateColor (){
        let redNum = CGFloat(redSlider.value)
         UserDefaults.standard.set(redNum, forKey: UserDefaultsKeys.red)
        let greenNum = CGFloat(greenSlider.value)
         UserDefaults.standard.set(greenNum, forKey: UserDefaultsKeys.green)
        let blueNum = CGFloat(blueSlider.value)
         UserDefaults.standard.set(blueNum, forKey: UserDefaultsKeys.blue)
        let color1 = UIColor(red: redNum, green: greenNum, blue: blueNum, alpha: 1)
        view.backgroundColor = color1
    }
}
