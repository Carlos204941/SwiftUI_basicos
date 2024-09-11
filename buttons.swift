
/*Introduction to Buttons in SwiftUI
Buttons are a fundamental component of any user interface, 
allowing users to interact with an app by triggering actions or 
navigating to new screens. SwiftUI provides a variety of 
button styles and customization options to fit the design of your app. This guide will demonstrate different 
ways to implement and format buttons in SwiftUI.

Step-by-Step Thought Process
Basic Button Creation:
Start with the simplest form of a button in SwiftUI, which includes an action and a label.
Customizing Button Appearance:
Use modifiers to change the button's text, background, and other visual properties.
Using Button Styles:
Create reusable button styles by conforming to the ButtonStyle protocol.
Advanced Customizations:
Incorporate images, animations, and other advanced features to enhance the button's interactivity and appearance.
Key Points to Consider

Consistency: Ensure that buttons across your app have a consistent look and feel.


Accessibility: Provide accessibility labels and ensure buttons are easily tappable.


Reusability: Use custom button styles to avoid repetitive code and maintain consistency.


Code Implementation
Basic Button */

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            print("Button Clicked!")
        }) {
            Text("Press Me")
                .foregroundColor(.blue)
        }
    }
}


// Customizing Button Appearance

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            print("Button Clicked!")
        }) {
            Text("Click Me")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .font(.title)
        }
    }
}


// Using Button Styles

import SwiftUI

struct BlueButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color(red: 0, green: 0, blue: 0.5))
            .foregroundColor(.white)
            .clipShape(Capsule())
    }
}

struct ContentView: View {
    var body: some View {
        Button("Press Me") {
            print("Button pressed!")
        }
        .buttonStyle(BlueButton())
    }
}


// Advanced Customizations

import SwiftUI

struct ContentView: View {
    @State private var isPressed = false
    
    var body: some View {
        Button(action: {
            self.isPressed.toggle()
        }) {
            Image(systemName: isPressed ? "star.fill" : "star")
                .font(.title)
                .foregroundColor(isPressed ? .yellow : .gray)
        }
    }
}

// Conclusion

/*Buttons are essential components of any user interface,

allowing users to interact with an app by triggering actions or 
navigating to new screens. SwiftUI provides a variety of button styles and 
customization options to fit the design of your app. By following the steps 
outlined in this guide, you can create buttons that are visually appealing, accessible, 
and consistent across your app. Experiment with different button styles, customizations, 
and interactions to enhance the user experience and make your app more engaging.*/



//Button with Image


import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            print("Trash Button Clicked!")
        }) {
            Image(systemName: "trash")
                .foregroundColor(.red)
        }
    }
}


//Button with Text and Image            

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            print("Delete Button Clicked!")
        }) {
            HStack {
                Image(systemName: "trash")
                Text("Delete")
            }
            .foregroundColor(.red)
        }
    }
}


//Button with Background Image


import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            print("Button Clicked!")
        }) {
            Text("Press Me")
                .padding()
                .background(Image("background"))
                .foregroundColor(.white)
        }
    }
}


//Button with Custom Background Image

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            print("Button Clicked!")
        }) {
            Text("Press Me")
                .padding()
                .background(Image("background")
                                .resizable()
                                .scaledToFit())
                .foregroundColor(.white)
        }
    }
}


//Button with Gradient Background


import SwiftUI


struct ContentView: View {
    var body: some View {
        Button(action: {
            print("Button Clicked!")
        }) {
            Text("Press Me")
                .padding()
                .background(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .leading, endPoint: .trailing))
                .foregroundColor(.white)
        }
    }
}


//Button with Custom Shape

import SwiftUI


struct ContentView: View {
    var body: some View {
        Button(action: {
            print("Button Clicked!")
        }) {
            Text("Press Me")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}


//Button with Custom Animation

import SwiftUI


struct ContentView: View {
    @State private var isPressed = false
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.isPressed.toggle()
            }
        }) {
            Text("Press Me")
                .padding()
                .background(isPressed ? Color.green : Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}


//Button with Custom Border

import SwiftUI


struct ContentView: View {
    var body: some View {
        Button(action: {
            print("Button Clicked!")
        }) {
            Text("Press Me")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 2))
        }
    }
}


//Button with Custom Shadow


