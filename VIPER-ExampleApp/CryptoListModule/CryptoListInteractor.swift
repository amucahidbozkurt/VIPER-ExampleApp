//
//  CryptoListInteractor.swift
//  VIPER-ExampleApp
//
//  Created by Ahmet Mucahid Bozkurt on 29.05.2022.
//

import Foundation

// TODO: Talks to presenter

protocol AnyInteractor {
    var presenter: AnyPresenter? { get set }
    
    func fetchCryptoList()
}

class CryptoListInteractor: AnyInteractor {
    var presenter: AnyPresenter?
    
    func fetchCryptoList() {
        guard let url = URL(string: "https://raw.githubusercontent.com/atilsamancioglu/IA32-CryptoComposeData/main/cryptolist.json") else { return }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            guard let data = data, error == nil else { return }
            
            do {
                let cryptoList = try JSONDecoder().decode([Crypto].self, from: data)
                self.presenter?.interactorDidDownloadCryptoList(result: .success(cryptoList))
            } catch <#pattern#> {
                <#statements#>
            }
        }
    }
}
