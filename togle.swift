import SwiftUI

struct ToggleBootCamp: View {
    @State private var toggleIsOn: Bool = false

    var body: some View {
        VStack {
            HStack {
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
                    .font(.title)
            }

            Toggle("Change status", isOn: $toggleIsOn)
                .toggleStyle(SwitchToggleStyle(tint: .red))
                .padding(.horizontal, 100)

            Spacer()
        }
    }
}

struct ToggleBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootCamp()
    }
}


/*In this code, we have the following components derived from the transcript steps:

A @State property toggleIsOn to hold the toggle state.
A VStack as the main container for our UI components.
An HStack with two Text views to display "Status:" and the online/offline status based on the toggle state.
A Toggle view lets the user control the state, which is bound to the @State variable.
The toggle has been modified with the .toggleStyle(SwitchToggleStyle(tint: .red)) to change the tint color to red.
The Toggle is wrapped with a .padding(.horizontal, 100) to ensure it doesn't stretch to the full width of the screen.
A Spacer to push the content to the top.
The image you shared shows a user interface, but without further context, I can't specifically relate it to the provided transcript. However, it seems to be a UI design concept, potentially for a settings screen with a switch control to go online/offline, 
consistent with the toggle implementation described in the video transcript.*/



/*In SwiftUI, you can use the Toggle view to create a switch-like control. 
The Toggle view is a built-in SwiftUI component that allows users to 
toggle between an "on" and "off" state. Below are the steps to create a switch using Toggle in SwiftUI.

Step-by-Step Guide
Import SwiftUI: Ensure you have imported the SwiftUI framework. */


import SwiftUI

//Create a State Variable: Define a @State variable to hold the toggle's state.

@State private var isOn: Bool = false

//Add a Toggle View: Use the Toggle view in your SwiftUI view hierarchy. 
//Bind the @State variable to the Toggle.

var body: some View {
    Toggle(isOn: $isOn) {
        Text("Switch Label")
    }
    .padding()
}


/* Customize the Toggle: You can customize the appearance and behavior of the Toggle as needed.
Complete Example
Here is a complete example of a SwiftUI view that includes a Toggle:*/

import SwiftUI

struct ContentView: View {
    @State private var isOn: Bool = false

