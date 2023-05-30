//
//  TeamCell.swift
//  DuaSoccerLeague
//
//  Created by Atdhe Boshnjaku on 5/30/23.
//

import UIKit

class TeamCell: UITableViewCell {
    
    @IBOutlet weak var tableCellNumberLabel: UILabel!
    @IBOutlet weak var teamLogoImageView: UIImageView!
    @IBOutlet weak var teamNameLabel: UILabel!
    @IBOutlet weak var coachNameLabel: UILabel!
    @IBOutlet weak var teamPointsLabel: UILabel!
    @IBOutlet weak var teamGoalDifference: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)


    }
    
    func setDetails(team: Team) {
        
        teamLogoImageView.image = UIImage(named: team.teamLogo)
        teamNameLabel.text = team.name
        coachNameLabel.text = team.coach
        teamPointsLabel.text = "\(team.points)"
        teamGoalDifference.text = "\(team.goalDifference)"
        
    }
    
}
