//
//  ViewController.swift
//  NudgeSwift
//
//  Created by slzhou on 2023/6/24.
//

import UIKit
import nudgeBase
import nudgeGeo

class ViewController: UIViewController {
    var nudgeBase: NudgeBase!
    var nudgeGeo: NudgeGeo!

    override func viewDidLoad() {
        super.viewDidLoad()
        let apiKey = "y26htlmAfYUEsoIh5UV_Bw"
        // Do any additional setup after loading the view.
        nudgeBase = NudgeBase(options: [ "apiKey": apiKey,
        "enabled": true,
        "federationId": ""
        ]);
        
        nudgeGeo = NudgeGeo(options: ["apiKey": apiKey,
        "enabled": true, "showLocationDialog": true, "federationId": ""
        ]);
    }
}

