//
//  HeaderView.swift
//  Elijah_Portfolio
//
//  Created by Elijah Armande on 5/3/22.
//

import SwiftUI

struct HeaderView: View {
    
    //Mark:- variables
    var appModel: AppModel
    
    
    // Mark:- views
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("Elijah")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(5)
                    .background(
                        Circle() // same size as frame. add pading before background to disply it
                            .opacity(0.7)
                            .shadow(radius: 5)
                )
                Spacer()
            }
            Text(appModel.portfolio.name)
                .font(.headline)
                .padding(.top, 8)
            
            Text(appModel.portfolio.role)
                .opacity(0.85)
                .padding(.top, -2)
            
            HStack {
                Image(systemName: "location.fill")
                    .font(.system(size: 18, weight: .semibold))
                
                Text(appModel.portfolio.location)
                    .font(.body)
                
            }
            .padding(.top, 10)
            .opacity(0.45)
            
            Text(appModel.portfolio.description)
                .opacity(0.7)
                .padding(.top, 24)
                .lineSpacing(12)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(appModel: AppModel())
            .padding(24)
    }
}