import SwiftUI


struct ContentView: View {
    var body: some View {
        Button(action: {
            print("Button Clicked!")
        }) {
            Text("Press Me")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(color: .gray, radius: 5, x: 0, y: 5)
        }
    }
}


//Button with Custom Padding

import SwiftUI


struct ContentView: View {
    var body: some View {
        Button(action: {
            print("Button Clicked!")
        }) {
            Text("Press Me")
                .padding(10)
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}


//Button with Custom Font

import SwiftUI


struct ContentView: View {
    var body: some View {
        Button(action: {
            print("Button Clicked!")
        }) {
            Text("Press Me")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .font(.title)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}


//Button with Custom Opacity

import SwiftUI


struct ContentView: View {
    var body: some View {
        Button(action: {
            print("Button Clicked!")
        }) {
            Text("Press Me")
                .padding()
                .background(Color.blue.opacity(0.8))
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}


//Button with Custom Border Radius


import SwiftUI


struct ContentView: View {
    var body: some View {
        Button(action: {
            print("Button Clicked!")
        }) {
            Text("Press Me")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 20))
        }
    }
}


//Button with Custom Border Width


import SwiftUI



struct ContentView: View {
    var body: some View {
        Button(action: {
            print("Button Clicked!")
        }) {
            Text("Press Me")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 4))
        }
    }
}


//Button with Custom Border Color


import SwiftUI


struct ContentView: View {
    var body: some View {
        Button(action: {
            print("Button Clicked!")
        }) {
            Text("Press Me")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.red, lineWidth: 2))
        }
    }
}


//Button with Custom Border and Shadow


import SwiftUI



struct ContentView: View {
    var body: some View {
        Button(action: {
            print("Button Clicked!")
        }) {
            Text("Press Me")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.red, lineWidth: 2))
                .shadow(color: .gray, radius: 5, x: 0, y: 5)
        }
    }
}




//Animated Button

import SwiftUI

struct GrowingAnimButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color.red)
            .foregroundColor(.yellow)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

struct ContentView: View {
    var body: some View {
        Button("Click Me") {
            print("Button Clicked!")
        }
        .buttonStyle(GrowingAnimButton())
    }
}


//Button with Custom Animation


import SwiftUI


struct ContentView: View {
    @State private var isPressed = false
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.isPressed.toggle()
            }
        }) {
            Text("Press Me")
                .padding()
                .background(isPressed ? Color.green : Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}




//Button with Custom Animation and Scale Effect

import SwiftUI


struct ContentView: View {
    @State private var isPressed = false
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.isPressed.toggle()
            }
        }) {
            Text("Press Me")
                .padding()
                .background(isPressed ? Color.green : Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .scaleEffect(isPressed ? 1.2 : 1)
        }
    }
}


//Button with Custom Animation and Rotation Effect


import SwiftUI


struct ContentView: View {
    @State private var isPressed = false
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.isPressed.toggle()
            }
        }) {
            Text("Press Me")
                .padding()
                .background(isPressed ? Color.green : Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .rotationEffect(.degrees(isPressed ? 45 : 0))
        }
    }
}


//Button with Custom Animation and Opacity Effect


import SwiftUI


struct ContentView: View {
    @State private var isPressed = false
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.isPressed.toggle()
            }
        }) {
            Text("Press Me")
                .padding()
                .background(isPressed ? Color.green : Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .opacity(isPressed ? 0.5 : 1)
        }
    }
}


//Button with Custom Animation and Blur Effect


import SwiftUI


struct ContentView: View {
    @State private var isPressed = false
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.isPressed.toggle()
            }
        }) {
            Text("Press Me")
                .padding()
                .background(isPressed ? Color.green : Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .blur(radius: isPressed ? 5 : 0)
        }
    }
}


//Button with Custom Animation and Shadow Effect


import SwiftUI


struct ContentView: View {
    @State private var isPressed = false
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.isPressed.toggle()
            }
        }) {
            Text("Press Me")
                .padding()
                .background(isPressed ? Color.green : Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(color: .gray, radius: isPressed ? 10 : 5, x: 0, y: 5)
        }
    }
}


//Button with Custom Animation and Gradient Effect


import SwiftUI


