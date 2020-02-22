//
//  ViewController.swift
//  CloudKit1
//
//  Created by Murilo Teixeira on 02/08/19.
//  Copyright © 2019 Murilo Teixeira. All rights reserved.
//

import UIKit
import CloudKit

class ViewController: UIViewController {

    let container = CKContainer.default()
    let secondContainer = CKContainer(identifier: "iCloud.com.teixeira.murilo.CloudKitContainer")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        container.privateCloudDatabase.fetchAllRecordZones { (zones, error) in
            guard let zones = zones, error == nil else {
                print("Error: \(String(describing: error!.localizedDescription))")
                return
            }
            
            print("Zones: \(zones)")
        } //end container.privateCloudDatabase.fetchAllRecordZones
        
    } //end viewDidLoad


} //end ViewController

