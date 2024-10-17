//
//  LabelView.swift
//  LabelMaker
//
//  Created by Jia Chen on 2024/10/16.
//

import SwiftUI

struct LabelView: View {
    @Environment(\.isEnabled) private var isEnabled
    @Binding var label: Label
    
    var body: some View {
        TextField("Type to enter text", text: $label.text, axis: .vertical)
            .frame(width: 500, height: isEnabled ? 500 : nil)
            .padding(50)
            .background(label.selectedColor(), in: RoundedRectangle(cornerRadius: label.cornerRadius))
            .foregroundStyle(.black)
            .font(.system(size: 40, weight: .semibold))
            .multilineTextAlignment(.center)
    }
}

#Preview {
    @Previewable @State var label = Label(text: "The label's text content")
        LabelView(label: $label)
        .disabled(true)
}
