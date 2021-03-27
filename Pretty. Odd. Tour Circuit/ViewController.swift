//
//  ViewController.swift
//  Pretty. Odd. Tour Circuit
//
//  Created by Ananya George on 3/24/21.
//

import UIKit

var showIndex = Int()

class ViewController: UIViewController {
    @IBOutlet weak var concertView: UITableView!
    
    let shows = ["MTV Live\nMay 15, 2008","Live in Chicago\nMay 23 & 24, 2008","Hovefestivalen 2008, Norway\nJune 24, 2008","Glastonbury Festival 2008, Pilton, UK\nJune 27, 2008", "Rock Werchter Festival, Belgium\nJuly 6, 2008","Halloween Show, Rockband Live Tour, Fairfax, VA\nOctober 31, 2008","Live at Germain Arena, Florida\nJanuary 31, 2009"]
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        concertView.delegate = self
        concertView.dataSource = self
        
    }
    
    
    


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = concertView.dequeueReusableCell(withIdentifier: "customCell") as! CustomCell
        let show = shows[indexPath.row]
        cell.thumbnail.image = UIImage(named: show)
        cell.WherenWhenLabel.text = show
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        showIndex = indexPath.row
        performSegue(withIdentifier: "gotolink", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotolink",
           let destination = segue.destination as? DetailVC
        {
            destination.link = showIndex
        }
    
   
}
}
