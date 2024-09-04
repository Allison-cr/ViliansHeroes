//
//  ViewController.swift
//  ViliansHeroes
//
//  Created by Alexander Suprun on 30.08.2024.
//

import UIKit

protocol ExampleView: AnyObject {
    func display(data: String) 
}

class ExampleViewController: UIViewController, ExampleView {
    var presenter: ExamplePresenter?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        view.backgroundColor = .cyan
    }

    func display(data: String) {
        // Display data in the UI
        print("Data received: \(data)")
    }
}
