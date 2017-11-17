//
//  ObservationsViewController.swift
//  Field Survey
//
//  Created by Sean Buchholz on 11/3/17.
//  Copyright © 2017 Sean Buchholz. All rights reserved.
//
import UIKit
class ObservationsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let obs = FieldSurveyJSONLoader.load(fileName: "field_observation") //obs means observation just for clarification
    @IBOutlet weak var obsTV: UITableView!
    let style = DateFormatter()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Field Survey"
        style.dateStyle = .medium
        style.timeStyle = .medium }
    override func didReceiveMemoryWarning() { super.didReceiveMemoryWarning() }
    func numberOfSections(in tableView: UITableView) -> Int { return 1 }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return obs.count }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "obsCell", for: indexPath)
        if let cell = cell as? ObservationTVCell {
            let observation = obs[indexPath.row]
            cell.classificationIconview.image = observation.classification.image
            cell.titleLabel.text = observation.title
            cell.dateLabel.text = style.string(from: observation.date) }
    return cell }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ObservationDVController, let row = obsTV.indexPathForSelectedRow?.row {
                destination.obs = obs[row] } } }
