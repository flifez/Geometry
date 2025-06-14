import Observation
import SwiftUI

@Observable
final class SketchpadViewModel {
    // All drawable elements that exist on the canvas.
    var elements: [SketchElement] = []

    // Adds a new point at the specified canvas-local location.
    func addPoint(at location: CGPoint) {
        let point = Point(location: location)
        elements.append(.point(point))
    }
} 
