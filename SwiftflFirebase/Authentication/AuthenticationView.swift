//
//  AuthenticationView.swift
//  SwiftflFirebase
//
//  Created by Thiago Ogawa on 28/07/25.
//

import SwiftUI

struct AuthenticationView: View {
    
    @Binding var showSignView: Bool
    var body: some View {
        VStack {
            
            NavigationLink {
                SignInEmailView(showSignInView: $showSignView)
            } label: {
                Text("Sign In With Email")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
            Spacer()

        }
        .padding()
        .navigationTitle(Text("Sign In"))
    }
}

#Preview {
    NavigationStack {
        AuthenticationView(showSignView: .constant(false))
    }
}
