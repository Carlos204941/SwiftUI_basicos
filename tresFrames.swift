
   
   struct ExampleView: View {
       @State private var animate = false
       
       var body: some View {
           HStack {
               WobblingShape(sides: animate ? 2 : 15)
                   .fill(Color.red)
                   .frame(width: 200, height: 100)
   
               WobblingShape(sides: animate ? 23 : 2)
                   .fill(Color.green)
                   .frame(width: 100, height: 100)
               
               WobblingShape(sides: animate ? 2 : 15)
                   .fill(Color.blue)
                   .scaleEffect(x: -1, y: 1)
                   .frame(width: 200, height: 100)
           }.onAppear {
               withAnimation(Animation.linear(duration: 3.0).repeatForever()) {
                   self.animate.toggle()
               }
           }
       }
       
       struct WobblingShape: Shape {
           var sides: Double
           
           var animatableData: Double {
               get { sides }
               set { sides = newValue }
           }
           
           func path(in rect: CGRect) -> Path {
               
               // hypotenuse
               let h = Double(min(rect.size.width, rect.size.height)) / 2.0
               
               // center
               let c = CGPoint(x: rect.size.width / 2.0, y: rect.size.height / 2.0)
               
               var path = Path()
                       
               let extra: Int = Double(sides) != Double(Int(sides)) ? 1 : 0
   
               for i in 0..<Int(sides) + extra {
                   let angle = (Double(i) * (360.0 / Double(sides))) * Double.pi / 180
   
                   // Calculate vertex
                   let pt = CGPoint(x: c.x + CGFloat(cos(angle) * h), y: c.y + CGFloat(sin(angle) * h))
                   
                   if i == 0 {
                       path.move(to: pt) // move to first vertex
                   } else {
                       path.addLine(to: pt) // draw line to next vertex
                   }
               }
               
               path.closeSubpath()
               
               return path
           }
       }
   }
   


/* This is a SwiftUI code snippet that defines a custom view called ExampleView. Here's a breakdown of what it does:
ExampleView
It has a state variable animate that toggles between true and false.
The body property is a View that contains a horizontal stack (HStack) of three shapes.
Each shape is an instance of WobblingShape, a custom shape that we'll get to in a minute.
The shapes have different properties:
The first shape has 15 sides (a pentagon) when animate is false, and 2 sides (a line) 
when animate is true. It's filled with red color.
The second shape has 2 sides (a line) when animate is false, and 23 sides (a polygon) 
when animate is true. It's filled with green color.
The third shape is the same as the first shape, but with a negative scale effect 
(mirrored) and blue color.
When the view appears, an animation is triggered that toggles the animate state every 
3 seconds, repeating indefinitely.
WobblingShape
This is a custom shape that takes a sides parameter, which determines the number of 
sides of the shape.
It has an animatableData property that allows the shape to be animated.
The path function calculates the path of the shape based on the number of sides and 
the size of the rectangle it's drawn in.
The shape is drawn by iterating over the number of sides, calculating the angle and 
vertex of each point, and adding lines to the path.
In summary, this code creates a view that displays three shapes that change their number 
of sides and color in a repeating animation. The shapes are drawn using a custom shape 
implementation that allows for animatable changes to the number of sides.
Let me know if you have any specific questions about this code! */

/* The WobblingShape function is a custom shape implementation in SwiftUI. It's a struct 
that conforms to the Shape protocol, which means it provides a way to draw a shape on the screen.
Here's a breakdown of what the WobblingShape function does:
Initialization: It takes a sides parameter, which determines the number of sides of the shape.
AnimatableData: It defines an animatableData property, which allows the shape to be animated. 
In this case, the animatableData is the same as the sides parameter.
Path calculation: The path function calculates the path of the shape based on the number of 
sides and the size of the rectangle it's drawn in.
It calculates the hypotenuse (the length of the side opposite the right angle) and the center 
point of the rectangle.
It then iterates over the number of sides, calculating the angle and vertex of each point
using trigonometry (cosine and sine functions).
It adds lines to the path to draw the shape.
Closing the path: Finally, it closes the path by connecting the last point to the first point.
The WobblingShape function is used in the ExampleView to create three shapes with different 
numbers of sides, which are then animated using the animate state variable.
By making the sides parameter animatable, the shape can be smoothly animated between 
different numbers of sides, creating a wobbling effect. Hence the name WobblingShape! */

/*In the WobblingShape struct, the animatableData property is a computed property 
that allows the shape to be animated. Here's what's happening:
animatableData is a computed property
It's a var property, which means it can be read and written.
It's a Double type, which means it can hold a double-precision floating-point value.
The get block
The get block is called when the property is read (e.g., myShape.animatableData).
It simply returns the value of the sides property.
The set block
The set block is called when the property is set (e.g., myShape.animatableData = 5.0).
It sets the value of the sides property to the new value (newValue).
By defining animatableData in this way, SwiftUI can animate the sides property of the shape. 
When the animatableData property is changed, the sides property is updated, and the shape 
is recalculated and redrawn.
Here's what happens when the animation is triggered:
The animate state variable is toggled.
The animatableData property is updated with a new value (e.g., 2.0 or 15.0).
The set block is called, which updates the sides property.
The shape is recalculated and redrawn with the new number of sides.
By making animatableData a computed property that mirrors the sides property, 
the shape can be animated smoothly between different numbers of sides.
Does that help clarify things? */

