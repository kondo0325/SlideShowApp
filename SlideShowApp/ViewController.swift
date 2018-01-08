//
//  ViewController.swift
//  SlideShowApp
//
//  Created by 近藤佑斗 on 2018/01/07.
//  Copyright © 2018年 yuuto.kondou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var SlideImage: UIImageView!
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let largeImageViewContoroller:LargeImageViewController = segue.destination as! LargeImageViewController
        largeImageViewContoroller.dispImageNo = dispImageNo
    }

    var dispImageNo = 0     /// 表示画像の番号
    
    /// dispImageNoに対応する画像を表示
    func displayImage(){
        let imageNameArray = [
            "p01.jpeg",
            "p02.jpeg",
            "p03.jpeg",
            ]
        
        let name = imageNameArray[dispImageNo]
        let image = UIImage(named: name)
        
        SlideImage.image = image
    }
    
    /// 画像番号を減らす
    @IBAction func backButton(_ sender: UIButton) {
        if(dispImageNo == 0) { dispImageNo = 2 }
        else { dispImageNo -= 1 }
        displayImage()
    }
    
    /// 画像番号を増やす
    @IBAction func forwardButton(_ sender: UIButton) {
        if(dispImageNo == 2) { dispImageNo = 0 }
        else { dispImageNo += 1 }
        displayImage()
    }
    
    
    @IBOutlet weak var slideShowButton: UIButton!
    var timer: Timer!
    var slideShowActive = false
    
    /// 2秒ごとに画像番号を増やす
    @IBAction func slideShowButton(_ sender: UIButton) {
        
        if(slideShowActive){
            self.timer.invalidate()
            self.timer = nil
            slideShowButton.setTitle("再生", for: .normal)        }
        else{
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(forwardButton(_:)), userInfo: nil, repeats: true)
            
            slideShowButton.setTitle("停止", for: .normal)
        }
        slideShowActive = !slideShowActive
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        displayImage()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

