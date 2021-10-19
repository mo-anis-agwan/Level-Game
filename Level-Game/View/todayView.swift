//
//  todayView.swift
//  Level-Game
//
//  Created by Anis on 19/10/21.
//

import SwiftUI

struct todayView: View {
    var body: some View {
        HStack {
            Text("Today")
                .font(.custom("Times New Roman", size: 26, relativeTo: .title))
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
            //Spacer()
            Button(action: {
                print("Filter 1 pressed")
            }, label: {
                HStack(spacing: 10) {
                    Image(systemName: "briefcase.fill")
                    Image(systemName: "arrow.down")
                        .foregroundColor(Color("midnightGrey"))
                }
                .padding(.all, 5)
                .background(Color("almostWhite"))
                .cornerRadius(5)
            })
            Button(action: {
                print("Filter 1 pressed")
            }, label: {
                HStack(spacing: 10) {
                    Image(systemName: "face.smiling.fill")
                    Image(systemName: "arrow.down")
                        .foregroundColor(Color("midnightGrey"))
                }
                .padding(.all, 5)
                .background(Color("almostWhite"))
                .cornerRadius(5)
            })
        }
        .padding()
    }
}

struct todayView_Previews: PreviewProvider {
    static var previews: some View {
        todayView()
            .previewLayout(.sizeThatFits)
    }
}
