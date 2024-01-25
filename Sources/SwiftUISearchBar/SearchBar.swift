// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

@available(iOS 13.0, *)
public struct SearchBar: View {
    
    @State public var text = ""
    
    private let placeholder: String
    
    public init(placeholder: String = "Search") {
        self.placeholder = placeholder
    }
    
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
    SearchBar()
}
