/* Understanding Safe Areas in SwiftUI
Safe areas in SwiftUI refer to the designated regions on a device's screen 
where essential content should be placed to ensure visibility and usability across 
various screen sizes and orientations. By default, SwiftUI respects these safe areas, 
but developers can customize this behavior using various view modifiers.

Key Points to Consider
Default Behavior: SwiftUI automatically places views within the safe area.
Customizing Safe Areas:
ignoresSafeArea: Extends a view's edges to go edge-to-edge, ignoring the safe area.
safeAreaPadding: Adjusts the safe area by adding padding to specified edges.
safeAreaInset: Shrinks the safe area by placing another view inside the original safe area.
Example Implementations
Default Safe Area Behavior
By default, SwiftUI places views within the safe area. Here's an example:*/

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    colors: [.red, .yellow],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .navigationTitle("Hello World")
            }
        }
    }
}



//To make a view extend beyond the safe area, use the ignoresSafeArea modifier

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    colors: [.red, .yellow],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                .navigationTitle("Hello World")
            }
        }
    }
}


//To adjust the safe area by adding padding to specific edges, use the safeAreaPadding modifier


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    colors: [.red, .yellow],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .safeAreaPadding(.top)
                .navigationTitle("Hello World")
            }
        }
    }
}


//To shrink the safe area by placing another view inside the original safe area, use the safeAreaInset modifier


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    colors: [.red, .yellow],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .safeAreaInset(edge: .top) {
                    Text("Hello, World!")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
                .navigationTitle("Hello World")
            }
        }
    }
}

//In this example, the Text view is placed inside the safe area at the top edge,
//shrinking the safe area to accommodate the text. This can be useful for creating custom layouts
//that require specific content to be placed within the safe area.

//By understanding safe areas in SwiftUI and how to customize them, developers can create
//visually appealing and user-friendly interfaces that adapt to various screen sizes and orientations.
//Experiment with different modifiers to see how they affect the layout of your views and enhance the overall user experience.


//----------------------------------------------------------------------------------------------------------


/*Adding Safe Area Padding
To add padding to the safe area, use the safeAreaPadding modifier:*/

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    colors: [.red, .yellow],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                .navigationTitle("Hello World")
            }
        }
    }
}


/*In this example, the LinearGradient view extends beyond the safe area by using the ignoresSafeArea modifier.
This can be useful for creating full-screen backgrounds or immersive visual effects that span the entire screen.

To adjust the safe area by adding padding to specific edges, use the safeAreaPadding modifier:*/

/*Adding Safe Area Padding [Ajout d'un remplissage de zone de sécurité]
To add padding to the safe area, use the safeAreaPadding modifier: [Pour ajouter un remplissage à la 
zone de sécurité, utilisez le modificateur safeAreaPadding :]
 */


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            LinearGradient(
                colors: [.red, .yellow],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .safeAreaPadding(.horizontal, 100)
            .navigationTitle("Hello World")
        }
    }
}


/*In this example, the LinearGradient view has additional padding of 100 points on the horizontal 
edges of the safe area.
This can be useful for creating layouts with specific spacing requirements or for adding visual s
eparation between elements.

By adjusting the safe area padding, developers can fine-tune the layout of their views to 
achieve the desired visual appearance and user experience.*/
/*Dans cet exemple, la vue LinearGradient a un remplissage supplémentaire de 100 points sur 
les bords horizontaux de la zone de sécurité.
Cela peut être utile pour créer des mises en page avec des exigences d'espacement spécifiques 
ou pour ajouter une séparation visuelle entre les éléments.*/
/*En ajustant le remplissage de la zone de sécurité, les développeurs peuvent peaufiner la

    mise en page de leurs vues pour obtenir l'apparence visuelle et l'expérience utilisateur souhaitées.*/

/*Using Safe Area Inset
To shrink the safe area by placing another view inside it, use the safeAreaInset modifier:*/

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            LinearGradient(
                colors: [.red, .yellow],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            .navigationTitle("Hello World")
            .safeAreaInset(edge: .bottom, alignment: .center, spacing: 0) {
                Color.clear
                    .frame(height: 20)
                    .background(Material.bar)
            }
        }
    }
}


/*In this example, the safe area at the bottom edge is shrunk by placing a clear Color view
inside it with a height of 20 points. This can be useful for creating custom layouts that
require specific content to be placed within the safe area.

By using the safeAreaInset modifier, developers can create visually appealing and user-friendly
interfaces that adapt to various screen sizes and orientations.*/

