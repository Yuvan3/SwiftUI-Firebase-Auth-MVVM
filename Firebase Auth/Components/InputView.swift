//
//  InputView.swift
//  Firebase Auth
//
//  Created by Yuvan Shankar on 28/04/23.
//

import SwiftUI

struct InputView: View {
    
    @Binding var text: String
    var title: String
    var placeHolder: String
    var isSecured = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(title)
                .foregroundColor(Color(.darkGray))
                .fontWeight(.semibold)
                .font(.footnote)
            
            if isSecured {
                SecureField(placeHolder, text: $text)
                    .font(.system(size: 14))
            } else {
                TextField(placeHolder, text: $text)
                    .font(.system(size: 14))
            }
            
            Divider()
        }
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView(text: .constant(""), title: "Email Address", placeHolder: "name@example.com")
    }
}
