//
//  ExampleRouter.swift
//  ViliansHeroes
//
//  Created by Alexander Suprun on 30.08.2024.
//

import UIKit

protocol ExampleRouter {
    static func createModule() -> UIViewController
}

import UIKit

class ExampleRouterImpl: ExampleRouter {
    static func createModule() -> UIViewController {
        let view = ExampleViewController()
        let interactor = ExampleInteractor()
        let presenter = ExamplePresenterImpl()
        let router = ExampleRouterImpl()

        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.output = presenter

        return view
    }
}
