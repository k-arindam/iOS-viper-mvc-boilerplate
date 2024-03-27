//
//  CameraRoute.swift
//  
//
//  Created by Arindam Karmakar on 28/03/24.
//

import Foundation
import SwiftUI

public final class CameraRoute {
    private init() {}
    
    public static func build() -> AnyView {
        let interactor = CameraInteractor()
        let route = CameraRoute()
        
        let presenter = CameraPresenter(route: route, interactor: interactor)
        
        let view = CameraView(presenter: presenter)
        
        return AnyView(view)
    }
}
