//
//  ContentView.swift
//  CW6
//
//  Created by Ghalia on 19/09/2022.
//

import SwiftUI
struct StudentDetails: Identifiable {
    let id = UUID()
    
    var fullName: String
    var Year: Int
    var Age: Int
}
struct ContentView: View {
    @State var Student = [StudentDetails(fullName: "Sara Fahad", Year: 2, Age: 20),
                          StudentDetails(fullName: "Noura Mohammad", Year: 4, Age: 22),
                          StudentDetails(fullName: "Rashed Ali", Year: 1, Age: 18)]
    var body: some View {
        
        VStack{
            Image("sta")
            .padding()
            Text("Student Details")
                .font(.largeTitle)
                .foregroundColor(.blue)
            
            VStack{
                ForEach(Student) { student in
                    HStack{
                        Text(student.fullName)
                        Text(String(student.Age))
                        Text(String(student.Year))
                    }
                    
                    
                }
            }
            
            HStack {
                Text("Number Of Students:")
                Text(String(Student.count))
            }
            
            
        }
        
    }
} 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
