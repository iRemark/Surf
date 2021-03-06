//
//  SFData.swift
//  Surf
//
//  Created by networkextension on 8/19/16.
//  Copyright © 2016 yarshure. All rights reserved.
//

import Foundation
import UIKit
class SFactivityData:NSObject,UIActivityItemSource{
    @available(iOS 6.0, *)
    
    public func activityViewControllerPlaceholderItem(_ activityViewController: UIActivityViewController) -> Any // called to determine data type. only the class of the return type is consulted. it should match what -itemForActivityType: returns later{
    
    {
        return "x"
    }
    
    public func activityViewController(_ activityViewController: UIActivityViewController, itemForActivityType activityType: UIActivity.ActivityType?) -> Any? // called to fetch data after an activity is selected. you can return nil.
    
    {
        return "x"
    }
    

    var data:NSData?
    func activityViewControllerPlaceholderItem(activityViewController: UIActivityViewController) -> Any {
        return "public.text" as AnyObject
    }
    private func activityViewController(activityViewController: UIActivityViewController, itemForActivityType activityType: String) -> Any? {
        return data
    }
    private func activityViewController(activityViewController: UIActivityViewController, subjectForActivityType activityType: String?) -> String {
        return "request.json"
    }

}
