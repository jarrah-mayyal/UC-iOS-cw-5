//
//  ContentView.swift
//  cw5
//
//  Created by JARRAH MAYYAL on 14/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var emoji = [ "😡" , "😭" , "😍" , "😂" , "😎", "🥳", "😋", "😤", "😴", "🤧"]
    @State var theMood = "?"
    var body: some View {
        VStack {
            
            Text("Choose your mood for today")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            Spacer()
    Text (theMood)
                .font(.system(size: 90))
            
            Spacer()
            ScrollView(.horizontal){
                
                HStack{
                    ForEach(emoji, id: \.self) {
                        eemoji in
                        Text(eemoji)
                            .font(.system(size: 60))
                            .frame(width: 70, height: 70)
                            .background(Color.yellow)
                            .clipShape(Circle())
                            .padding(1)
                            .onTapGesture {
                                theMood = eemoji
                        }
                        
                        
                    }
                }
            }
            Spacer()
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
