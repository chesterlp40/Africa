//
//  InsetFactView.swift
//  InsetFactView
//
//  Created by Ezequiel Rasgido on 12/09/2021.
//

import SwiftUI

struct InsetFactView: View {
    //MARK: - PROPERTIES Section

    let animal: Animal

    //MARK: - BODY Section
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            } //: TAB
            .tabViewStyle(PageTabViewStyle())
            .frame(
                minHeight: 148,
                idealHeight: 168,
                maxHeight: 180
            )
        } //: BOX
    }
}

//MARK: - PREVIEW Section
struct InsetFactView_Previews: PreviewProvider {

    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