    var body: some View {
        VStack {
            Toggle(isOn: $isOn) {
                Text("Enable Feature")
                    .font(.headline)
            }
            .padding()

            if isOn {
                Text("The feature is enabled")
                    .foregroundColor(.green)
            } else {
                Text("The feature is disabled")
                    .foregroundColor(.red)
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


/*In this example, we have a Toggle that controls the state of a feature. 
When the Toggle is on, a message is displayed indicating that the feature is enabled,
and when the Toggle is off, a message is displayed indicating that the feature is disabled.*/


/* Explanation
State Variable: The @State property wrapper is used to create a mutable state that SwiftUI can observe. 
Changes to this state will trigger a UI update.
Toggle Binding: The Toggle view is bound to the isOn state variable using $isOn. 
This binding ensures that the Toggle updates the state variable 
when the user interacts with it.
Conditional UI: The if statement is used to conditionally display 
different text based on the state of the Toggle.
Customization
You can further customize the Toggle by modifying its appearance 
and adding additional views or modifiers. For example, 
you can change the color of the toggle or add an image:*/


Toggle(isOn: $isOn) {
    HStack {
        Image(systemName: isOn ? "checkmark.circle.fill" : "circle")
            .foregroundColor(isOn ? .green : .gray)
        Text("Enable Feature")
            .font(.headline)
    }
}
.padding()


/*In this modified example, we have added an image to the Toggle that changes based on 
the state of the Toggle. 
When the Toggle is on, a green checkmark circle is displayed, and when the Toggle is off, 
a gray circle is displayed.*/

/*This example adds an HStack containing an Image and Text, providing a more visually appealing toggle.

Conclusion
Using Toggle in SwiftUI is straightforward and provides a flexible way to create switch-like controls. 
By binding a @State variable to the Toggle, you can easily manage and respond to changes in its state. 
Customizing 
the Toggle allows you to create a user interface that fits your app's design and 
functionality requirements. */


/* Can I use a custom image for the Toggle instead of the system images?
ANSWER | GPT-4O MODEL
Yes, you can use a custom image for the Toggle in SwiftUI by creating a custom ToggleStyle. 
This allows you to replace the default switch appearance with any custom view, 
including images from your asset catalog.

Step-by-Step Guide
Import SwiftUI: Ensure you have imported the SwiftUI framework.*/

import SwiftUI


/* Add Images to Asset Catalog: Add your custom images to the asset catalog in Xcode. 
For this example, let's assume you have two images named "customOnImage" and "customOffImage".
Create a Custom ToggleStyle: Define a struct that conforms to the ToggleStyle protocol 
and implement the makeBody(configuration:) method.
Use the Custom ToggleStyle: Apply the custom toggle style to your Toggle view.
Complete Example
Here is a complete example of how to create and use a custom ToggleStyle with custom images:*/


import SwiftUI

struct CustomImageToggleStyle: ToggleStyle {
    var onImage: String
    var offImage: String

    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label

            Spacer()

            Image(configuration.isOn ? onImage : offImage)
                .resizable()
                .frame(width: 50, height: 50)
                .onTapGesture {
                    configuration.isOn.toggle()
                }
        }
        .padding()
    }
}

struct ContentView: View {
    @State private var isOn: Bool = false

    var body: some View {
        VStack {
            Toggle("Custom Image Toggle", isOn: $isOn)
                .toggleStyle(CustomImageToggleStyle(onImage: "customOnImage", offImage: "customOffImage"))

            Text(isOn ? "The feature is enabled" : "The feature is disabled")
                .foregroundColor(isOn ? .green : .red)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



/*In this example, we have created a custom ToggleStyle named CustomImageToggleStyle 
that displays custom images for the on and off states of the Toggle.
The makeBody(configuration:) method defines the appearance and behavior of the custom ToggleStyle.
The ContentView view uses the custom ToggleStyle by applying it to the Toggle view.
When the user taps on the custom images, the state of the Toggle is toggled.
You can customize the appearance and behavior of the custom ToggleStyle further 
to suit your app's design and functionality requirements.*/

/* Explanation
CustomImageToggleStyle: This struct conforms to the ToggleStyle protocol 
and defines the custom appearance for the toggle. 
It uses two images, one for the "on" state and one for the "off" state.
makeBody(configuration:): This method constructs the custom toggle view. It uses an HStack 
to layout the label and the image. The image changes based on the isOn state.
onTapGesture: The onTapGesture modifier is used to toggle the isOn state when the image is tapped.
ContentView: This view contains the Toggle and applies the custom toggle style. 
It also displays a text message that changes based on the toggle's state.
Best Practices
Asset Management: Ensure that the images are correctly added to the asset catalog and named appropriately.
Accessibility: Consider adding accessibility labels to the images to improve the app's accessibility.
Animation: You can add animations to the toggle state change for a smoother user experience.
By following these steps, you can create a custom toggle in SwiftUI that uses your own images, 
providing a unique and tailored user interface for your app.*/



/*Is it possible to apply different styles to different toggles within the same view?
ANSWER | GPT-4O MODEL
Yes, it is possible to apply different styles to different toggles within the 
same view in SwiftUI. You can achieve this by creating multiple custom ToggleStyle 
structs and applying them to different Toggle views using the .toggleStyle modifier.

Step-by-Step Guide
Import SwiftUI: Ensure you have imported the SwiftUI framework. */


import SwiftUI


/*Create Custom Toggle Styles: Define multiple structs that conform to 
the ToggleStyle protocol, each with its own custom appearance.
Apply Custom Toggle Styles: Use the .toggleStyle modifier to apply different 
styles to different Toggle views.
Complete Example
Here is a complete example demonstrating how to apply different styles 
to different toggles within the same view: */

import SwiftUI

// Custom Toggle Style 1
struct CustomToggleStyle1: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label

            Spacer()

            RoundedRectangle(cornerRadius: 16)
                .fill(configuration.isOn ? Color.green : Color.red)
                .frame(width: 50, height: 30)
                .overlay(
                    Circle()
                        .fill(Color.white)
                        .padding(3)
                        .offset(x: configuration.isOn ? 10 : -10)
                )
                .onTapGesture {
                    withAnimation {
                        configuration.isOn.toggle()
                    }
                }
        }
        .padding()
    }
}

// Custom Toggle Style 2
struct CustomToggleStyle2: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label

            Spacer()

            Image(systemName: configuration.isOn ? "sun.max.fill" : "moon.fill")
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(configuration.isOn ? .yellow : .blue)
                .onTapGesture {
                    withAnimation {
                        configuration.isOn.toggle()
                    }
                }
        }
        .padding()
    }
}

