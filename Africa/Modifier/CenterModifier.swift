//
//  CenterModifier.swift
//  CenterModifier
//
//  Created by Ezequiel Rasgido on 14/09/2021.
//

import SwiftUI

struct CenterModifier: ViewModifier {

    func body(
        content: Content
    ) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        } //: HSTACK
    }

}
