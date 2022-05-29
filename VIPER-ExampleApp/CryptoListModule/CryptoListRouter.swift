//
//  CryptoListRouter.swift
//  VIPER-ExampleApp
//
//  Created by Ahmet Mucahid Bozkurt on 29.05.2022.
//

import Foundation

protocol AnyRouter {
    static func createModule() -> AnyRouter

}

class CryptoListRouter: AnyRouter {
    static func createModule() -> AnyRouter {
        let router = CryptoListRouter()
        return router
    }
    
    
}
