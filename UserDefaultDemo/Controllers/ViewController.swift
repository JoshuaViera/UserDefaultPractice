//
//  ViewController.swift
//  UserDefaultDemo
//
//  Created by Joshua Viera on 1/8/19.
//  Copyright © 2019 Joshua Viera. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // saving a name String to UserDefaults
        if let name = UserDefaults.standard.object(forKey: UserDefaultsKeys.name) as? String {
            print("welcome back, \(name)")
        } else {
            print("No name was found in UserDefaults")
            UserDefaults.standard.set("Josh", forKey: UserDefaultsKeys.name)
            //set background color
        }
        if let color = UserDefaults.standard.object(forKey: "color") as? String {
            if color == "white"{
                view.backgroundColor = .black
            } else if color == "black" {
                view.backgroundColor = .white
            }
        }
    }
    
    
    @IBAction func toggleDarkMode(_ sender: UIBarButtonItem) {
        if let color = UserDefaults.standard.object(forKey: "color") as? String {
            if color == "black" {
                view.backgroundColor = .black
                UserDefaults.standard.set("white", forKey: UserDefaultsKeys.color)
            } else if color == "white" {
                view.backgroundColor = .white
                UserDefaults.standard.set("black", forKey: UserDefaultsKeys.color)
            } else {
                view.backgroundColor = .black
            }
        } else {
            view.backgroundColor = .black
            print("No color was found in UserDefaults")
        }
    }
}
