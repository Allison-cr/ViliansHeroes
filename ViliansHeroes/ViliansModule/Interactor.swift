//
//  Interactor.swift
//  ViliansHeroes
//
//  Created by Alexander Suprun on 30.08.2024.
//

import Foundation

protocol ExampleInteractorInput {
    func fetchData()
}

protocol ExampleInteractorOutput: AnyObject {
    func didFetchData(data: String)
}

class ExampleInteractor: ExampleInteractorInput {
    weak var output: ExampleInteractorOutput?

    func fetchData() {
        // Simulate data fetching
        let data = "Sample Data"
        output?.didFetchData(data: data)
    }
}