struct ContentView: View {
    @State private var isOn1: Bool = false
    @State private var isOn2: Bool = false

    var body: some View {
        VStack {
            Toggle("Toggle 1", isOn: $isOn1)
                .toggleStyle(CustomToggleStyle1())

            Toggle("Toggle 2", isOn: $isOn2)
                .toggleStyle(CustomToggleStyle2())

            Text(isOn1 ? "Toggle 1 is ON" : "Toggle 1 is OFF")
                .foregroundColor(isOn1 ? .green : .red)

            Text(isOn2 ? "Toggle 2 is ON" : "Toggle 2 is OFF")
                .foregroundColor(isOn2 ? .yellow : .blue)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/*Explanation
CustomToggleStyle1: This style uses a RoundedRectangle with a Circle overlay to 
create a custom switch appearance. 
The color changes based on the isOn state.
CustomToggleStyle2: This style uses an Image that changes between a 
sun and moon icon based on the isOn state.
ContentView: This view contains two Toggle views, each with a different 
custom style applied using the .toggleStyle modifier. The state of each 
toggle is displayed using Text views.
Best Practices
Reusability: Define reusable custom toggle styles that can be easily 
applied to multiple toggles.
Accessibility: Ensure that custom toggle styles are accessible by adding 
appropriate accessibility labels and traits.
Animation: Use animations to provide a smooth transition between toggle states.
By following these steps, you can apply different styles to different toggles 
within the same view, allowing for a more customized and visually 
appealing user interface in your SwiftUI app. */


/*How can I ensure that my custom image toggle is accessible to users with disabilities?
ANSWER | GPT-4O MODEL
To ensure that your custom image toggle is accessible to users with disabilities, 
you can leverage SwiftUI's accessibility modifiers. These modifiers allow you to 
provide descriptive labels, hints, and traits that assistive technologies 
like VoiceOver can use to convey information to users.

Steps to Make a Custom Image Toggle Accessible
Add Accessibility Labels and Hints: Use the .accessibilityLabel and .
accessibilityHint modifiers to provide descriptive text for your custom toggle.
Use Accessibility Traits: Apply the .accessibilityAddTraits modifier to 
specify the traits of the toggle, such as .isButton or .isSelected.
Accessibility Representation: If your custom control mimics a standard control, 
you can use the .accessibilityRepresentation modifier to inherit 
the accessibility properties of the standard control.
Complete Example
Here is an example of how to make a custom image toggle accessible: */


import SwiftUI

struct CustomImageToggleStyle: ToggleStyle {
    var onImage: String
    var offImage: String

    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label

            Spacer()

            Image(configuration.isOn ? onImage : offImage)
                .resizable()
                .frame(width: 50, height: 50)
                .onTapGesture {
                    withAnimation {
                        configuration.isOn.toggle()
                    }
                }
                .accessibilityLabel(Text(configuration.isOn ? "Enabled" : "Disabled"))
                .accessibilityHint(Text("Double tap to toggle"))
                .accessibilityAddTraits(.isButton)
                .accessibilityValue(Text(configuration.isOn ? "On" : "Off"))
        }
        .padding()
    }
}

struct ContentView: View {
    @State private var isOn: Bool = false

    var body: some View {
        VStack {
            Toggle("Custom Image Toggle", isOn: $isOn)
                .toggleStyle(CustomImageToggleStyle(onImage: "customOnImage", offImage: "customOffImage"))

            Text(isOn ? "The feature is enabled" : "The feature is disabled")
                .foregroundColor(isOn ? .green : .red)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/* Explanation
Accessibility Labels and Hints: The .accessibilityLabel modifier provides a short description of the toggle's state, 
while the .accessibilityHint modifier gives additional context about the action that can be performed.
Accessibility Traits: The .accessibilityAddTraits modifier is used to specify that the image acts as a button.
Accessibility Value: The .accessibilityValue modifier provides the current state of the toggle.
Best Practices
Descriptive Labels: Ensure that the labels and hints are concise and descriptive to 
provide clear information to users.
Testing with VoiceOver: Test your app with VoiceOver enabled to ensure that 
the accessibility information is correctly conveyed.
Accessibility Preview: Use the Accessibility Preview in Xcode to inspect 
the accessibility properties of your views without running the app 1.
By following these steps and best practices, you can make your custom image 
toggle accessible to users with disabilities, providing a better user experience for everyone.*/

