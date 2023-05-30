//
//  LeagueManager.swift
//  DuaSoccerLeague
//
//  Created by Atdhe Boshnjaku on 5/30/23.
//

import Foundation

struct LeagueManager {
    
    var teams: [Team] = []
    var fixtures: [[(homeTeam: Team, awayTeam: Team, homeGoals: Int, awayGoals: Int)]] = []
    
    // Generating teams and also adding mutating to the method because we are inside a struct while trying to change team array
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
            
            let team = Team(id: index + 1, name: name, teamLogo: "logo_\(index + 1)", coach: "Coach \(index + 1)", stadiumName: "Stadium \(index + 1)", stadiumCapacity: 5000)
            
            teams.append(team)
            
        }
        
    }
    
    mutating func generateFixtures() {
        
        // Shuffle the teams array so fixtures are random
        let shuffledTeams = teams.shuffled()
        
        // Creating fixtures for each team
        for i in 0..<shuffledTeams.count {
            
            var matches: [(homeTeam: Team, awayTeam: Team, homeGoals: Int, awayGoals: Int)] = []
            
            for j in 0..<shuffledTeams.count {
                
                if i != j {
                    
                    let homeTeam = shuffledTeams[i]
                    let awayTeam = shuffledTeams[j]
                    
                    matches.append((homeTeam: homeTeam, awayTeam: awayTeam, homeGoals: 0, awayGoals: 0))
                    
                }
                
            }
            
            fixtures.append(matches)
            
        }
        
    }
    
    mutating func generateResults() {
        
        // Clearing fixture array before generating
        var updatedFixtures: [[(homeTeam: Team, awayTeam: Team, homeGoals: Int, awayGoals: Int)]] = []

        // Generating results for each match
        for roundFixtures in fixtures {

            var roundResults: [(homeTeam: Team, awayTeam: Team, homeGoals: Int, awayGoals: Int)] = []

            for fixture in roundFixtures {

                let homeGoals = Int.random(in: 0...5)
                let awayGoals = Int.random(in: 0...5)

                var updatedHomeTeam = fixture.homeTeam
                var updatedAwayTeam = fixture.awayTeam

                // get and accumulate the results from the matches
                if homeGoals > awayGoals {
                    updatedHomeTeam.points += 3
                    updatedAwayTeam.points += 0
                } else if homeGoals < awayGoals {
                    updatedHomeTeam.points += 0
                    updatedAwayTeam.points += 3
                } else {
                    updatedHomeTeam.points += 1
                    updatedAwayTeam.points += 1
                }

                updatedHomeTeam.goalDifference += homeGoals - awayGoals
                updatedAwayTeam.goalDifference += awayGoals - homeGoals

                roundResults.append((homeTeam: updatedHomeTeam, awayTeam: updatedAwayTeam, homeGoals: homeGoals, awayGoals: awayGoals))

            }

            updatedFixtures.append(roundResults)

        }
        
        // Update the fixtures
        fixtures = updatedFixtures

    }
    
}