struct ContentView: View {
    @State private var isPressed = false
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.isPressed.toggle()
            }
        }) {
            Text("Press Me")
                .padding()
                .background(LinearGradient(gradient: Gradient(colors: [isPressed ? .green : .blue, isPressed ? .blue : .green]), startPoint: .leading, endPoint: .trailing))
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}


//Button with Custom Animation and Scale and Rotation Effects


import SwiftUI


struct ContentView: View {
    @State private var isPressed = false
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.isPressed.toggle()
            }
        }) {
            Text("Press Me")
                .padding()
                .background(isPressed ? Color.green : Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .scaleEffect(isPressed ? 1.2 : 1)
                .rotationEffect(.degrees(isPressed ? 45 : 0))
        }
    }
}


//Button with Custom Animation and Scale and Opacity Effects



import SwiftUI


struct ContentView: View {
    @State private var isPressed = false
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.isPressed.toggle()
            }
        }) {
            Text("Press Me")
                .padding()
                .background(isPressed ? Color.green : Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .scaleEffect(isPressed ? 1.2 : 1)
                .opacity(isPressed ? 0.5 : 1)
        }
    }
}


//Button with Custom Animation and Scale and Blur Effects


import SwiftUI


struct ContentView: View {
    @State private var isPressed = false
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.isPressed.toggle()
            }
        }) {
            Text("Press Me")
                .padding()
                .background(isPressed ? Color.green : Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .scaleEffect(isPressed ? 1.2 : 1)
                .blur(radius: isPressed ? 5 : 0)
        }
    }
}


//Button with Custom Animation and Scale and Shadow Effects



import SwiftUI


struct ContentView: View {
    @State private var isPressed = false
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.isPressed.toggle()
            }
        }) {
            Text("Press Me")
                .padding()
                .background(isPressed ? Color.green : Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .scaleEffect(isPressed ? 1.2 : 1)
                .shadow(color: .gray, radius: isPressed ? 10 : 5, x: 0, y: 5)
        }
    }
}


//Button with Custom Animation and Scale and Gradient Effects


import SwiftUI


struct ContentView: View {
    @State private var isPressed = false
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.isPressed.toggle()
            }
        }) {
            Text("Press Me")
                .padding()
                .background(LinearGradient(gradient: Gradient(colors: [isPressed ? .green : .blue, isPressed ? .blue : .green]), startPoint: .leading, endPoint: .trailing))
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .scaleEffect(isPressed ? 1.2 : 1)
        }
    }
}


//Button with Custom Animation and Rotation and Opacity Effects


import SwiftUI


struct ContentView: View {
    @State private var isPressed = false
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.isPressed.toggle()
            }
        }) {
            Text("Press Me")
                .padding()
                .background(isPressed ? Color.green : Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .rotationEffect(.degrees(isPressed ? 45 : 0))
                .opacity(isPressed ? 0.5 : 1)
        }
    }
}


//Button with Custom Animation and Rotation and Blur Effects


import SwiftUI


struct ContentView: View {
    @State private var isPressed = false
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.isPressed.toggle()
            }
        }) {
            Text("Press Me")
                .padding()
                .background(isPressed ? Color.green : Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .rotationEffect(.degrees(isPressed ? 45 : 0))
                .blur(radius: isPressed ? 5 : 0)
        }
    }
}


//Button with Custom Animation and Rotation and Shadow Effects



import SwiftUI


struct ContentView: View {
    @State private var isPressed = false
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.isPressed.toggle()
            }
        }) {
            Text("Press Me")
                .padding()
                .background(isPressed ? Color.green : Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .rotationEffect(.degrees(isPressed ? 45 : 0))
                .shadow(color: .gray, radius: isPressed ? 10 : 5, x: 0, y: 5)
        }
    }
}


//Button with Custom Animation and Rotation and Gradient Effects


import SwiftUI



struct ContentView: View {
    @State private var isPressed = false
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.isPressed.toggle()
            }
        }) {
            Text("Press Me")
                .padding()
                .background(LinearGradient(gradient: Gradient(colors: [isPressed ? .green : .blue, isPressed ? .blue : .green]), startPoint: .leading, endPoint: .trailing))
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .rotationEffect(.degrees(isPressed ? 45 : 0))
        }
    }
}


