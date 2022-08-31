//
//  AppModel.swift
//  Elijah_Portfolio
//
//  Created by Elijah Armande on 5/3/22.
//

import Foundation
class AppModel: ObservableObject { // view model can be passed an modified by other views
    var portfolio: Portfolio = Portfolio(name: "Elijah Armande", role: "IOS Developer", description: "A strategic probelm solver that uses creativity to think outside of the box", location: "Toledo, OH", skills: [
        Skill(id: UUID().uuidString, skillName: "IOS", image: "iphone"),
        Skill(id: UUID().uuidString, skillName: "Swift 5", image: "swift"),
        Skill(id: UUID().uuidString, skillName: "WatchOS", image: "applewatch"),
        Skill(id: UUID().uuidString, skillName: "UI / UX", image: "hand.tap.fill"),
        Skill(id: UUID().uuidString, skillName: "Editing", image: "wand.and.rays"),
    
    ], experience: [
        Experience(id: UUID().uuidString, companyName: "Midwest Tape", role:"Test Specialist", duration: "Aug 2022 - Present"),
        Experience(id: UUID().uuidString, companyName: "Google", role:"IOS Developer", duration: "Mar 2020 - July 2020"),
        Experience(id: UUID().uuidString, companyName: "Instagram", role:"IOS Developer", duration: "Oct 2019 - Mar 2020"),
        Experience(id: UUID().uuidString, companyName: "Neflix", role:"IOS Developer", duration: "Feb 2018 - Feb 2020"),
    ])
    
}
