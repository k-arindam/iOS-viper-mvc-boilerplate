//
//  CameraView.swift
//
//
//  Created by Arindam Karmakar on 28/03/24.
//

import SwiftUI

struct CameraView: View {
    @StateObject var presenter: CameraPresenter
    
    init(presenter: CameraPresenter) {
        self._presenter = StateObject(wrappedValue: presenter)
    }
    
    var body: some View {
        VStack {
            Text("Hello, World!")
        }
        .environmentObject(presenter)
    }
}