/*Summary
In this guide, we covered the basics of creating and customizing buttons in SwiftUI. 
We started with a simple button and progressively added customizations, i
ncluding custom button styles and animations. By using the ButtonStyle protocol, 
we can create reusable styles that ensure consistency across the app. Additionally, 
incorporating images and animations can enhance the user experience.

Best Practices:

Use custom button styles for consistency.
Ensure buttons are accessible.
Avoid repetitive code by leveraging reusable components.
By following these practices, you can create visually appealing and functional 
buttons that enhance the overall user experience in your SwiftUI app. */




/*button navigation of one screen and another
ANSWER | GPT-4O MODEL
Button Navigation Between Screens in SwiftUI
Navigating between screens is a fundamental aspect of building applications. In SwiftUI, 
this can be achieved using NavigationView and NavigationLink. This guide will demonstrate 
how to navigate from one screen to another using these components.

Step-by-Step Thought Process
Set Up NavigationView:
Wrap your main view in a NavigationView to enable navigation capabilities.
Create NavigationLink:
Use NavigationLink to define the destination view and the label that triggers the navigation.
Customize Navigation:
Optionally, customize the navigation bar title and other properties for better user experience.
Pass Data Between Screens:
If needed, pass data to the destination view using its initializer.
Key Points to Consider
NavigationView: Acts as a container for the navigation stack.
NavigationLink: Creates a link between two views.
Data Passing: Ensure data is passed correctly to the destination view if required.
User Experience: Customize navigation titles and styles for a better user experience.
Code Implementation
Basic Navigation */


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SecondView()) {
                    Text("Navigate to Second Screen")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .navigationBarTitle("First Screen", displayMode: .inline)
        }
    }
}

struct SecondView: View {
    var body: some View {
        Text("Second Screen")
            .navigationBarTitle("Second Screen", displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//Passing Data Between Screens

import SwiftUI

struct ContentView: View {
    @State private var text = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter Text", text: $text)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                NavigationLink(destination: SecondView(text: text)) {
                    Text("Navigate to Second Screen")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .navigationBarTitle("First Screen", displayMode: .inline)
        }
    }
}


struct SecondView: View {
    var text: String
    
    var body: some View {
        Text("Received Text: \(text)")
            .navigationBarTitle("Second Screen", displayMode: .inline)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//Customizing Navigation Bar


import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SecondView()) {
                    Text("Navigate to Second Screen")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .navigationBarTitle("First Screen", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                print("Settings Button Clicked!")
            }) {
                Image(systemName: "gear")
            })
        }
    }
}


struct SecondView: View {
    var body: some View {
        Text("Second Screen")
            .navigationBarTitle("Second Screen", displayMode: .inline)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//Conclusion


/*Navigating between screens in SwiftUI is a crucial aspect of building user-friendly applications.

By using NavigationView and NavigationLink, you can easily create navigation flows within your app.

Customizing the navigation bar and passing data between screens can enhance the user experience.

By following the steps outlined in this guide, you can create seamless navigation experiences that improve the overall usability of your SwiftUI app.*/


//Button with Navigation

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SecondView()) {
                    Text("Navigate to Second Screen")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .navigationBarTitle("First Screen", displayMode: .inline)
        }
    }
}

struct SecondView: View {
    var body: some View {
        Text("Second Screen")
            .navigationBarTitle("Second Screen", displayMode: .inline)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//Button with Navigation and Data Passing
/* Passing Data Between Screens

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SecondView(data: "Hello, Second Screen!")) {
                    Text("Navigate to Second Screen")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .navigationBarTitle("First Screen", displayMode: .inline)
        }
    }
}

struct SecondView: View {
    let data: String

    var body: some View {
        Text(data)
            .navigationBarTitle("Second Screen", displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
Summary
In this guide, we demonstrated how to navigate between screens in SwiftUI using NavigationView 
and NavigationLink. We started with a basic navigation setup and then showed how to pass data between screens.

Best Practices:

Consistency: Ensure navigation elements are consistent across your app.
Accessibility: Make sure navigation elements are accessible.
Data Management: Properly manage and pass data between views.
By following these practices, you can create a seamless navigation experience in your SwiftUI applications.
*/

import SwiftUI


struct ContentView: View {
    @State private var text = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter Text", text: $text)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                NavigationLink(destination: SecondView(text: text)) {
                    Text("Navigate to Second Screen")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .navigationBarTitle("First Screen", displayMode: .inline)
        }
    }
}