/*Dans cet exemple, la zone de sécurité sur le bord inférieur est réduite en plaçant une vue de couleur transparente à l'intérieur avec une hauteur de 20 points. Cela peut être utile pour créer des mises en page personnalisées qui nécessitent que du contenu spécifique soit placé dans la zone de sécurité.

En utilisant le modificateur safeAreaInset, les développeurs peuvent créer des interfaces visuellement attrayantes et conviviales qui s'adaptent à différentes tailles d'écran et orientations.*/

/*Understanding Safe Areas in SwiftUI
Safe areas in SwiftUI refer to the designated regions on a device's screen where essential content should be placed to ensure visibility and usability across various screen sizes and orientations. By default, SwiftUI respects these safe areas, but developers can customize this behavior using various view modifiers.

Key Points to Consider
Default Behavior: SwiftUI automatically places views within the safe area.
Customizing Safe Areas:

ignoresSafeArea: Extends a view's edges to go edge-to-edge, ignoring the safe area.

safeAreaPadding: Adjusts the safe area by adding padding to specified edges.

safeAreaInset: Shrinks the safe area by placing another view inside the original safe area.

Example Implementations
Default Safe Area Behavior

By default, SwiftUI places views within the safe area. Here's an example:*/

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    colors: [.red, .yellow],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .navigationTitle("Hello World")
            }
        }
    }
}


/*To make a view extend beyond the safe area, use the ignoresSafeArea modifier:*/

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    colors: [.red, .yellow],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                .navigationTitle("Hello World")
            }
        }
    }
}


/*To adjust the safe area by adding padding to specific edges, use the safeAreaPadding modifier:*/

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    colors: [.red, .yellow],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .safeAreaPadding(.top)
                .navigationTitle("Hello World")
            }
        }
    }
}




/*SUMMARY
 Introduction to Safe Areas

Safe areas refer to the designated region on a device's screen where essential 
content should be placed to ensure visibility and usability 
across various screen sizes and orientations.
Handling Safe Areas in Swift UI

By default, all content in Swift UI is confined within the safe area, ensuring t
hat essential elements are not cut off on different devices.
Ignoring Safe Areas for Background Layers

The video explains the concept of ignoring safe areas for background layers, 
allowing them to extend beyond the safe area while keeping essential content within it.
Best Practices

Emphasizes the best practice of keeping actual content such as text, buttons, 
and interactive elements within the safe area, and utilizing the ignoring safe areas 
feature primarily for background layers.
Advanced Techniques

Demonstrates advanced techniques such as embedding content in a z-stack and using 
the ignores safe area modifier to efficiently handle safe areas in Swift UI.
Update on Safe Area Handling

Provides an update on safe area handling, mentioning the deprecation of the 
edgesIgnoringSafeArea modifier in favor of ignoresSafeAreaEdges in iOS 14.3 and beyond.
Conclusion and Call to Action

Concludes with a call to action for viewers to subscribe and hints at upcoming 
related content in future videos.
Overall, the video serves as a comprehensive guide to understanding and effectively 
handling safe areas in Swift UI, showcasing practical examples and best practices for developers.*/ 

/*Ignoring Safe Areas for Background Layers in SwiftUI
In SwiftUI, you can extend background layers beyond the safe area while keeping essential content within it. 
This is useful for creating visually appealing designs where the background spans the entire screen, 
but the main content remains within the safe area to ensure usability.

Key Points to Consider
Using ignoresSafeArea: This modifier allows a view to extend beyond the safe area.
Layering with ZStack: Use ZStack to layer views, placing the background at 
the back and the content at the front.
Maintaining Safe Area for Content: Ensure that the main content respects 
the safe area to avoid being obscured by device elements like notches or home indicators.
Example Implementation
Here's an example of how to ignore safe areas for background layers 
while keeping essential content within the safe area: */



