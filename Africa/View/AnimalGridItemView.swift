//
//  AnimalGridItemView.swift
//  AnimalGridItemView
//
//  Created by Ezequiel Rasgido on 14/09/2021.
//

import SwiftUI

struct AnimalGridItemView: View {
    //MARK: - PROPERTIES Section

    let animal: Animal

    //MARK: - BODY Section
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

//MARK: - PREVIEW Section
struct AnimalGridItemView_Previews: PreviewProvider {

    static let animals: [Animal] = Bundle.main.decode("animals.json")

    static var previews: some View {
        AnimalGridItemView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