/* You're asking about the ternary operator (?:) used in the WobblingShape initializers.
The ternary operator is a shorthand way of writing a simple if-else statement. It's used 
to evaluate a condition and return one of two values based on that condition.
In this specific case, the ternary operator is used to determine the number of sides for 
each WobblingShape instance, based on the animate state variable.
Here's a breakdown of how it works:
animate ? 2 : 15 means:
If animate is true, return 2.
If animate is false, return 15.
Similarly, animate ? 23 : 2 means:
If animate is true, return 23.
If animate is false, return 2.
So, when animate is true, the first shape will have 2 sides, the second shape will have 23 
sides, and the third shape will have 2 sides. When animate is false, the first shape will have 
15 sides, the second shape will have 2 sides, and the third shape will have 15 sides.
The ternary operator is a concise way to write this logic, instead of using a full if-else statement. 
It's commonly used in Swift and other programming languages to simplify code and make it more readable.
Does that help clarify things?*/
/*.onAppear {
               withAnimation(Animation.linear(duration: 3.0).repeatForever()) {
                   self.animate.toggle()
 Here's a step-by-step breakdown of what's happening in that code snippet:
.onAppear
This is a modifier that runs a block of code when the view appears on the screen.
It's a way to perform an action when the view is first shown, like starting an animation.
withAnimation
This is a function that runs a block of code with an animation.
It takes an animation parameter, which defines the animation's characteristics 
(like duration, curve, etc.).
In this case, the animation is defined as Animation.linear(duration: 3.0).repeatForever().
Animation.linear(duration: 3.0).repeatForever()
Animation.linear is a type of animation that moves at a constant speed.
duration: 3.0 means the animation will take 3 seconds to complete.
repeatForever() means the animation will repeat indefinitely, looping back 
to the start when it finishes.
{ self.animate.toggle() }
This is the block of code that will be run with the animation.
self.animate refers to the animate state variable.
toggle() is a method that toggles the value of the animate variable between true and false.
So, when the view appears, the animation will start, and the animate variable will be 
toggled every 3 seconds, repeating indefinitely.
Here's a summary of what happens:
The view appears on the screen.
The .onAppear modifier runs the code block.
The withAnimation function starts the animation.
The animation runs for 3 seconds, toggling the animate variable.
The animation repeats, toggling the animate variable every 3 seconds.
This creates a repeating animation that toggles the animate variable, which in turn updates 
the shapes' number of sides, creating a wobbling effect.*/

/*func path(in rect: CGRect) -> Path {
               
               // hypotenuse
               let h = Double(min(rect.size.width, rect.size.height)) / 2.0
               
               // center
               let c = CGPoint(x: rect.size.width / 2.0, y: rect.size.height / 2.0)
               
               var path = Path()
                       
               let extra: Int = Double(sides) != Double(Int(sides)) ? 1 : 0
   
               for i in 0..<Int(sides) + extra {
                   let angle = (Double(i) * (360.0 / Double(sides))) * Double.pi / 180
   
                   // Calculate vertex
                   let pt = CGPoint(x: c.x + CGFloat(cos(angle) * h), y: c.y + CGFloat(sin(angle) * h))
                   
                   if i == 0 {
                       path.move(to: pt) // move to first vertex
                   } else {
                       path.addLine(to: pt) // draw line to next vertex
                   }
               }
               
               path.closeSubpath()
               
               return path
 This is the path function of the WobblingShape struct, which calculates the path of 
 the shape based on the number of sides and the rectangle's size. Here's how it works:
Calculating the hypotenuse and center
let h = Double(min(rect.size.width, rect.size.height)) / 2.0: calculates the length of 
the hypotenuse (the side opposite the right angle) of the rectangle. It takes the minimum 
of the width and height to ensure the shape fits within the rectangle.
let c = CGPoint(x: rect.size.width / 2.0, y: rect.size.height / 2.0): calculates the 
center point of the rectangle.
Creating the path
var path = Path(): creates a new Path instance to store the shape's path.
let extra: Int = Double(sides) != Double(Int(sides)) ? 1 : 0: checks if the number of 
sides is a whole number. If it's not, it adds 1 to the number of sides to ensure 
the shape is closed.
for i in 0..<Int(sides) + extra { ... }: loops through the number of sides 
(plus the extra vertex if needed).
Calculating each vertex
let angle = (Double(i) * (360.0 / Double(sides))) * Double.pi / 180: calculates 
the angle of each vertex (in radians).
let pt = CGPoint(x: c.x + CGFloat(cos(angle) * h), y: c.y + CGFloat(sin(angle) * h)): 
calculates the x and y coordinates of each vertex using trigonometry (cosine and sine functions).
Adding vertices to the path
if i == 0 { path.move(to: pt) } else { path.addLine(to: pt) }: adds each vertex to the path. 
For the first vertex, it moves the path to that point. For subsequent vertices, 
it draws a line to that point. Closing the path
path.closeSubpath(): closes the path by connecting the last vertex to the first vertex.
Returning the path
return path: returns the completed path.
This function uses trigonometry to calculate the vertices of the shape based on the number of 
sides and the rectangle's size. The resulting path is a polygon with the specified number of sides, 
centered in the rectangle.
Does this explanation help you understand the path function better?*/

