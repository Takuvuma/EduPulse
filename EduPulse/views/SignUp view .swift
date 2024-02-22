//
//  Signnup view .swift
//  EduPulse
//
//  Created by Takudzwa Vuma on 2/15/24.
//

import SwiftUI

struct Signnup_view_: View {
    
    @Binding var currentShowingView: String
    
    
    @State private var email: String=""
    @State private var password: String=""
    
    private func isValidPassword(_ password: String) -> Bool {
        // mimimum six charecter long
        //1 uppeercase character
        //1 special bar
        
        let passwordRegex = NSPredicate(format :  "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])(?=.*[A-Z]).{6,}$")
        
        return passwordRegex.evaluate(with: password)
        
    }
    
    
    
    
    var body: some View {
        ZStack{
            Color.white.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            
            VStack{
                
                HStack{
                    Text("Sign Up ")
                        .font(.largeTitle)
                        .bold()
                    Spacer ()
                    
                }
                .padding()
                .padding(.top)
                
                Spacer()
                
                HStack{
                    
                    Image(systemName:"mail")
                    TextField("Email",text: $email)
                    
                    Spacer()
                    
               
                    
                    
                    if(email.count != 0){
                        Image(systemName:email.isValidEmail() ? "checkmark" : "xmark")
                            .fontWeight(.bold)
                            .foregroundColor(email.isValidEmail () ?  .purple : .red )
                        
                    }
            
                    
                }
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius:15)
                        .stroke(lineWidth:2)
                        .foregroundColor(.purple)
                    
                
                )
                .padding()
                
                HStack{
                    
                    Image(systemName:"lock")
                    SecureField("Password",text: $password)
                    
                    Spacer()
                    
                    if(password.count != 0){
                        
                        Image(systemName:isValidPassword(password) ? "checkmark" : "xmark")
                            .fontWeight(.bold)
                            .foregroundColor(isValidPassword(password) ? .purple: .red)
                    }
                }
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius:15)
                        .stroke(lineWidth:2)
                        .foregroundColor(.purple)

                
                )
                .padding()
                
                
                Button(action:{
                    
                    withAnimation{
                        
                        self.currentShowingView = "login"
                    }
                    
                    
                }){
                    
                    Text("Already have an account ? ")
                        .foregroundColor(.purple.opacity(0.7))
                    
                    
                }
                Spacer()
                Spacer()
                
                
                Button{
                }label: {
                    Text("Sign In")
                        .foregroundColor(.white)
                        .font(.title3)
                        .bold()
                    
                        .frame(maxWidth: .infinity)
                        .padding()
                    
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.black)
                        
                        )
                        .padding(.horizontal)
                    
                }
            
                
                
            }
        }
        
    }
}


