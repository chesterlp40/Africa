//
//  InsetGalleryView.swift
//  InsetGalleryView
//
//  Created by Ezequiel Rasgido on 11/09/2021.
//

import SwiftUI

struct InsetGalleryView: View {
    //MARK: - PROPERTIES Section

    let animal: Animal

    //MARK: - BODY Section
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                } //: LOOP
            } //: HSTACK
        } //:SCROLL
    }
}

//MARK: - PREVIEW Section
struct InsetGalleryView_Previews: PreviewProvider {

    static let animals: [Animal] = Bundle.main.decode("animals.json")

    static var previews: some View {
        InsetGalleryView(animal: animals[2])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