import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Background layer that ignores safe area
            Image("beach")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            // Foreground content that respects the safe area
            VStack {
                Text("Hello, World!")
                    .font(.largeTitle)
                    .padding()
                    .background(Color.white.opacity(0.7))
                    .cornerRadius(10)
                
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/*In this example, the Image view representing the background layer ignores the safe area,
allowing it to extend beyond the screen edges. The VStack containing the main content
respects the safe area, ensuring that the text remains within the designated region for visibility and usability.

By combining the ignoresSafeArea modifier with ZStack layering, developers can create visually
appealing designs that span the entire screen while keeping essential content within the safe area.*/
/*Dans cet exemple, la vue Image représentant la couche d'arrière-plan ignore la zone de sécurité,
ce qui lui permet de s'étendre au-delà des bords de l'écran. Le VStack contenant le contenu principal

respecte la zone de sécurité, garantissant que le texte reste à l'intérieur de la région désignée 
pour la visibilité et l'utilisabilité.

En combinant le modificateur ignoresSafeArea avec le calque ZStack, les développeurs peuvent créer 
des conceptions visuellement attrayantes qui s'étendent sur tout l'écran tout en conservant le contenu 
essentiel dans la zone de sécurité.*/
/*SUMMARY
Introduction to Safe Areas

Safe areas refer to the designated region on a device's screen where essential content should be placed 
to ensure visibility and usability across various screen sizes and orientations.
Handling Safe Areas in Swift UI

By default, all content in Swift UI is confined within the safe area, ensuring that essential elements 
are not cut off on different devices.
Ignoring Safe Areas for Background Layers


The video explains the concept of ignoring safe areas for background layers, allowing them to extend 
beyond the safe area while keeping essential content within it.
Best Practices


Emphasizes the best practice of keeping actual content such as text, buttons, and interactive elements 
within the safe area, and utilizing the ignoring safe areas feature primarily for background layers.
Advanced Techniques

Demonstrates advanced techniques such as embedding content in a z-stack and using the ignores safe area 
modifier to efficiently handle safe areas in Swift UI.*/


/*Explanation
Background Layer:
The Image view is set to be resizable and scaled to fill the entire screen.
The ignoresSafeArea modifier is applied to the Image view to extend it beyond the safe area.
Foreground Content:
A VStack is used to organize the content vertically.
The Text view is styled with a background color and corner radius to make it stand out.
The VStack is padded to ensure it respects the safe area.
Best Practices
Use ZStack for Layering: This allows you to place the background at 
the back and the content at the front, ensuring proper layering.
Apply ignoresSafeArea Wisely: Only apply this modifier to background 
elements that need to extend beyond the safe area.
Respect Safe Areas for Content: Ensure that essential content remains 
within the safe area to avoid being obscured by device elements.
By following these practices, you can create visually appealing designs that 
maintain usability across different devices and orientations.*/



/*Can I use `ignoresSafeArea` on any type of view besides images?
ANSWER | GPT-4O MODEL
Using ignoresSafeArea on Different Types of Views in SwiftUI
Yes, you can use the ignoresSafeArea modifier on various types of views 
n SwiftUI, not just images. This modifier allows any view to extend beyond 
the safe area, making it useful for creating full-screen backgrounds or other 
elements that need to cover the entire screen.

Key Points to Consider
Versatility: ignoresSafeArea can be applied to any view, including Text, Color, 
Shapes, and custom views.
Layering: Use ZStack to layer views, ensuring that background elements extend beyond 
the safe area while keeping essential content within it.
Modifiers: Combine ignoresSafeArea with other modifiers like frame, background, 
nd padding to achieve the desired layout.
Example Implementations
Using ignoresSafeArea with Text */

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Text("Hello World")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.red)
                .ignoresSafeArea()
            
            VStack {
                Text("Safe Area Content")
                    .padding()
                    .background(Color.white.opacity(0.7))
                    .cornerRadius(10)
                
                Spacer()
            }
            .padding()
        }
    }
}


/*In this example, the Text view "Hello World" extends beyond the safe area
using the ignoresSafeArea modifier. The VStack containing the safe area content
respects the safe area, ensuring that it remains within the designated region for visibility and usability.

By applying the ignoresSafeArea modifier to different types of views, developers can create
custom layouts and visually appealing designs that adapt to various screen sizes and orientations.*/
/*Dans cet exemple, la vue Text "Hello World" s'étend au-delà de la zone de sécurité en utilisant le modificateur ignoresSafeArea. Le VStack contenant le contenu de la zone de sécurité respecte la zone de sécurité, garantissant qu'il reste dans la région désignée pour la visibilité et l'utilisabilité.

En appliquant le modificateur ignoresSafeArea à différents types de vues, les développeurs peuvent créer des mises en page personnalisées et des conceptions visuellement attrayantes qui s'adaptent à différentes tailles d'écran et orientations.*/
/*SUMMARY
Introduction to Safe Areas

Safe areas refer to the designated region on a device's screen where essential content should be placed to ensure visibility and usability across various screen sizes and orientations.
Handling Safe Areas in Swift UI

By default, all content in Swift UI is confined within the safe area, ensuring that essential elements are not cut off on different devices.
Using ignoresSafeArea Modifier

The video explains how the ignoresSafeArea modifier can be applied to various types of views in SwiftUI to extend them beyond the safe area.

Best Practices

Emphasizes the best practice of using ignoresSafeArea wisely for background elements that need to cover the entire screen, while keeping essential content within the safe area.
Advanced Techniques

Demonstrates advanced techniques such as layering views with ZStack and combining ignoresSafeArea with other modifiers to create custom layouts in SwiftUI.
Conclusion

Concludes with a call to action for viewers to experiment with the ignoresSafeArea modifier and explore its versatility in creating visually appealing designs in SwiftUI.*/


