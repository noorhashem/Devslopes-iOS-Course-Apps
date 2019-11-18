//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by McNoor's  on 10/17/19.
//  Copyright © 2019 McNoor's . All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var Player : player!

    @IBOutlet weak var nextBttn: ButtonBorder!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Player = player()
    }
    
    @IBAction func NextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectedLeague(leagueSelected: "Mens")
    }
    
    
    @IBAction func onWomensTapped(_ sender: Any) {
          selectedLeague(leagueSelected: "Womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
          selectedLeague(leagueSelected: "Co-ED")
    }
    
    func selectedLeague (leagueSelected :String){
        Player.desiredLeague = leagueSelected
        nextBttn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.Player = Player
            
        }
    }
    
}
