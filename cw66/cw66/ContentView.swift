//
//  ContentView.swift
//  cw66
//
//  Created by Ghalia on 19/09/2022.
//

import SwiftUI


struct myDiary: View {
    
    let Saved: String
    var body: some View {
        Text(Saved)
    }
}
struct ContentView: View {
    let chooseColor = [Color.blue , Color.yellow , Color.green , Color.pink]
    var body: some View {
        
        NavigationView {
            HStack {
                NavigationLink(destination: Text("حفظ"))
                {
                    chooseColor
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
