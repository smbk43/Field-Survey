//
//  ObservationsViewController.swift
//  Field Survey
//
//  Created by Sean Buchholz on 11/3/17.
//  Copyright © 2017 Sean Buchholz. All rights reserved.
//
import UIKit
enum Classification: String {
    case bird
    case anphibian
    case reptile
    case insect
    case fish
    case plant
    case mammal
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon") } }