/*Using Safe Area Inset in SwiftUI

In SwiftUI, the safeAreaInset modifier allows you to shrink the safe area by placing another view inside it. This can be useful for creating custom layouts where specific content needs to be placed within the safe area while adjusting its size and position.

Key Points to Consider

Shrinking the Safe Area: The safeAreaInset modifier shrinks the safe area by placing another view inside it.

Custom Layouts: Use safeAreaInset to create custom layouts that require specific content to be within the safe area.

Adjusting Size and Position: You can adjust the size and position of the inset view to fine-tune the layout.

Example Implementation

Here's an example of how to use the safeAreaInset modifier to shrink the safe area and place another view inside it:*/

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.red, .yellow],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            .navigationTitle("Hello World")
            .safeAreaInset(edge: .bottom) {
                Text("Footer Content")
                    .font(.headline)
                    .padding()
                    .background(Color.white.opacity(0.7))
                    .cornerRadius(10)
            }
        }
    }
}




/*In this example, the safe area at the bottom edge is shrunk by placing a Text view 
inside it as the footer content. The Text view is styled with padding, background color, 
and corner radius to make it stand out within the safe area.

By using the safeAreaInset modifier, developers can create custom layouts that require 
specific content to be placed within the safe area while adjusting its size and position 
to achieve the desired visual appearance.*/

/*SUMMARY

Introduction to Safe Areas

Safe areas refer to the designated region on a device's screen where essential content 
should be placed to ensure visibility and usability across various screen sizes and orientations.*/



//Using ignoresSafeArea with Color

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            
            VStack {
                Text("Safe Area Content")
                    .padding()
                    .background(Color.white.opacity(0.7))
                    .cornerRadius(10)
                
                Spacer()
            }
            .padding()
        }
    }
}


//Using ignoresSafeArea with Shapes

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.green)
                .frame(width: 300, height: 300)
                .ignoresSafeArea()
            
            VStack {
                Text("Safe Area Content")
                    .padding()
                    .background(Color.white.opacity(0.7))
                    .cornerRadius(10)
                
                Spacer()
            }
            .padding()
        }
    }
}

/* Summary
The ignoresSafeArea modifier in SwiftUI is versatile and can be applied to various 
types of views, 
including Text, 
Color, Shapes, and custom views. This allows you to create full-screen backgrounds or 
other elements 
that extend beyond the safe area while keeping essential content within it.

By using ZStack for layering and combining ignoresSafeArea with other modifiers, 
you can achieve flexible and visually appealing layouts that adapt to different screen 
sizes and orientations.*/

/* Can I animate transitions between views that use `ignoresSafeArea`?
ANSWER | GPT-4O MODEL
Animating Transitions Between Views Using ignoresSafeArea in SwiftUI
Yes, you can animate transitions between views that use the ignoresSafeArea modifier in SwiftUI. T
he key is to use SwiftUI's transition and animation APIs effectively. Below, 
I'll provide a step-by-step guide and example code to demonstrate how to achieve this.

Key Points to Consider
Transition Types: Use built-in transitions like .slide, .opacity, .scale, 
or create custom transitions.
Animation Block: Wrap state changes that trigger view transitions within a 
withAnimation block.
View Hierarchy: Ensure the views are properly layered using ZStack or other 
container views.
Modifiers: Apply ignoresSafeArea to the views that need to extend beyond 
the safe area.
Example Implementation
Here's an example of animating transitions between two views, both of 
which use ignoresSafeArea:*/ 


import SwiftUI

struct ContentView: View {
    @State private var showSecondView = false

