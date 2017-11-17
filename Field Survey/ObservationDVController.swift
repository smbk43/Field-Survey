//
//  ObservationsViewController.swift
//  Field Survey
//
//  Created by Sean Buchholz on 11/3/17.
//  Copyright © 2017 Sean Buchholz. All rights reserved.
//
import UIKit
class ObservationDVController: UIViewController {
    var style = DateFormatter(), obs: Observation?
    @IBOutlet weak var classificationIconview: UIImageView!
    @IBOutlet weak var delabel: UILabel!
    @IBOutlet weak var tilabel: UILabel!
    @IBOutlet weak var dalabel: UILabel!
    override func viewDidLoad() { super.viewDidLoad()
        self.title = "observations"
        style.timeStyle = .medium
        style.dateStyle = .medium
        classificationIconview.image = obs?.classification.image
    tilabel.text = obs?.title
        if let date = obs?.date { dalabel.text = style.string(from: date) } else { dalabel.text = "" }
        delabel.text = obs?.description }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning() } }
