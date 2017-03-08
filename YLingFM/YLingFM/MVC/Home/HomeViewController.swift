//
//  HomeViewController.swift
//  YLingFM
//
//  Created by 王留根 on 17/2/27.
//  Copyright © 2017年 ios-mac. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class HomeViewController: UIViewController {
    
    var subscription: Disposable?
    var inputTextFeild: UITextField = UITextField(frame: CGRect(x: 60, y: 100, width: 200, height: 35))
    var secondTextFeild: UITextField = UITextField(frame: CGRect(x: 60, y: 200, width: 200, height: 35))
    var cancalButton: UIButton = UIButton(frame:  CGRect(x: 100, y: 300, width: 100, height: 35))

    private let disPoseBag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white


        
    }
    

    func cancelButtonAction(sender: UIButton)  {
        print("取消了")
        subscription?.dispose()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        inputTextFeild.resignFirstResponder()
        secondTextFeild.resignFirstResponder()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
