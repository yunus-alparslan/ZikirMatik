//
//  ViewController.swift
//  ZikirMatik
//
//  Created by ALP on 13.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var zikirCountText: UILabel!
    
    @IBOutlet weak var imageWiewZikir: UIImageView!
    var zikirCount : Int = 0
    
    var colorList = ColorRandomList()
    
    var imageİdlist = [
        "morzikir",
        "zyro-image",
        "pembezikir",
        "mavizikir"
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UpdateText()
        zikirCountText.alpha = 0.5
    }
    
    @IBAction func actionButton(_ sender: UIButton) {
        let buttonclickMan = sender.currentTitle!
        
        if buttonclickMan == "Count"{
            zikirCount += 1
            UpdateText()
        }
        else{
            zikirCount = 0
            UpdateText()
        }
        
    }
    
    func UpdateText(){
        zikirCountText.text = String(zikirCount)
        
    }
    
    @IBAction func buttonlarGenel(_ sender: UIButton) {
        
        
        let buttonPaket = sender    .currentTitle!
        
        if buttonPaket == "Renk Değiştir"{
            view.backgroundColor = colorList.colorlist.randomElement()
        }
        else if buttonPaket == "Style Zikir"{
            imageWiewZikir.image = getRandomZikirStyle()
        }
    }
    
    
    private func getRandomZikirStyle() -> UIImage {
        return UIImage(named: imageİdlist.randomElement()!)!
    }
}

