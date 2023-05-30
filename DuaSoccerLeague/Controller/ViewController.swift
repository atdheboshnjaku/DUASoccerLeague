//
//  ViewController.swift
//  DuaSoccerLeague
//
//  Created by Atdhe Boshnjaku on 5/30/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var teams: [Team] = []
    
    var leagueManager = LeagueManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setup()
        tableView.reloadData()
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    // Assigning the datasource & delegate
    func setup() {
        
        leagueManager.generateTeams()
        leagueManager.generateFixtures()
        leagueManager.generateResults()
        
        teams = leagueManager.teams
        
        // Order teams by the most points in descending order
        teams.sort { $0.points > $1.points }
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TeamCell", bundle: nil), forCellReuseIdentifier: "TeamCell")
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TeamCell", for: indexPath) as! TeamCell
        cell.setDetails(team: teams[indexPath.row])
        cell.tableCellNumberLabel.text = "\(indexPath.row + 1)"
        cell.selectionStyle = .none
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let team = teams[indexPath.row]
        
        if let teamViewController = storyboard?.instantiateViewController(withIdentifier: "TeamViewController") as? TeamViewController {
            
            teamViewController.team = team
            teamViewController.leaguePosition = indexPath.row + 1
            navigationController?.pushViewController(teamViewController, animated: true)
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
}

