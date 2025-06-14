import SwiftUI
import Observation

struct SketchpadView: View {
    @Bindable var viewModel: SketchpadViewModel

    // TODO: do not use a DragGesture because on macOS, it does not draw on the first click
    private var addPointGesture: some Gesture {
        DragGesture(minimumDistance: 0)
            .onEnded { value in
                viewModel.addPoint(at: value.location)
            }
    }

    var body: some View {
        GeometryReader { geometry in
            Canvas { context, size in
                for element in viewModel.elements {
                    element.draw(in: context)
                }
            }
            .gesture(addPointGesture)
            .background(Color.white)
        }
    }
}

#Preview {
    SketchpadView(viewModel: SketchpadViewModel())
        .frame(width: 400, height: 300)
}
