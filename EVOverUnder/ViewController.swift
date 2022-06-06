//
//  ViewController.swift
//  EVOverUnder
//
//  Created by Christian Higgins on 2/26/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CalcBetOdds: UIButton!
    @IBOutlet weak var TestButton: UIButton!
    @IBOutlet weak var CalcProjValue: UIButton!
    @IBOutlet weak var TempClearButton: UIButton!
    
    @IBOutlet weak var Team2TxT: UITextField!
    @IBOutlet weak var Team1TxT: UITextField!
    @IBOutlet weak var TimeLeftTxT: UITextField!
    @IBOutlet weak var OverUnder: UITextField!
    
    
    @IBOutlet weak var PPMlbl: UILabel!
    @IBOutlet weak var PointsNeededlbl: UILabel!
    @IBOutlet weak var PointsNeeded2lbl: UILabel!
    @IBOutlet weak var PointsPerMinuteNeeded: UILabel!
    @IBOutlet weak var ProjectedValuelbl: UILabel!
    

    
    @IBAction func CalcBetOddsAc(_ sender: Any) {
        if Team1TxT.text == "" || Team2TxT.text == "" || TimeLeftTxT.text == "" || OverUnder.text == ""{
            //Do Nothing
        }else{
        
        let PPMF:Double = ((Double(Team1TxT.text!)! + Double(Team2TxT.text!)!) / 7)
        let PPM = Double(round(1000*PPMF)/1000)
        PPMlbl.text = "\(PPM)"
        
        let PointsTotal:Double = (Double(Team1TxT.text!)! + Double(Team2TxT.text!)!)
        
        let PSN:Double = (PointsTotal - Double(OverUnder.text!)!) * -1
        PointsNeeded2lbl.text = "\(PSN)"
        let PSNPM:Double = (PSN / Double(TimeLeftTxT.text!)!)
        PointsPerMinuteNeeded.text = "\(PSNPM)"
            
            
            let EVV:Double = (((PPM / 5) - PSNPM) * -0.8)
            ProjectedValuelbl.text = "\(EVV)"
            
            
        
    }
    }
    
    
    @IBAction func CalcProjValueAc(_ sender: Any) {
        if Team1TxT.text == "" || Team2TxT.text == "" || TimeLeftTxT.text == "" || OverUnder.text == "" {
            //Do nothing
        }else{
         
//            let PPMF:Double = ((Double(Team1TxT.text!)! + Double(Team2TxT.text!)!) / 7)
//            let PPM = Double(round(1000*PPMF)/1000)
//            PPMlbl.text = "\(PPM)"
            
            let PointsTotal:Double = (Double(Team1TxT.text!)! + Double(Team2TxT.text!)!)
            
            let PSN:Double = (PointsTotal - Double(OverUnder.text!)!) * -1
            PointsNeeded2lbl.text = "\(PSN)"
            let PSNPM:Double = (PSN / Double(TimeLeftTxT.text!)!)
            PointsPerMinuteNeeded.text = "\(PSNPM)"
                
                
            let EVV:Double = (((Double(PPMlbl.text!)! / 5) - PSNPM) * -0.8)
                ProjectedValuelbl.text = "\(EVV)"
            
            
        }
    }
    
    @IBAction func TempClearAc(_ sender: Any) {
        Team1TxT.text = ""
        Team2TxT.text = ""
        TimeLeftTxT.text = ""
        OverUnder.text = ""
        
    }
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }


}






//40 minutes in a NCAA game
//8 units of 5 minutes per game
//20 minutes in a NCAA half
//4 units of 5 minutes per half
//4 units of 10 minutes per game
//2 units of 10 minutes per half


//48 minutes in a NBA game
//12 units of 4 minutes per game
//24 minutes in a NBA half
//6 units of 4 minutes per half
//12 minutes in a NBA quarter
//3 units of 4 minutes per quarter
//4 units of 3 minutes per quarter


//Poland Leage
//40 minutes per Poland game
//8 minutes of 5 minutes per game
//20 minutes per half
//4 units of 5 minutes per half
//10 minutes per quarter
//UNKNOWN CUTOFF
//4 units of 2.5 minutes per quarter

//Euro Cup
//40 minutes per game
//8 minutes of 5 minutes per game
//20 minutes per half
//4 units of 5 minutes per half
//10 minutes per quarter
//4 unites of 2.5 minutes per quarter
//Cuts off at 2 minutes


//Total 174.5 (

//150 points / 3 = 50 points scored per 10 minutes

//5 * 60 = 300  (NOT NEEDED MATH)
//174.5 - 150 = 24.5 (4.9 points per minute to hit total)
//24.5 / X (X user inputed minutes left works with .'s)












