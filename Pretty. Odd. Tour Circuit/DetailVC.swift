//
//  DetailVC.swift
//  Pretty. Odd. Tour Circuit
//
//  Created by Ananya George on 3/27/21.
//

import UIKit
import WebKit

class DetailVC: UIViewController {
    
    @IBOutlet weak var ytlink: WKWebView!
    
    var link = Int()
    
    let showlink = ["https://youtu.be/coWsAJZJf4g","https://youtu.be/BIMS6xiPFhY","https://youtu.be/zBjzr4fAtCI","https://youtu.be/AXh4P7jyp5I","https://youtu.be/SFcMGERbJrA","https://youtu.be/lu3h9RctCw8","https://youtu.be/kazvzuydcLQ"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ytlink.load(NSURLRequest(url:NSURL(string:showlink[link])! as URL) as URLRequest)

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

}
