//
//  CreditsView.swift
//  CreditsView
//
//  Created by Ezequiel Rasgido on 14/09/2021.
//

import SwiftUI

struct CreditsView: View {
    //MARK: - PROPERTIES Section

    //MARK: - BODY Section
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(
                    width: 128,
                    height: 128
                )

            Text("""
                Copyright ©® Ezequiel 'Chester' Rasgido
                All right reserved
                Better Apps ♥ Less Code
            """)
                .font(.footnote)
            .multilineTextAlignment(.center)
        } //: VSTACK
        .padding()
        .opacity(0.4)
    }
}

//MARK: - PREVIEW Section
struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
