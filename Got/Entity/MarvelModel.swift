//
//  MarvelModel.swift
//  ViperNewtworkLayerExample
//
//  Created by Adam on 7/25/19.
//  Copyright © 2019 Tamkeen. All rights reserved.
//

import Foundation
// MARK: - GOTElement
class GOTElement: Codable , CodableInit{
    let url: String?
    let name, region, coatOfArms, words: String?
    let titles, seats: [String]
    let currentLord, heir, overlord: String?
    let founded: String?
    let founder: String?
    let diedOut: String?
    let ancestralWeapons: [String]
    let cadetBranches, swornMembers: [String]
    
    init(url: String?, name: String?, region: String?, coatOfArms: String?, words: String?, titles: [String], seats: [String], currentLord: String?, heir: String?, overlord: String?, founded: String?, founder: String?, diedOut: String?, ancestralWeapons: [String], cadetBranches: [String], swornMembers: [String]) {
        self.url = url
        self.name = name
        self.region = region
        self.coatOfArms = coatOfArms
        self.words = words
        self.titles = titles
        self.seats = seats
        self.currentLord = currentLord
        self.heir = heir
        self.overlord = overlord
        self.founded = founded
        self.founder = founder
        self.diedOut = diedOut
        self.ancestralWeapons = ancestralWeapons
        self.cadetBranches = cadetBranches
        self.swornMembers = swornMembers
    }
}

enum Founded: String, Codable , CodableInit{
    case comingOfTheAndals = "Coming of the Andals"
    case empty = ""
    case the299AC = "299 AC"
}

typealias Got = [GOTElement]

extension Got : CodableInit {
    
}

struct GotViewModel {
    var name : String
    var coatOfArms: String
    var region: String?
    var founded : String?
    
  
    
    init(got: GOTElement) {
        name = got.name ?? "Adam"
        coatOfArms = got.coatOfArms ?? "what is die never dies"
        region = got.region ?? "32423"
        founded = got.founded ?? "324"
     
    }
    
}
