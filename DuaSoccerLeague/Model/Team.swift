//
//  Team.swift
//  DuaSoccerLeague
//
//  Created by Atdhe Boshnjaku on 5/30/23.
//

import Foundation

class Team {
    
    var id: Int
    let name: String
    var points: Int
    var teamLogo: String
    var coach: String
    var stadiumName: String
    let stadiumCapacity: Int
    
    init(id: Int, name: String, points: Int = 0, teamLogo: String, coach: String, stadiumName: String, stadiumCapacity: Int) {
        
        self.id = id
        self.name = name
        self.points = points
        self.teamLogo = teamLogo
        self.coach = coach
        self.stadiumName = stadiumName
        self.stadiumCapacity = stadiumCapacity
        
    }
    
}
