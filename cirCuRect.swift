import SwiftUI
// Ajoutez ici toute autre importation nécessaire spécifique à votre projet
import PlaygroundSupport

struct GrowingShapes : View {
    @State private var scale: CGFloat = 1.0

    var body: some View {
        VStack {
            Circle()
                .scaleEffect(scale)
                .animation(.easeInOut(duration: 3).repeatForever(autoreverses: true))
            
            Rectangle()
                .scaleEffect(scale)
                .animation(.easeInOut(duration: 3).repeatForever(autoreverses: true))
            
            Square()
                .scaleEffect(scale)
                .animation(.easeInOut(duration: 3).repeatForever(autoreverses: true))
        }
        .onAppear {
            withAnimation(.easeInOut(duration: 3).repeatForever(autoreverses: true)) {
                self.scale = 2.0
            }
        }
    }
}

struct Square: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
            path.closeSubpath()
        }
    }
}

struct GrowingShapes_Previews: PreviewProvider {
    static var previews: some View {
        GrowingShapes()
    }
}
/* This code creates a VStack containing a Circle, Rectangle, and Square (defined as a custom shape). 
The scaleEffect modifier is applied to each shape, and the animation modifier is used to 
animate the scale state variable.
When the view appears, the onAppear modifier triggers the animation, scaling the shapes 
up to twice their original size and then back down to their original size, repeating indefinitely.
Note that I've used the same animation duration and easing curve for all three shapes, 
but you can adjust these parameters to create different animation effects.*/