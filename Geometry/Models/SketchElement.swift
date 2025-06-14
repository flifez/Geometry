import SwiftUI

// A basic point type the user can place on the canvas.
struct Point: Identifiable {
    let id = UUID()
    var location: CGPoint
}

// Enum that will eventually contain many kinds of drawable geometry.
// For now we start with just points, but lines, circles, etc. can be added later.
enum SketchElement: Identifiable {
    case point(Point)

    // MARK: - Identifiable
    var id: UUID {
        switch self {
        case .point(let point):
            return point.id
        }
    }

    // MARK: - Drawing
    func draw(in context: GraphicsContext) {
        switch self {
        case .point(let point):
            let radius: CGFloat = 4
            let rect = CGRect(x: point.location.x - radius,
                              y: point.location.y - radius,
                              width: radius * 2,
                              height: radius * 2)
            context.fill(Path(ellipseIn: rect), with: .color(.accentColor))
        }
    }
} 