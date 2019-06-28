//
//  RxNetworkingInterfaces.swift
//  Catalog
//
//  Created by Filip Gulan on 25/04/2019.
//  Copyright (c) 2019 Infinum. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit
import RxSwift
import RxCocoa

protocol RxNetworkingWireframeInterface: WireframeInterface {
}

protocol RxNetworkingViewInterface: ViewInterface {
}

protocol RxNetworkingPresenterInterface: PresenterInterface {
    func configure(with output: RxNetworking.ViewOutput) -> RxNetworking.ViewInput
}

protocol RxNetworkingInteractorInterface: InteractorInterface {
    func login(email: String, password: String) -> Single<Void>
}

enum RxNetworking {

    struct ViewOutput {
        let email: Driver<String>
        let password: Driver<String>
        let login: Driver<Void>
    }

    struct ViewInput {
        let didLogin: Driver<Bool>
    }

}
