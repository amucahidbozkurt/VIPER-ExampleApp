//
//  CryptoListPresenter.swift
//  VIPER-ExampleApp
//
//  Created by Ahmet Mucahid Bozkurt on 29.05.2022.
//

import Foundation

// TODO: Talks to ViewController, Interactor and Router

protocol AnyPresenter {
    var view: AnyView? { get set }
    var router: AnyRouter? { get set }
    var interactor: AnyInteractor? { get set }
    
    func interactorDidDownloadCryptoList(result: Result<[Crypto], Error>)
}

class CryptoListPresenter: AnyPresenter {
    var view: AnyView?
    var router: AnyRouter?
    var interactor: AnyInteractor?
    
    func interactorDidDownloadCryptoList(result: Result<[Crypto], Error>) {
        switch result {
        case .success(let cryptoList):
            print("update")
        case .failure(let error):
            print(error)
        }
    }
    
}
