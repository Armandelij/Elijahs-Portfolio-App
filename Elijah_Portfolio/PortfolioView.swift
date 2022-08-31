//
//  ContentView.swift
//  Elijah_Portfolio
//
//  Created by Elijah Armande on 5/3/22.
//

import SwiftUI

struct PortfolioView: View {
    // Mark: - variables
    var appModel: AppModel = AppModel()
    
    
    // Mark: - views
    var body: some View {
        ZStack{
            Color(UIColor.systemBackground)
                .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    
                    HeaderView(appModel: appModel)
                    
                    SkillsView(skills: appModel.portfolio.skills, width: UIScreen.main.bounds.width - 48)
                        .padding(.top, 32)
                    
                    ExperiencesView(experiences: appModel.portfolio.experience)
                        .padding(.top, 42)
                    
                }.padding(24)
            }
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PortfolioView()
                .colorScheme(.light)
            PortfolioView()
                .colorScheme(.dark)
        }
    }
}
