//
//  TeamViewController.swift
//  DuaSoccerLeague
//
//  Created by Atdhe Boshnjaku on 5/30/23.
//

import UIKit

class TeamViewController: UIViewController {
    
    @IBOutlet weak var teamLogoView: UIImageView!
    @IBOutlet weak var teamNameLabel: UILabel!
    @IBOutlet weak var teamLeaguePositionLabel: UILabel!
    @IBOutlet weak var teamPointsLabel: UILabel!
    @IBOutlet weak var teamGoalDifferenceLabel: UILabel!
    @IBOutlet weak var teamCoachLabel: UILabel!
    @IBOutlet weak var stadiumNameLabel: UILabel!
    @IBOutlet weak var stadiumCapacityLabel: UILabel!
    
    var team: Team?
    var leaguePosition: Int?

    override func viewDidLoad() {
        super.viewDidLoad()

        setDetails()
    }
    
    // Method to assign all available property information to the TeamViewController
    func setDetails() {
        
        teamLogoView.image = UIImage(named: team?.teamLogo ?? "appScreenShot")
        teamNameLabel.text = team?.name
        teamLeaguePositionLabel.text = "\(leaguePosition ?? 0)"
        teamPointsLabel.text = "\(team?.points ?? 0)"
        teamGoalDifferenceLabel.text = "\(team?.goalDifference ?? 0)"
        teamCoachLabel.text = "Manager: \(team?.coach ?? "Coach")"
        stadiumNameLabel.text = "Stadium: \(team?.stadiumName ?? "Stadium")"
        stadiumCapacityLabel.text = "Stadium Capacity: \(team?.stadiumCapacity ?? 0)"
        teamLogoView.layer.cornerRadius = teamLogoView.frame.width / 2
        teamLogoView.layer.borderWidth = 2
        teamLogoView.layer.borderColor = UIColor.lightGray.cgColor
        
    }

}
