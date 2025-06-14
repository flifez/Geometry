//
//  ContentView.swift
//  Geometry
//
//  Created by FlifeX on 6/15/25.
//

import SwiftUI
import Observation

struct ContentView: View {
    @Bindable private var viewModel = SketchpadViewModel()

    var body: some View {
        NavigationStack {
            SketchpadView(viewModel: viewModel)
                .navigationTitle("Geometry Sketchpad")
                .toolbar {
                    // TODO:
                }
        }
    }
}

#Preview {
    ContentView()
}