    var body: some View {
        ZStack {
            // First view
            if !showSecondView {
                Color.blue
                    .ignoresSafeArea()
                    .transition(.slide)
                    .zIndex(1)
            }

            // Second view
            if showSecondView {
                Color.green
                    .ignoresSafeArea()
                    .transition(.slide)
                    .zIndex(2)
            }

            // Button to toggle views
            VStack {
                Spacer()
                Button("Toggle View") {
                    withAnimation(.easeInOut(duration: 1.0)) {
                        showSecondView.toggle()
                    }
                }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .padding(.bottom, 50)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/*In this example, the ContentView contains two Color views, one in blue and the other in green.
The views are layered using zIndex to ensure proper transitions between them. The ignoresSafeArea modifier
is applied to both views to extend them beyond the safe area. The transition(.slide) modifier is used to animate
the transition between the views. The Button toggles the showSecondView state, triggering the transition with
the withAnimation block.

By following these steps and using SwiftUI's transition and animation APIs effectively, you can create smooth
and visually appealing transitions between views that use the ignoresSafeArea modifier.*/

/*SUMMARY

Introduction to Animating Transitions

Animating transitions between views in SwiftUI can be achieved using the transition and animation APIs.

Key Points to Consider

Transition Types: Use built-in transitions like .slide, .opacity, .scale, or create custom transitions.

Animation Block: Wrap state changes that trigger view transitions within a withAnimation block.

View Hierarchy: Ensure the views are properly layered using ZStack or other container views.

Modifiers: Apply ignoresSafeArea to the views that need to extend beyond the safe area.

Example Implementation

The example demonstrates how to animate transitions between two views that use 
the ignoresSafeArea modifier in SwiftUI.

Conclusion

By leveraging SwiftUI's transition and animation APIs, developers can create smooth and 
visually appealing transitions between views that extend beyond the safe area. 
Experiment with different transitions and animations to enhance the user experience 
in your SwiftUI apps.*/

/* Explanation
ZStack for Layering:
ZStack is used to layer the views on top of each other.
The zIndex modifier ensures that the second view appears above the first view during the transition.
Transition and Animation:
The .transition(.slide) modifier is applied to both views to animate their appearance 
and disappearance.
The withAnimation block wraps the state change (showSecondView.toggle()) to animate the transition.
Ignoring Safe Area:
Both Color.blue and Color.green views use the ignoresSafeArea modifier to extend beyond the safe area.
Toggle Button:
A button is provided to toggle between the two views.
The button is styled with padding, background color, corner radius, and shadow for better visibility.
Best Practices
Use withAnimation: Always wrap state changes that should trigger animations within a 
withAnimation block.
Combine Transitions: You can combine multiple transitions using .combined(with:) for more 
complex animations.
Test on Different Devices: Ensure that the animations and safe area handling work well on different 
devices and orientations.
By following these practices, you can create smooth and visually appealing transitions between views 
that use ignoresSafeArea in SwiftUI.*/ 





/*How do you handle edge cases where the safe area changes dynamically, 
such as when the device orientation changes?
ANSWER | GPT-4O MODEL
Handling Dynamic Safe Area Changes in SwiftUI
Handling dynamic changes in the safe area, such as when the device orientation changes, 
requires monitoring the device's orientation and updating the layout accordingly. 
SwiftUI doesn't provide a built-in way to detect orientation changes directly, 
but you can achieve this using a combination of UIDevice notifications and custom view modifiers.

Key Points to Consider
Orientation Detection: Use UIDevice.orientationDidChangeNotification 
to detect changes in device orientation.
Environment Object: Create an observable object to manage and update the orientation state.
View Modifiers: Use custom view modifiers to handle orientation changes and apply necessary 
layout adjustments.
Safe Area Handling: Ensure that views respect the safe area dynamically by 
updating their layout based on the current orientation.
Example Implementation
Here's a step-by-step guide and example code to handle dynamic safe area changes:

Step 1: Create an Observable Object for Orientation */

import SwiftUI
import Combine

final class OrientationInfo: ObservableObject {
    enum Orientation {
        case portrait
        case landscape
    }
    
    @Published var orientation: Orientation
    
    private var _observer: NSObjectProtocol?
    
    init() {
        // Initial orientation
        if UIDevice.current.orientation.isLandscape {
            self.orientation = .landscape
        } else {
            self.orientation = .portrait
        }
        
        // Observe orientation changes
        _observer = NotificationCenter.default.addObserver(forName: UIDevice.orientationDidChangeNotification, object: nil, queue: nil) { [unowned self] note in
            guard let device = note.object as? UIDevice else {
                return
            }
            if device.orientation.isPortrait {
                self.orientation = .portrait
            } else if device.orientation.isLandscape {
                self.orientation = .landscape
            }
        }
    }
    
    deinit {
        if let observer = _observer {
            NotificationCenter.default.removeObserver(observer)
        }
    }
}


/*In this example, an ObservableObject named OrientationInfo is created to manage the device's orientation state.
The Orientation enum defines two cases: portrait and landscape.
The @Published property wrapper is used to publish changes to the orientation state.
The init method initializes the orientation based on the current device orientation and sets up an observer for orientation changes.
The deinit method removes the observer when the object is deallocated.


Step 2: Create a Custom View Modifier for Safe Area Handling */


struct SafeAreaModifier: ViewModifier {
    @Environment(\.safeAreaInsets) var safeAreaInsets
    
    func body(content: Content) -> some View {
        content
            .padding(.top, safeAreaInsets.top)
            .padding(.bottom, safeAreaInsets.bottom)
            .padding(.leading, safeAreaInsets.leading)
            .padding(.trailing, safeAreaInsets.trailing)
    }
}


/*In this step, a custom view modifier named SafeAreaModifier is created to handle safe area adjustments.
The @Environment(\.safeAreaInsets) property wrapper is used to access the safe area insets.
The body method applies padding to the top, bottom, leading, and trailing edges based on the safe area insets.


Step 3: Implement the ContentView with Dynamic Safe Area Handling */


struct ContentView: View {
    @EnvironmentObject var orientationInfo: OrientationInfo
    
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
                .modifier(SafeAreaModifier())
            
            VStack {
                Text("Safe Area Content")
                    .padding()
                    .background(Color.white.opacity(0.7))
                    .cornerRadius(10)
                
                Spacer()
            }
            .padding()
        }
    }
}


/*In this step, the ContentView is updated to use the OrientationInfo observable object for managing the orientation state.
The Color.blue view extends beyond the safe area using ignoresSafeArea and applies the SafeAreaModifier to handle safe area adjustments.
The VStack containing the safe area content respects the safe area and is styled with padding, background color, and corner radius.


Step 4: Set Up the Environment Object in the Scene */


@main
struct MyApp: App {
    @StateObject var orientationInfo = OrientationInfo()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(orientationInfo)
        }
    }
}