struct SecondView: View {
    var text: String
    
    var body: some View {
        Text("Received Text: \(text)")
            .navigationBarTitle("Second Screen", displayMode: .inline)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//Button with Navigation and Custom Navigation Bar


import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SecondView()) {
                    Text("Navigate to Second Screen")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .navigationBarTitle("First Screen", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                print("Settings Button Clicked!")
            }) {
                Image(systemName: "gear")
            })
        }
    }
}


struct SecondView: View {
    var body: some View {
        Text("Second Screen")
            .navigationBarTitle("Second Screen", displayMode: .inline)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//Button with Navigation and Custom Navigation Bar and Data Passing



import SwiftUI


struct ContentView: View {
    @State private var text = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter Text", text: $text)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                NavigationLink(destination: SecondView(text: text)) {
                    Text("Navigate to Second Screen")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .navigationBarTitle("First Screen", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                print("Settings Button Clicked!")
            }) {
                Image(systemName: "gear")
            })
        }
    }
}


struct SecondView: View {
    var text: String
    
    var body: some View {
        Text("Received Text: \(text)")
            .navigationBarTitle("Second Screen", displayMode: .inline)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//Button with Navigation and Custom Navigation Bar and Data Passing and Custom Navigation Title


import SwiftUI



struct ContentView: View {
    @State private var text = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter Text", text: $text)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                NavigationLink(destination: SecondView(text: text)) {
                    Text("Navigate to Second Screen")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .navigationBarTitle("First Screen", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                print("Settings Button Clicked!")
            }) {
                Image(systemName: "gear")
            })
        }
    }
}


struct SecondView: View {
    var text: String
    
    var body: some View {
        Text("Received Text: \(text)")
            .navigationBarTitle("Second Screen", displayMode: .inline)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//Button with Navigation and Custom Navigation Bar and Data Passing and Custom Navigation Title and Custom Navigation Style



import SwiftUI


struct ContentView: View {
    @State private var text = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter Text", text: $text)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                NavigationLink(destination: SecondView(text: text)) {
                    Text("Navigate to Second Screen")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .navigationBarTitle("First Screen", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                print("Settings Button Clicked!")
            }) {
                Image(systemName: "gear")
            })
            .navigationBarColor(.blue)
        }
    }
}


struct SecondView: View {
    var text: String
    
    var body: some View {
        Text("Received Text: \(text)")
            .navigationBarTitle("Second Screen", displayMode: .inline)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//Button with Navigation and Custom Navigation Bar and Data Passing and Custom Navigation Title and Custom Navigation Style and Custom Navigation Color


import SwiftUI


struct ContentView: View {
    @State private var text = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter Text", text: $text)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                NavigationLink(destination: SecondView(text: text)) {
                    Text("Navigate to Second Screen")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .navigationBarTitle("First Screen", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                print("Settings Button Clicked!")
            }) {
                Image(systemName: "gear")
            })
            .navigationBarColor(.blue)
            .navigationBarColor(.white)
        }
    }
}


struct SecondView: View {
    var text: String
    
    var body: some View {
        Text("Received Text: \(text)")
            .navigationBarTitle("Second Screen", displayMode: .inline)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//Button with Navigation and Custom Navigation Bar and Data Passing and Custom Navigation Title and Custom Navigation Style and Custom Navigation Color and Custom Navigation Bar Items


import SwiftUI


struct ContentView: View {
    @State private var text = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter Text", text: $text)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                NavigationLink(destination: SecondView(text: text)) {
                    Text("Navigate to Second Screen")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .navigationBarTitle("First Screen", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                print("Settings Button Clicked!")
            }) {
                Image(systemName: "gear")
            })
            .navigationBarColor(.blue)
            .navigationBarColor(.white)
            .navigationBarItems(leading: Button(action: {
                print("Back Button Clicked!")
            }) {
                Image(systemName: "arrow.left")
            })
        }
    }
}


struct SecondView: View {
    var text: String
    
