//
//  ResultsScreen.swift
//  SpanishQuiz
//
//  Created by Gabriele on 9/15/16.
//  Copyright © 2016 Gabriele. All rights reserved.
//

import WatchKit
import Foundation


class ResultsScreen: WKInterfaceController {

    @IBOutlet var resultsLabel: WKInterfaceLabel!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        resultsLabel.setText(context as! String?)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func endGame() {
        popToRootController()
    }

}