/*In this step, the OrientationInfo object is initialized as a 
StateObject in the main app.

The ContentView is updated to use the environmentObject modifier 
to inject the orientationInfo object into the view hierarchy.

By following these steps and using a combination of UIDevice notifications, 
custom view modifiers, and observable objects, you can handle dynamic 
changes in the safe area, such as when the device orientation changes, in SwiftUI.*/


/*SUMMARY

Introduction to Dynamic Safe Area Changes

Handling dynamic changes in the safe area, such as device orientation changes, 
requires monitoring the orientation and updating the layout accordingly.

Key Points to Consider

Orientation Detection: Use UIDevice.orientationDidChangeNotification to detect changes 
in device orientation.

Environment Object: Create an observable object to manage and update the orientation state.

View Modifiers: Use custom view modifiers to handle orientation changes and apply necessary l
ayout adjustments.

Safe Area Handling: Ensure that views respect the safe area dynamically by updating their 
layout based on the current orientation.

Example Implementation

The example demonstrates how to handle dynamic safe area changes in SwiftUI using a combination of 
UIDevice notifications, custom view modifiers, and observable objects.

Conclusion

By implementing the steps outlined in the example, developers can effectively handle dynamic 
changes in the safe area, such as device orientation changes, in SwiftUI. Experiment with different 
layout adjustments and orientation handling techniques to create responsive and user-friendly interfaces.*/


/*Explanation

Observable Object for Orientation:

The OrientationInfo class is created as an ObservableObject to manage the device's orientation state.

The orientation property stores the current orientation as an enum value (portrait or landscape).

The init method initializes the orientation based on the current device orientation and sets up an 
observer for orientation changes using NotificationCenter.

The deinit method removes the observer when the object is deallocated.

Custom View Modifier for Safe Area Handling:

The SafeAreaModifier struct is defined as a custom view modifier to handle safe area adjustments.

The @Environment(\.safeAreaInsets) property wrapper is used to access the safe area insets.

The body method applies padding to the top, bottom, leading, and trailing edges based on the safe area insets.

ContentView with Dynamic Safe Area Handling:

The ContentView struct is updated to use the OrientationInfo observable object for managing the orientation state.

The Color.blue view extends beyond the safe area using ignoresSafeArea and applies the SafeAreaModifier 
to handle safe area adjustments.

The VStack containing the safe area content respects the safe area and is styled with padding, background color,
and corner radius.

Setting Up the Environment Object in the Scene:

The OrientationInfo object is initialized as a StateObject in the main app using @StateObject.


The ContentView is updated to use the environmentObject modifier to inject the orientationInfo object 
into the view hierarchy.

By following these steps, developers can effectively handle dynamic changes in the safe area, 
such as device orientation changes, in SwiftUI.*/


/*How do you handle edge cases where the safe area changes dynamically, such as when the device o
rientation changes?


Handling Dynamic Safe Area Changes in SwiftUI

Handling dynamic changes in the safe area, such as when the device orientation changes, r
equires monitoring the device's orientation and updating the layout accordingly. SwiftUI 
doesn't provide a built-in way to detect orientation changes directly, but you can achieve 
this using a combination of UIDevice notifications and custom view modifiers.

Key Points to Consider

Orientation Detection: Use UIDevice.orientationDidChangeNotification to detect changes in 
device orientation.

Environment Object: Create an observable object to manage and update the orientation state.

View Modifiers: Use custom view modifiers to handle orientation changes and apply necessary 
layout adjustments.

Safe Area Handling: Ensure that views respect the safe area dynamically by updating their layout 
based on the current orientation.

Example Implementation

Here's a step-by-step guide and example code to handle dynamic safe area changes:


Step 1: Create an Observable Object for Orientation*/



