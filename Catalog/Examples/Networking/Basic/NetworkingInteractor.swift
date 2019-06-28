//
//  NetworkingInteractor.swift
//  Catalog
//
//  Created by Filip Gulan on 25/04/2019.
//  Copyright (c) 2019 Infinum. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import Foundation
import Alamofire

final class NetworkingInteractor {

    private let service: APIServiceable
    private let sessionManager: SessionManager

    init(service: APIServiceable = APIService.instance, sessionManager: SessionManager = .default) {
        self.service = service
        self.sessionManager = sessionManager
    }
}

// MARK: - Extensions -

extension NetworkingInteractor: NetworkingInteractorInterface {

    func login(email: String, password: String, completion: @escaping (Result<Void>) -> Void) {
        let router = LoginRouter.login(email: email, password: password)

        service
            .requestCompletion(
                router: router,
                sessionManager: sessionManager,
                completion: completion
            )
    }

}
