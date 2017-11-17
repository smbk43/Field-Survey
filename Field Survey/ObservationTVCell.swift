//
//  ObservationsViewController.swift
//  Field Survey
//
//  Created by Sean Buchholz on 11/3/17.
//  Copyright © 2017 Sean Buchholz. All rights reserved.
//
import UIKit
class ObservationTVCell: UITableViewCell {
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var classificationIconview: UIImageView!
    override func awakeFromNib() { super.awakeFromNib() }
    override func setSelected(_ selected: Bool, animated: Bool) { super.setSelected(selected, animated: animated) } }
