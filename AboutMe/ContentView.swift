//
//  ContentView.swift
//  AboutMe
//
//  Created by Valerie Hammer on 4/10/25.
//

//Design Option 1 in Coolor - Calm and Earthy (initial iteration)
//Sage Green: Color(red: 0.79 , green: 0.79, blue: 0.64)
//Butter yellow: Color(red: 1, green: 0.88, blue: 0.66)
//Coral: Color(red: 0.89, green: 0.42, blue: 0.36)
//Purple: Color(red: 0.45, green: 0.24, blue: 0.27)
//Dark Maroon: Color(red: 0.28, green: 0.18, blue: 0.19)

//Design Option 2 in Coolor - Summery Lavendar Garden (final iteration)
//Dark Purple: Color(hue: 0.702, saturation: 0.508, brightness: 0.537)
//Lavendar: Color(red: 0.56, green: 0.48, blue: 0.84)
//Light Green: Color(red: 0.65, green: 0.79, blue: 0.34)
//Dark Green: Color(red: 0.42, green: 0.6, blue: 0.31)
//Bright Yellow: Color(red: 0.95, green: 0.99, blue: 0.53)
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            let backgroundColor = Color(red: 0.95, green: 0.99, blue: 0.53)
            Color(backgroundColor)
// establish background color
            ScrollView {
            // establish vertical scrolling
                VStack (spacing: 0){
//Begin code for header image and text
                    Image("valLavendarGarden")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 300, height: 300)
                    
                    Text ("Valerie Hammer")
                        .font(.largeTitle)
                        .fontWeight(.regular)
                        .foregroundColor(Color(hue: 0.702, saturation: 0.508, brightness: 0.537))
                    
                    Text ("Educator, Researcher, Artist, & Adventurer")
                        .fontWeight(.light)
                        .foregroundColor(Color(hue: 0.702, saturation: 0.508, brightness: 0.537))
//End code for header image and text
                    Text(" ")
                    Text(" ")
//Used a blank line of text as a workaround to get spacing
//Begin code for My Family header and scrolling, horizontal stack with photos of family members
                    Text ("My Family")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.702, saturation: 0.508, brightness: 0.537))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        //The .leading prompt didn't work here to align text to the left. I did research, and it seems this sometimes doesn't work when the text is nested in stack. Found the above line of workaround code.
                    
                    ScrollView(.horizontal) {
                        HStack(spacing: 3) {
                            Image("SamShaka2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                                .frame(width: 200, height: 200)
                            //While there is a frame listed here, it was really editing the photos to the same pixel ratio in preview that got the uniform look. I cropped all to 1024 x 682.
                            
                            Image("LukeFlower")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                                .frame(width: 200, height: 200)
                            
                            Image("BobCat")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                                .frame(width: 200, height: 200)
                            
                            Image("Brian")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                                .frame(width: 200, height: 200)
                        }
                    }
//End code for My Family header and scrolling, horizontal stack with photos of family members
//Begin code for Places I've Lived header and scrolling, horizontal stack of shapes with names of places I've lived.
                        Text ("Places I've Lived and Worked")
                        .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(Color(hue: 0.702, saturation: 0.508, brightness: 0.537))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text ("")
                        //Blank line of text used for spacing again.
                        
                    ScrollView(.horizontal) {
                        HStack(spacing: 7) {
                            //each location has a zstack with the shape and text overlay. First city starts here. Copied this set of code for each additional location.
                            ZStack {
                                Circle()
                                    .fill(Color(red: 0.56, green: 0.48, blue: 0.84, opacity: 1.0))
                                    .frame(width: 150, height: 150)
                                Text("Waterford, CT")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 0.95, green: 0.99, blue: 0.53, opacity: 1.0))
                                    .multilineTextAlignment(.center)
                                    .frame(width: 100, height: 100)
                            }
                            //First city ends here here.
                            
                            ZStack {
                                Circle()
                                    .fill(Color(red: 0.56, green: 0.48, blue: 0.84, opacity: 1.0))
                                    .frame(width: 150, height: 150) // Adjust circle size as needed
                                Text("Barrington Hills, IL")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 0.95, green: 0.99, blue: 0.53, opacity: 1.0))
                                    .multilineTextAlignment(.center)
                                    .frame(width: 100, height: 100) // Match circle dimensions
                            }
                            
                            ZStack {
                                Circle()
                                    .fill(Color(red: 0.56, green: 0.48, blue: 0.84, opacity: 1.0))
                                    .frame(width: 150, height: 150) // Adjust circle size as needed
                                Text("Chesterfield, MO")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 0.95, green: 0.99, blue: 0.53, opacity: 1.0))
                                    .multilineTextAlignment(.center)
                                    .frame(width: 100, height: 100) // Match circle dimensions
                            }
                            
                            ZStack {
                                Circle()
                                    .fill(Color(red: 0.56, green: 0.48, blue: 0.84, opacity: 1.0))
                                    .frame(width: 150, height: 150) // Adjust circle size as needed
                                Text("Palo Alto, CA")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 0.95, green: 0.99, blue: 0.53, opacity: 1.0))
                                    .multilineTextAlignment(.center)
                                    .frame(width: 100, height: 100) // Match circle dimensions
                            }
                            
                            ZStack {
                                Circle()
                                    .fill(Color(red: 0.56, green: 0.48, blue: 0.84, opacity: 1.0))
                                    .frame(width: 150, height: 150) // Adjust circle size as needed
                                Text("Tafraoute, Morocco")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 0.95, green: 0.99, blue: 0.53, opacity: 1.0))
                                    .multilineTextAlignment(.center)
                                    .frame(width: 100, height: 100) // Match circle dimensions
                            }
                            
                            ZStack {
                                Circle()
                                    .fill(Color(red: 0.56, green: 0.48, blue: 0.84, opacity: 1.0))
                                    .frame(width: 150, height: 150) // Adjust circle size as needed
                                Text("Bend, OR")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 0.95, green: 0.99, blue: 0.53, opacity: 1.0))
                                    .multilineTextAlignment(.center)
                                    .frame(width: 100, height: 100) // Match circle dimensions
                            }
                            
                            ZStack {
                                Circle()
                                    .fill(Color(red: 0.56, green: 0.48, blue: 0.84, opacity: 1.0))
                                    .frame(width: 150, height: 150) // Adjust circle size as needed
                                Text("Vancouver, Canada")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 0.95, green: 0.99, blue: 0.53, opacity: 1.0))
                                    .multilineTextAlignment(.center)
                                    .frame(width: 100, height: 100) // Match circle dimensions
                            }
                            
                            ZStack {
                                Circle()
                                    .fill(Color(red: 0.56, green: 0.48, blue: 0.84, opacity: 1.0))
                                    .frame(width: 150, height: 150) // Adjust circle size as needed
                                Text("San Francisco, CA")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 0.95, green: 0.99, blue: 0.53, opacity: 1.0))
                                    .multilineTextAlignment(.center)
                                    .frame(width: 100, height: 100) // Match circle dimensions
                            }
                            
                            ZStack {
                                Circle()
                                    .fill(Color(red: 0.56, green: 0.48, blue: 0.84, opacity: 1.0))
                                    .frame(width: 150, height: 150) // Adjust circle size as needed
                                Text("Todos Santos, Mexico")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 0.95, green: 0.99, blue: 0.53, opacity: 1.0))
                                    .multilineTextAlignment(.center)
                                    .frame(width: 100, height: 100) // Match circle dimensions
                            }
                            
                            ZStack {
                                Circle()
                                    .fill(Color(red: 0.56, green: 0.48, blue: 0.84, opacity: 1.0))
                                    .frame(width: 150, height: 150) // Adjust circle size as needed
                                Text("San Jose, Costa Rica")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 0.95, green: 0.99, blue: 0.53, opacity: 1.0))
                                    .multilineTextAlignment(.center)
                                    .frame(width: 100, height: 100) // Match circle dimensions
                            }
                            
                            ZStack {
                                Circle()
                                    .fill(Color(red: 0.56, green: 0.48, blue: 0.84, opacity: 1.0))
                                    .frame(width: 150, height: 150) // Adjust circle size as needed
                                Text("The Canyons, U.S.A.")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 0.95, green: 0.99, blue: 0.53, opacity: 1.0))
                                    .multilineTextAlignment(.center)
                                    .frame(width: 100, height: 100) // Match circle dimensions
                            }
                            
                            ZStack {
                                Circle()
                                    .fill(Color(red: 0.56, green: 0.48, blue: 0.84, opacity: 1.0))
                                    .frame(width: 150, height: 150) // Adjust circle size as needed
                                Text("The Sierras, CA")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 0.95, green: 0.99, blue: 0.53, opacity: 1.0))
                                    .multilineTextAlignment(.center)
                                    .frame(width: 100, height: 100) // Match circle dimensions
                            }
                            
                            ZStack {
                                Circle()
                                    .fill(Color(red: 0.56, green: 0.48, blue: 0.84, opacity: 1.0))
                                    .frame(width: 150, height: 150) // Adjust circle size as needed
                                Text("Madison, WI")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 0.95, green: 0.99, blue: 0.53, opacity: 1.0))
                                    .multilineTextAlignment(.center)
                                    .frame(width: 100, height: 100) // Match circle dimensions
                            }
                        }
                        //End Places I've lived and worked scrolling horizontal stack
                        //Begin My First Comics Zine
                        Text (" ")
                        
                        Link(destination: URL(string: "https://online.fliphtml5.com/lllnp/rtsw/#p=1")!) {
                            Text("Click here to check out my comics")
                                .font(.title2)
                                .fontWeight(.heavy)
                                .foregroundColor(Color(hue: 0.27, saturation: 0.674, brightness: 0.617))
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                        // Link ends here
                        Text ("My comics pen name is Amazing Grace")
                            .font(.subheadline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(Color(hue: 0.27, saturation: 0.674, brightness: 0.617))
                        
                        
                    }
                }
                .padding()
//end VStack with padding
            }
//end ScrollView
        }
//end ZStack
    }
//end body: some View
}
//end ContentView: View

#Preview {
    ContentView()
}
