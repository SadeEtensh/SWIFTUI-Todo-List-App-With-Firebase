//
//  RegisterView.swift
//  ToDoList
//
//  Created by Sade on 02/05/2023.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    var body: some View {
        
        VStack{
            //Header
            HeaderView(title: "Register",
                       subtitle: "Start Organizing todos",
                       angle: -15,
                       background: .orange)
            
            Form {
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                TLButton(
                    title: "Create Account",
                    background: .green)
                {
                    // Attemt Registration
                }
                
            }
            .padding()
            .offset(y: -50)
            Spacer()
        }
            
        
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
