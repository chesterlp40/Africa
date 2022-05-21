//
//  HeadingView.swift
//  HeadingView
//
//  Created by Ezequiel Rasgido on 11/09/2021.
//

import SwiftUI

struct HeadingView: View {
    //MARK: - PROPERTIES Section

    var headingImage: String
    var headingText: String

    //MARK: - BODY Section
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)

            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

//MARK: - PREVIEW Section
struct HeadingView_Previews: PreviewProvider {

    static var previews: some View {
        HeadingView(
            headingImage: "photo.on.rectangle.angled",
            headingText: "Wilderness in pictures"
        )
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
