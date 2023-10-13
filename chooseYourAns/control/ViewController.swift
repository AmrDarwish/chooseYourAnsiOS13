    //
    //  ViewController.swift
    //  chooseYourAns
    //
    //  Created by Amr Abdaldayem on 25/06/2022.
    //

    import UIKit

    class ViewController: UIViewController {
        
        var theStory = StoryBrain()
        
        @IBOutlet var buttonsSettings: [UIButton]!
        @IBOutlet weak var titleUI: UILabel!
        @IBOutlet weak var button1: UIButton!
        @IBOutlet weak var button2: UIButton!
        
        override func viewDidLoad() {
            
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            
            titleUI.text = theStory.getFirstTitle()
            
            button1.setTitle(theStory.getFirstChoise1(), for: .normal)
            button2.setTitle(theStory.getFirstChoise2(), for: .normal)
            button1.setTitleColor(UIColor.white, for: .normal)
            button2.setTitleColor(UIColor.white, for: .normal)
            
            buttonsSettings.forEach {
                
                $0.layer.cornerRadius =    buttonsSettings[0].frame.size.height / 4 }
            
        
        }
       
       
        override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
            super.viewWillTransition(to: size, with: coordinator)
            coordinator.animate(alongsideTransition: nil){_ in
                
                self.buttonsSettings.forEach {
                 
                    $0.layer.cornerRadius =    self.buttonsSettings[0].frame.size.height / 4 }
                
            }
        }
        
        @IBAction func buttonPressed(_ sender: UIButton) {
            var x = sender.backgroundColor
            sender.backgroundColor = UIColor.green
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.35)
            {
                sender.backgroundColor = x
            }
            
            theStory.updateStoryBrain(choice: sender.currentTitle!)
            titleUI.text = theStory.getTheTitle()
            button1.setTitle(theStory.getTheChoise1(), for: .normal)
            button2.setTitle(theStory.getTheChoise2(), for: .normal)
        }
        
    }