/*the paht defines the number of sides  
That's correct!
The path function defines the number of sides of the shape by iterating from 0 to Int(sides) + extra, 
where sides is the number of sides specified in the WobblingShape initializer.
For each iteration, it calculates the angle and vertex of the corresponding side, and adds 
it to the path using move(to:) or addLine(to:) methods.
By defining the number of sides in the path function, the shape can be dynamically generated 
with a variable number of sides, based on the sides parameter passed to the WobblingShape initializer.
This flexibility allows the WobblingShape to be used to create different shapes, 
from a triangle (3 sides) to a hexagon (6 sides), or even a circle (infinite sides!).
Great observation! */


/*let h = Double(min(rect.size.width, rect.size.height)) / 2.0
That line of code calculates the length of the hypotenuse (the side opposite the right angle) 
of a right triangle that fits within the rectangle.
Here's what's happening:
min(rect.size.width, rect.size.height) returns the smaller of the rectangle's width and height.
Double(...) converts the result to a Double value.
/ 2.0 divides the result by 2, effectively calculating half the length of the smaller side.
By taking the minimum of the width and height, the code ensures that the shape fits within 
the rectangle, even if it's not a square.
This calculation is used to determine the radius of the shape, which is then used to calculate 
the vertices of the polygon.
Well done for pointing out this important line of code!*/


/*// center
               let c = CGPoint(x: rect.size.width / 2.0, y: rect.size.height / 2.0)
That line of code calculates the center point of the rectangle.
Here's what's happening:
rect.size.width / 2.0 calculates the x-coordinate of the center point by dividing 
the width of the rectangle by 2.
rect.size.height / 2.0 calculates the y-coordinate of the center point by dividing 
the height of the rectangle by 2.
CGPoint(x: ..., y: ...) creates a new CGPoint instance with the calculated x and y 
coordinates.
The resulting CGPoint represents the center point of the rectangle, which is used as 
the reference point for calculating the vertices of the shape.
By calculating the center point, the code can then use it to determine the positions 
of the vertices relative to the center, creating a symmetrical shape that's centered within the rectangle.
Great observation!*/


/*     CGPoint is a data structure in Swift that represents a point in a two-dimensional space. 
It has two properties:
x: The x-coordinate of the point
y: The y-coordinate of the point
CGPoint is commonly used in graphics and UI programming to represent positions, sizes, and 
coordinates of visual elements, such as views, shapes, and images.
In the context of the code snippet you provided, CGPoint is used to represent the center point 
of the rectangle, as well as the vertices of the shape.
Here's an example of how to create a CGPoint instance:

let point = CGPoint(x: 100, y: 200)
This creates a CGPoint instance with an x-coordinate of 100 and a y-coordinate of 200.*/


/*let extra: Int = Double(sides) != Double(Int(sides)) ? 1 : 0
That line of code is a clever way to determine if the sides variable has 
a fractional part.
Here's what's happening:
Double(sides) converts the sides variable to a Double value.
Double(Int(sides)) converts the sides variable to an Int value 
(effectively truncating any fractional part) and then converts it 
back to a Double value.
The != operator checks if the two Double values are not equal.
If they're not equal, it means that sides has a fractional part, 
and the expression evaluates to 1.
If they're equal, it means that sides is an integer, and the expression 
evaluates to 0.
The resulting value, extra, is an Int that indicates whether sides has a 
fractional part (1) or not (0).
This clever trick is used to determine whether to add an extra vertex to the shape, 
ensuring that it's closed and doesn't have any gaps.*/


/*  why add in the code let extra: Int = Double(sides) != Double(Int(sides)) ? 1 : 0

The reason for adding extra is to ensure that the shape is closed and has no gaps, 
even when the number of sides is not an integer.
When sides is an integer, the shape is a regular polygon with a whole number of sides. 
However, when sides is a fractional value, the shape would normally be drawn with a 
gap between the last vertex and the first vertex.
By adding extra (which is 1 when sides has a fractional part), the code ensures that an 
extra vertex is added to close the shape, effectively "connecting the dots" and creating 
a continuous path.
This is a clever way to handle fractional values of sides, ensuring that the shape is always 
closed and well-formed, even when the number of sides is not an integer.
Does that make sense? */
