//
//  ExperiencesView.swift
//  Elijah_Portfolio
//
//  Created by Elijah Armande on 5/3/22.
//

import SwiftUI

struct ExperiencesView: View {
    //MARK:-variables
    var experiences: [Experience]
    @State var showExperiences = true
    
    //MARK:-views
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            HStack(spacing: 16) {
                Text("Experiences")
                    .font(.system(size: 21))
                    .bold()
                    .opacity(0.9)
                
                Button {
                    withAnimation(.easeIn(duration: 0.35)) {
                        showExperiences.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showExperiences ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
            }.padding(.bottom, 14)
            
            if(showExperiences) {
                    ForEach(experiences) {experiences in
                        ExperienceView(experience: experiences)
                    }
            }
        }
    }
}

struct ExperiencesView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader {proxy in
        ExperiencesView(experiences: AppModel().portfolio.experience)
                .padding(24)
        }
    }
}
