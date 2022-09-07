//
//  XibLoginViewController.swift
//  Trivia
//
//  Created by Jesus Nieves on 02/09/2022.
//

import UIKit

class XibLoginViewController: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        logoImageView.backgroundColor = .red
    }

    @IBAction func onStartPressed(_ sender: Any) {
        print("Empezemos")
    }

    @IBAction func infoPressed(_ sender: Any) {
        let vc = InformationViewController(nibName: "InformationViewController", bundle: nil)
        self.present(vc, animated: true)
    }
}
