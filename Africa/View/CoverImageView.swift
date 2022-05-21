//
//  CoverImageView.swift
//  CoverImageView
//
//  Created by Ezequiel Rasgido on 11/09/2021.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: - PROPERTIES Section

    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")

    //MARK: - BODY Section
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
    }
}

//MARK: - PREVIEW Section
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
