//
//  QuestionViewController.swift
//  testMaker
//
//  Created by mac036 on 6/4/24.
//

import UIKit

class QuestionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtn(_ sender: Any) {
        guard let stopTest = self.storyboard?.instantiateViewController(identifier: "ViewController") else {return}
        if let window = UIApplication.shared.windows.first{
            window.rootViewController = stopTest
            window.makeKeyAndVisible()
            UIView.transition(with: window, duration: 0.5, animations: nil)
        }
    }
    
    @IBAction func nextQuestion(_ sender: Any) {
        guard let stopTest = self.storyboard?.instantiateViewController(identifier: "QuestionViewController") else {return}
        self.present(stopTest, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
