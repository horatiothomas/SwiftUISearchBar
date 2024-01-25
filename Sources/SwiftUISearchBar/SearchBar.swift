// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

@available(iOS 13.0, *)
public struct SearchBar: View {
    
    @Binding public var text: String
    
    public let placeholder: String
    
    public var body: some View {
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
    SearchBar(
        text: Binding.constant(""),
        placeholder: "Search"
    )
}