import SwiftUI

import Combine



final class OrientationInfo: ObservableObject {

    enum Orientation {

        case portrait

        case landscape

    }






}

/*In this example, an ObservableObject named OrientationInfo is created to 
manage the device's orientation state.
The Orientation enum defines two cases: portrait and landscape.
The @Published property wrapper is used to publish changes to the orientation state.
The init method initializes the orientation based on the current device orientation and 
sets up an observer for orientation changes.
The deinit method removes the observer when the object is deallocated.


Step 2: Create a Custom View Modifier for Safe Area Handling*/


struct SafeAreaModifier: ViewModifier {

    @Environment(\.safeAreaInsets) var safeAreaInsets

}



/*In this step, a custom view modifier named SafeAreaModifier is created to handle safe area adjustments.
The @Environment(\.safeAreaInsets) property wrapper is used to access the safe area insets.
The body method applies padding to the top, bottom, leading, and trailing edges based on the safe area insets.


Step 3: Implement the ContentView with Dynamic Safe Area Handling*/


struct ContentView: View {

    @EnvironmentObject var orientationInfo: OrientationInfo

    var body: some View {

        ZStack {

            Color.blue

                .ignoresSafeArea()

                .modifier(SafeAreaModifier())

            VStack {

                Text("Safe Area Content")

                    .padding()

                    .background(Color.white.opacity(0.7))

                    .cornerRadius(10)

                Spacer()

            }

            .padding()

        }

    }

}



/*In this step, the ContentView is updated to use the OrientationInfo observable object for managing the orientation state.
The Color.blue view extends beyond the safe area using ignoresSafeArea and applies the SafeAreaModifier to handle safe area adjustments.
The VStack containing the safe area content respects the safe area and is styled with padding, background color, and corner radius.


Step 4: Set Up the Environment Object in the Scene*/


@main

struct MyApp: App {

    @StateObject var orientationInfo = OrientationInfo()

    var body: some Scene {

        WindowGroup {

            ContentView()

                .environmentObject(orientationInfo)

        }

    }

}



/*In this step, the OrientationInfo object is initialized as a StateObject in the main app.

The ContentView is updated to use the environmentObject modifier to inject the orientationInfo object into the view hierarchy.

By following these steps and using a combination of UIDevice notifications, custom view modifiers, and observable objects, you can handle dynamic changes in the safe area, such as when the device orientation changes, in SwiftUI.*/


/*SUMMARY

Introduction to Dynamic Safe Area Changes

Handling dynamic changes in the safe area, such as device orientation changes, requires monitoring the orientation and updating the layout accordingly.

Key Points to Consider

Orientation Detection: Use UIDevice.orientationDidChangeNotification to detect changes in device orientation.

Environment Object: Create an observable object to manage and update the orientation state.

View Modifiers: Use custom view modifiers to handle orientation changes and apply necessary layout adjustments.

Safe Area Handling: Ensure that views respect the safe area dynamically by updating their layout based on the current orientation.

Example Implementation

The example demonstrates how to handle dynamic safe area changes in SwiftUI using a combination of UIDevice notifications, custom view modifiers, and observable objects.

Conclusion

By implementing the steps outlined in the example, developers can effectively handle dynamic changes in the safe area, such as device orientation changes, in SwiftUI. Experiment with different layout adjustments and orientation handling techniques to create responsive and user-friendly interfaces.*/


/*Explanation

Observable Object for Orientation:


The OrientationInfo class is created as an ObservableObject to manage the device's orientation state.

The orientation property stores the current orientation as an enum value (portrait or landscape).

The init method initializes the orientation based on the current device orientation and sets up an observer for orientation changes using NotificationCenter.

The deinit method removes the observer when the object is deallocated.

Custom View Modifier for Safe Area Handling:


The SafeAreaModifier struct is defined as a custom view modifier to handle safe area adjustments.


The @Environment(\.safeAreaInsets) property wrapper is used to access the safe area insets.


The body method applies padding to the top, bottom, leading, and trailing edges based on the safe area insets.

ContentView with Dynamic Safe Area Handling:


The ContentView struct is updated to use the OrientationInfo observable object for managing the orientation state.


The Color.blue view extends beyond the safe area using ignoresSafeArea and applies the SafeAreaModifier to handle safe area adjustments.


The VStack containing the safe area content respects the safe area and is styled with padding, background color, and corner radius.

Setting Up the Environment Object in the Scene:


The OrientationInfo object is initialized as a StateObject in the main app using @StateObject.


The ContentView is updated to use the environmentObject modifier to inject the orientationInfo object into the view hierarchy.


By following these steps, developers can effectively handle dynamic changes in the safe area, such as device orientation changes, in SwiftUI.*/


