//
//  ViewController.swift
//  DuaSoccerLeague
//
//  Created by Atdhe Boshnjaku on 5/30/23.
//

import UIKit

class ViewController: UIViewController {
    
    var leagueManager = LeagueManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        leagueManager.generateTeams()
        leagueManager.generateFixtures()
        leagueManager.generateResults()
        dump(leagueManager.teams)
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func setup() {
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
    
    
}

