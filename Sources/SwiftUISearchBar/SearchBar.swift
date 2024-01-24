// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

@available(iOS 13.0, *)
struct SearchBar: View {
    
    @State var text = ""
    
    private let placeholder: String
    
    init(placeholder: String = "Search") {
        self.placeholder = placeholder
    }
    
    var body: some View {
        HStack {
            TextField(placeholder, text: $text)
                .padding(.horizontal)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                text = ""
                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
            }) {
                Image(systemName: "xmark.circle.fill")
                    .foregroundColor(.gray)
            }
            .padding(.trailing)
        }
    }
}

@available(iOS 13.0, *)
#Preview {
    SearchBar()
}
