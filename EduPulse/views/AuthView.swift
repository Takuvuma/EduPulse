//
//  SwiftUIView.swift
//  EduPulse
//
//  Created by Takudzwa Vuma on 2/15/24.
//

import SwiftUI

struct SwiftUIView: View {
    
    @State private var currentviewShowing : String = "Login" // login or signup "
    
    
    var body: some View {
        
        if (currentviewShowing == "login"){
            
            LoginView(currentShowingView: $currentviewShowing)
                .preferredColorScheme(.light)
            
        } else {
            
            Signnup_view_(currentShowingView: $currentviewShowing)
                .preferredColorScheme(.light)
        }
        
        
        
    }
}

#Preview {
    SwiftUIView()
}
