//
//  ViewController.swift
//  testMaker
//
//  Created by mac036 on 6/4/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var certificateNameText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func testStartBtn(_ sender: UIButton) {
        guard let startTest = self.storyboard?.instantiateViewController(identifier: "QuestionViewController") else {return}
        self.present(startTest, animated: true)
    }
    


}

