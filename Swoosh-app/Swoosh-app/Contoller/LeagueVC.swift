//
//  LeagueVC.swift
//  Swoosh-app
//
//  Created by Apple on 7/31/18.
//  Copyright © 2018 ikode. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    
    
    
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
        
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func menBtnTapped(_ sender: Any) {
        Selectleague(LeagueType: "men")
    }
    
    
    @IBAction func WomenBtnTapped(_ sender: Any) {
        Selectleague(LeagueType: "women")
    }
    
    
    @IBAction func coedBtnTapped(_ sender: Any) {
        Selectleague(LeagueType: "coed")
    }
    
    
    func Selectleague(LeagueType:String){
        player.desiredLeague = LeagueType
        nextBtn.isEnabled = true
    }
    
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        
        performSegue(withIdentifier:"SkillVCSegue", sender: self)
        
    }
   

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let SkillVC = segue.destination as? SkillVC
        {
            SkillVC.player = player
        }
    }
    
    
    
    


}