    var body: some View {
        Text("Received Text: \(text)")
            .navigationBarTitle("Second Screen", displayMode: .inline)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//Button with Navigation and Custom Navigation Bar and Data Passing and Custom Navigation Title and Custom Navigation Style and Custom Navigation Color and Custom Navigation Bar Items and Custom Navigation Bar Title


import SwiftUI


struct ContentView: View {
    @State private var text = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter Text", text: $text)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                NavigationLink(destination: SecondView(text: text)) {
                    Text("Navigate to Second Screen")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .navigationBarTitle("First Screen", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                print("Settings Button Clicked!")
            }) {
                Image(systemName: "gear")
            })
            .navigationBarColor(.blue)
            .navigationBarColor(.white)
            .navigationBarItems(leading: Button(action: {
                print("Back Button Clicked!")
            }) {
                Image(systemName: "arrow.left")
            })
            .navigationBarTitle("Custom Title", displayMode: .inline)
        }
    }
}


struct SecondView: View {
    var text: String
    
    var body: some View {
        Text("Received Text: \(text)")
            .navigationBarTitle("Second Screen", displayMode: .inline)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//Button with Navigation and Custom Navigation Bar and Data Passing and Custom Navigation Title and Custom Navigation Style and Custom Navigation Color and Custom Navigation Bar Items and Custom Navigation Bar Title and Custom Navigation Bar Title Color


import SwiftUI




struct ContentView: View {
    @State private var text = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter Text", text: $text)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                NavigationLink(destination: SecondView(text: text)) {
                    Text("Navigate to Second Screen")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .navigationBarTitle("First Screen", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                print("Settings Button Clicked!")
            }) {
                Image(systemName: "gear")
            })
            .navigationBarColor(.blue)
            .navigationBarColor(.white)
            .navigationBarItems(leading: Button(action: {
                print("Back Button Clicked!")
            }) {
                Image(systemName: "arrow.left")
            })
            .navigationBarTitle("Custom Title", displayMode: .inline)
            .navigationBarTitleColor(.red)
        }
    }
}




struct SecondView: View {
    var text: String
    
