//
//  ViewController.swift
//  bottom_Sheet
//
//  Created by Usman Mughal on 13/01/2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //presentModal()
    }
    private func presentModal() {
        let detailViewController = DetailViewController()
        let nav = UINavigationController(rootViewController: detailViewController)
        nav.modalPresentationStyle = .pageSheet
        if let sheet = nav.sheetPresentationController {
            sheet.detents = [.medium()]
            sheet.prefersGrabberVisible = true
        }
        present(nav, animated: true, completion: nil)
    }
    func sheet() {
        let presentingViewController = DetailViewController()
        if let sheet = presentingViewController.sheetPresentationController{
            sheet.detents = [.medium(), .large()]
            sheet.largestUndimmedDetentIdentifier = .medium
            sheet.prefersScrollingExpandsWhenScrolledToEdge = false
        }
        present(presentingViewController, animated: true, completion: nil)
    }
    
    @IBAction func actionshow(_ sender: UIButton) {
        presentModal()
    }
}

class DetailViewController:UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.red
    }
    
}
