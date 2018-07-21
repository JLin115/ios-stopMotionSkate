//
//  SkateViewController.swift
//  stopMotionSkate
//
//  Created by 林哲右 on 2018/7/21.
//  Copyright © 2018年 stopMotionSkate. All rights reserved.
//

import UIKit

class SkateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBOutlet weak var img: UIImageView!
    let imgArray : [String] =
        [ "1" ,  "2" ,  "3" ,  "4" ,  "5"  , "6" ,  "7" ,  "8" ,  "9" , "10" ,
         "11" , "12" , "13" , "14" , "15" , "16" , "17" , "18" , "19" , "20" ,
         "21" , "22" , "23" , "24" , "25" , "26" , "27" , "28" , "29" , "30" ,
         "31" , "32" , "33" , "34" , "35" , "36" , "37" , "38" , "39" , "40" ,
         "41" , "42" , "43"
        ]
    var index : Int = 1
    var isRan : Bool = false
    @IBAction func changeImg(_ sender: Any) {
        print(index)
        index += 1
        if( index > imgArray.endIndex  ){
            index = 1
            isRan = false
        }
        
        setImg(nowIndex: index )
    }
    
    @IBAction func random(_ sender: UIPinchGestureRecognizer) {
       
         if !isRan{
            let index = Int.random(in: 1..<imgArray.endIndex)
            print(index)
            isRan = true
            setImg(nowIndex: index )
        }
     
    }
    
    func setImg(nowIndex i : Int){
        print(i.description + "set" )
        img.image = UIImage(named: imgArray[i - 1 ])
        print(imgArray[i-1].description + "set" )
    }
    
}
