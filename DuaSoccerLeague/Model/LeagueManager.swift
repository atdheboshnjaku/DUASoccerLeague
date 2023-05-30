//
//  LeagueManager.swift
//  DuaSoccerLeague
//
//  Created by Atdhe Boshnjaku on 5/30/23.
//

import Foundation

struct LeagueManager {
    
    var teams: [Team] = []
    
    mutating func generateTeams() {
        
        // Creating 20 teams
        let teamNames = [
            "Team DUA A",
            "Team DUA B",
            "Team DUA C",
            "Team DUA D",
            "Team DUA E",
            "Team DUA F",
            "Team DUA G",
            "Team DUA H",
            "Team DUA I",
            "Team DUA J",
            "Team DUA K",
            "Team DUA L",
            "Team DUA M",
            "Team DUA N",
            "Team DUA O",
            "Team DUA P",
            "Team DUA Q",
            "Team DUA R",
            "Team DUA S",
            "Team DUA T"
        ]
        
        // Give teams random attributes
        for (index, name) in teamNames.enumerated() {
            
            let team = Team(id: index + 1, name: name, teamLogo: "logo", coach: "Coach \(index + 1)", stadiumName: "Stadium \(index + 1)", stadiumCapacity: 5000)
            
            teams.append(team)
            
        }
        
    }
    
}