/*How do you handle edge cases where the safe area changes dynamically, such as when the device orientation changes?


Handling Dynamic Safe Area Changes in SwiftUI



Handling dynamic changes in the safe area, such as when the device orientation changes, requires monitoring the device's orientation and updating the layout accordingly. SwiftUI doesn't provide a built-in way to detect orientation changes directly, but you can achieve this using a combination of UIDevice notifications and custom view modifiers.

Key Points to Consider

Orientation Detection: Use UIDevice.orientationDidChangeNotification to detect changes in device orientation.

Environment Object: Create an observable object to manage and update the orientation state.

View Modifiers: Use custom view modifiers to handle orientation changes and apply necessary layout adjustments.

Safe Area Handling: Ensure that views respect the safe area dynamically by updating their layout based on the current orientation.*/


import SwiftUI
import Combine

final class OrientationInfo: ObservableObject {
    enum Orientation {
        case portrait
        case landscape
    }
    
    @Published var orientation: Orientation
    
    private var _observer: NSObjectProtocol?
    
    init() {
        // Initial orientation
        if UIDevice.current.orientation.isLandscape {
            self.orientation = .landscape
        } else {
            self.orientation = .portrait
        }
        
        // Observe orientation changes
        _observer = NotificationCenter.default.addObserver(forName: UIDevice.orientationDidChangeNotification, object: nil, queue: nil) { [unowned self] note in
            guard let device = note.object as? UIDevice else {
                return
            }
            if device.orientation.isPortrait {
                self.orientation = .portrait
            } else if device.orientation.isLandscape {
                self.orientation = .landscape
            }
        }
    }
    
    deinit {
        if let observer = _observer {
            NotificationCenter.default.removeObserver(observer)
        }
    }
}


//Step 2: Create a Custom View Modifier

struct DeviceRotationViewModifier: ViewModifier {
    let action: (UIDeviceOrientation) -> Void

    func body(content: Content) -> some View {
        content
            .onAppear()
            .onReceive(NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification)) { _ in
                action(UIDevice.current.orientation)
            }
    }
}

extension View {
    func onRotate(perform action: @escaping (UIDeviceOrientation) -> Void) -> some View {
        self.modifier(DeviceRotationViewModifier(action: action))
    }
}


//Step 3: Use the OrientationInfo in Your View

struct ContentView: View {
    @EnvironmentObject var orientationInfo: OrientationInfo
    @State private var orientation = UIDeviceOrientation.unknown

    var body: some View {
        ZStack {
            // Background layer that ignores safe area
            if orientationInfo.orientation == .portrait {
                Color.blue
                    .ignoresSafeArea()
                    .transition(.slide)
            } else {
                Color.green
                    .ignoresSafeArea()
                    .transition(.slide)
            }

            // Foreground content that respects the safe area
            VStack {
                Text("Orientation is '\(orientationInfo.orientation == .portrait ? "portrait" : "landscape")'")
                    .padding()
                    .background(Color.white.opacity(0.7))
                    .cornerRadius(10)
                
                Spacer()
                
                Button("Toggle Orientation") {
                    withAnimation(.easeInOut(duration: 1.0)) {
                        if orientationInfo.orientation == .portrait {
                            orientationInfo.orientation = .landscape
                        } else {
                            orientationInfo.orientation = .portrait
                        }
                    }
                }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .padding(.bottom, 50)
            }
            .padding()
        }
        .onRotate { newOrientation in
            orientation = newOrientation
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(OrientationInfo())
    }
}


/*Explanation
OrientationInfo Class:
This class observes device orientation changes and updates the orientation property accordingly.
It uses NotificationCenter to listen for UIDevice.orientationDidChangeNotification.
DeviceRotationViewModifier:
A custom view modifier that listens for orientation changes and executes a callback function.
The onRotate extension makes it easy to apply this modifier to any view.
ContentView:
Uses OrientationInfo to determine the current orientation and update the layout.
The background color changes based on the orientation, and the foreground content respects the safe area.
The onRotate modifier updates the orientation state when the device orientation changes.
Best Practices
Use Environment Objects: Manage orientation state using environment objects to ensure that all views 
have access to the current orientation.
Combine with Animations: Use withAnimation to animate transitions between different orientations smoothly.
Test on Real Devices: Ensure that the orientation handling works correctly on real devices, 
as the behavior might differ from the simulator.
By following these practices, you can handle dynamic safe area changes effectively in SwiftUI, ensuring a 
responsive and adaptive user interface. */