    var body: some View {
        Text("Received Text: \(text)")
            .navigationBarTitle("Second Screen", displayMode: .inline)
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/* Implementing Buttons with Two Initializers in SwiftUI
SwiftUI provides flexibility in creating buttons with different initializers. 
You can create buttons using a simple string for the title or by specifying an action and a custom label. This guide will demonstrate both approaches.

Step-by-Step Thought Process
String Protocol for Button Title:
Use the initializer that takes a string for the button title and an action.
Action and Label Initializer:
Use the initializer that takes an action and a custom label view.
Key Points to Consider
Simplicity: The string initializer is straightforward and useful for simple buttons.
Customization: The action and label initializer allows for more customization and flexibility.
Consistency: Ensure that the buttons are styled consistently across your app.
Code Implementation
String Protocol for Button Title
This initializer is useful for simple buttons where you only need to specify the title and the action.*/



import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Simple Button") {
                print("Simple Button Clicked!")
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/*Action and Label Initializer
This initializer is more flexible and allows you to customize 
the button's appearance by providing a custom label view.*/

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button(action: {
                print("Custom Button Clicked!")
            }) {
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("Custom Button")
                        .foregroundColor(.white)
                }
                .padding()
                .background(Color.green)
                .cornerRadius(8)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/* Summary
In this guide, we demonstrated two initializers for implementing buttons in SwiftUI. 
The first initializer uses a string for the button title, which is simple and straightforward. 
The second initializer uses an action and a custom label, providing more flexibility and customization 
options.

Best Practices:

Consistency: Ensure that buttons have a consistent look and feel across your app.
Accessibility: Make sure buttons are accessible and provide meaningful labels.
Customization: Use the action and label initializer for more complex buttons that 
require custom styling.
By following these practices, you can create buttons that are both functional and 
visually appealing in your SwiftUI applications.*/


//Button with String Protocol for Button Title

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Simple Button") {
                print("Simple Button Clicked!")
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//Button with Action and Label Initializer


import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack {
            Button(action: {
                print("Custom Button Clicked!")
            }) {
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("Custom Button")
                        .foregroundColor(.white)
                }
                .padding()
                .background(Color.green)
                .cornerRadius(8)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




/*how to implement dynamic functionality for the buttons, such as changing the title of the button when clicked.
ANSWER | GPT-4O MODEL
Implementing Dynamic Functionality for Buttons in SwiftUI
In SwiftUI, you can dynamically change the properties of a button, such as its title, 
when it is clicked. This can be achieved using state variables that SwiftUI observes 
to update the UI accordingly. This guide will demonstrate how to implement dynamic functionality for buttons, 
specifically changing the button title when it is clicked.

Step-by-Step Thought Process
State Management:
Use @State properties to manage the dynamic state of the button title.
Button Action:
Update the state variable within the button's action to trigger a UI update.
UI Binding:
Bind the button's title to the state variable so that it reflects the current state.
Key Points to Consider
State Variables: Use @State to create mutable state properties that SwiftUI can observe.
UI Updates: SwiftUI automatically updates the UI when state variables change.
User Feedback: Ensure that the button provides immediate feedback to the user when clicked.
Code Implementation
Changing Button Title Dynamically
This example demonstrates how to change the button title each time it is clicked. */

import SwiftUI

struct ContentView: View {
    @State private var buttonTitle: String = "Click Me"

    var body: some View {
        VStack {
            Button(action: {
                // Change the button title when clicked
                buttonTitle = buttonTitle == "Click Me" ? "Clicked!" : "Click Me"
            }) {
                Text(buttonTitle)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
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


/* Summary
In this guide, we demonstrated how to implement dynamic functionality for buttons in SwiftUI 
by changing the button title when it is clicked. We used @State to manage 
the button's title and updated it within the button's action.

Best Practices:

State Management: Use @State for properties that need to change and trigger UI updates.
Immediate Feedback: Ensure that the button provides immediate visual feedback to the user.
Consistency: Maintain a consistent look and feel for buttons across your app.
By following these practices, you can create interactive and dynamic buttons that 
enhance the user experience in your SwiftUI applications.

*/


/* How do I handle more complex button actions beyond just changing text?
ANSWER | GPT-4O MODEL
Handling More Complex Button Actions in SwiftUI
In SwiftUI, buttons can perform a wide range of actions beyond just changing text. 
You can use buttons to navigate between views, manipulate data, start or stop tasks, 
and more. This guide will demonstrate how to handle more complex button actions in SwiftUI.

Step-by-Step Thought Process
State Management:
Use @State, @Binding, @ObservedObject, or @EnvironmentObject to manage state and data flow.
Navigation:
Use NavigationLink or navigationDestination for navigation between views.
Data Manipulation:
Perform data operations such as adding, deleting, or updating items.
Task Management:
Start or stop tasks like network requests or animations.
UI Updates:
Update UI elements dynamically based on state changes.
Key Points to Consider
State Management: Properly manage state to ensure the UI updates correctly.
User Feedback: Provide immediate feedback to the user for better UX.
Reusability: Create reusable components and functions to keep the code clean and maintainable.
Code Implementation
Example 1: Navigating Between Views*/

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SecondView()) {
                    Text("Go to Second View")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .navigationBarTitle("First View", displayMode: .inline)
        }
    }
}

struct SecondView: View {
    var body: some View {
        Text("This is the Second View")
            .navigationBarTitle("Second View", displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/*Example 2: Data Manipulation*/

import SwiftUI

struct ContentView: View {
    @State private var items: [String] = ["Item 1", "Item 2", "Item 3"]

    var body: some View {
        VStack {
            List {
                ForEach(items, id: \.self) { item in
                    Text(item)
                }
                .onDelete(perform: deleteItems)
            }

            Button(action: addItem) {
                Text("Add Item")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
    }

    func addItem() {
        items.append("Item \(items.count + 1)")
    }

    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//Example 3: Starting and Stopping Tasks


import SwiftUI

struct ContentView: View {
    @State private var isLoading = false

    var body: some View {
        VStack {
            if isLoading {
                ProgressView("Loading...")
            } else {
                Button(action: startLoading) {
                    Text("Start Loading")
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
        }
    }

    func startLoading() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            isLoading = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/* Summary
In this guide, we demonstrated how to handle more complex button actions in SwiftUI. 
We covered navigation between views, data manipulation, and starting/stopping tasks. 
By using state management and providing immediate feedback, you can create interactive 
and dynamic buttons that enhance the user experience.

Best Practices:

State Management: Use appropriate state management techniques to ensure the UI updates 
correctly. User Feedback: Provide immediate visual feedback to the user.
Reusability: Create reusable components and functions to keep the code clean and maintainable.
By following these practices, 
you can handle complex button actions effectively in your SwiftUI applications.*/


/* Can you explain more about how to properly manage state in SwiftUI for complex button actions?
ANSWER | GPT-4O MODEL
Properly Managing State in SwiftUI for Complex Button Actions
Managing state effectively in SwiftUI is crucial for building 
responsive and stable applications. SwiftUI provides several property wrappers and 
techniques to handle state, each suited for different scenarios. This guide will explain how to 
manage state for complex button actions using best practices.

Step-by-Step Thought Process
Identify the Scope of State:
Determine whether the state is local to a view, shared across multiple views, or needs to be persisted.
Choose the Appropriate State Management Tool:
Use @State and @Binding for simple, local state.
Use @ObservedObject and @Published for more complex state shared across views.
Use @EnvironmentObject for state shared across unrelated views.
Use @StateObject to create and own observable objects within a view.
Implement State Management:
Define state variables and ensure they are updated correctly within button actions.
Ensure the UI updates dynamically in response to state changes.
Optimize and Refactor:
Avoid large state variables and complex computations directly in views.
Decompose views into smaller components to manage state effectively.
Key Points to Consider
Single Source of Truth: Ensure there is a single source of truth for your data to prevent inconsistencies.
Minimize State: Use the minimal amount of state necessary to reduce complexity.
Immutable Models: Prefer immutable structs for data models and use state management for mutations.
Decompose Views: Break down complex views into smaller components to manage state more effectively.
Code Implementation
Example 1: Using @State and @Binding for Local State*/

import SwiftUI

struct ContentView: View {
    @State private var buttonTitle: String = "Click Me"

    var body: some View {
        VStack {
            Button(action: {
                buttonTitle = buttonTitle == "Click Me" ? "Clicked!" : "Click Me"
            }) {
                Text(buttonTitle)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
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


//Example 2: Using @ObservedObject and @Published for Shared State

import SwiftUI

class Counter: ObservableObject {
    @Published var count: Int = 0

    func increment() {
        count += 1
    }
}

struct ContentView: View {
    @ObservedObject var counter = Counter()

    var body: some View {
        VStack {
            Text("Count: \(counter.count)")
                .font(.largeTitle)
            Button(action: {
                counter.increment()
            }) {
                Text("Increment")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)
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


//Example 3: Using @EnvironmentObject for Shared State Across Unrelated Views

import SwiftUI

class TaskManager: ObservableObject {
    @Published var tasks = [String]()

    func addTask(_ task: String) {
        tasks.append(task)
    }
}

struct TaskListView: View {
    @EnvironmentObject var taskManager: TaskManager
    @State private var newTask = ""

    var body: some View {
        VStack {
            TextField("New task", text: $newTask)
                .onSubmit {
                    if !newTask.isEmpty {
                        taskManager.addTask(newTask)
                        newTask = ""
                    }
                }
                .padding()
            List(taskManager.tasks, id: \.self) { task in
                Text(task)
            }
        }
        .navigationTitle("Task List")
    }
}

struct ContentView: View {
    @StateObject var taskManager = TaskManager()

    var body: some View {
        NavigationView {
            TaskListView()
                .environmentObject(taskManager)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/*Summary
In this guide, we explored how to manage state in SwiftUI for complex button actions. 
We covered the use of @State, @Binding, @ObservedObject, @Published, and @EnvironmentObject to 
handle different state management scenarios. By following best practices, such as minimizing state, 
using immutable models, and decomposing views, you can build responsive and maintainable SwiftUI applications.

Best Practices:

Single Source of Truth: Ensure data consistency by having a single source of truth.
Minimize State: Reduce complexity by using the minimal amount of state necessary.
Decompose Views: Break down complex views into smaller, manageable components.
Optimize Performance: Avoid large state variables and complex computations directly in views.
By following these practices, you can effectively manage state in SwiftUI and handle complex 
button actions in your applications. */

/*Formatting Buttons: The presenter demonstrates how to format buttons to 
make them visually appealing. This includes changing the color, adding padding, setting the font, 
background color, and creating different button shapes such as rounded 
corners, circular, and capsule-shaped buttons. */


