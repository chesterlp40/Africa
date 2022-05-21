//
//  GalleryView.swift
//  GalleryView
//
//  Created by Ezequiel Rasgido on 11/09/2021.
//

import SwiftUI

struct GalleryView: View {
    //MARK: - PROPERTIES Section

    @State private var selectedAnimal: String = "lion"

    let animals: [Animal] = Bundle.main.decode("animals.json")
    let haptics = UIImpactFeedbackGenerator(
        style: .heavy
    )

    // SIMPLE GRID DEFINITION
    // let gridLayout: [GridItem] = [
    //     GridItem(.flexible()),
    //     GridItem(.flexible()),
    //     GridItem(.flexible())
    // ]

    // EFFICIENT GRID DEFINITION
    // let gridLayout: [GridItem] = Array(
    //     repeating: GridItem(.flexible()),
    //     count: 3
    // )

    // DYNAMIC GRID LAYOUT
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Double = 3.0

    //MARK: - FUNCTIONS Section
    func gridSwitch() {
        gridLayout = Array(
            repeating: .init(.flexible()),
            count: Int(gridColumn)
        )
    }

    //MARK: - BODY Section
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(alignment: .center, spacing: 30) {
                //MARK: - IMAGE Section
                Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.accentColor, lineWidth: 8))

                //MARK: - SLIDER Section
                Slider(value: $gridColumn, in: 2...4, step: 1)
                    .padding(.horizontal)
                    .onChange(of: gridColumn) { newValue in
                        gridSwitch()
                    }

                //MARK: - GRID Section
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.accentColor, lineWidth: 1))
                            .onTapGesture {
                                selectedAnimal = item.image
                                haptics.impactOccurred()
                            }

                    } //: LOOP
                } //: GRID
                .animation(.easeIn)
                .onAppear {
                    gridSwitch()
                }
            } //: VSTACK
            .padding(.horizontal, 10)
            .padding(.vertical, 50)




        } //: SCROLL
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

//MARK: - PREVIEW Section
struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
