//
//  CameraPresenter.swift
//
//
//  Created by Arindam Karmakar on 28/03/24.
//

import Foundation

final class CameraPresenter: ObservableObject {
    public init(route: CameraRoute, interactor: CameraInteractor) {
        self.route = route
        self.interactor = interactor
    }
    
    private let route: CameraRoute
    private let interactor: CameraInteractor
}
