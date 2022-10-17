//
//  ViewController2.swift
//  isMovingFromParentViewController
//
//  Created by Pomu Takeuchi on 2022/10/17.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func viewWillDisappear(_ animated: Bool) {
        print("isMovingFromParent: \(isMovingFromParent)")
    }

    @IBAction func set(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController

        self.navigationController?.setViewControllers([viewController], animated: true)
    }

    @IBAction func set2(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController

        self.navigationController?.setViewControllers([viewController], animated: false)
    }
}
