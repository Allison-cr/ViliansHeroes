//
//  ExamplePresenter.swift
//  ViliansHeroes
//
//  Created by Alexander Suprun on 30.08.2024.
//

import Foundation

protocol ExamplePresenter {
    func viewDidLoad()
}

class ExamplePresenterImpl: ExamplePresenter, ExampleInteractorOutput {
    weak var view: ExampleView?
    var interactor: ExampleInteractorInput?
    var router: ExampleRouter?

    func viewDidLoad() {
        interactor?.fetchData()
    }

    func didFetchData(data: String) {
        view?.display(data: data)
    }
}
