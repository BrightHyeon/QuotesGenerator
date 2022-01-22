//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by HyeonSoo Kim on 2021/12/12.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    let quotes = [
        Quote(contents: "너가 진정 하고 싶은 일을 해라.", name: "어머니"),
        Quote(contents: "25살이 뭐가 늦은 나이냐. 30안됐으면 다 어린거다.", name: "아버지"),
        Quote(contents: "옆에서 응원할게! 얼마가 걸리든 해보자.", name: "여자친구"),
        Quote(contents: "당신이 되고 싶었던 어떤 존재가 되기에는 지금도 결코 늦지 않았다.", name: "조지 엘리엇"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tabQuoteMaker(_ sender: Any) {
        let random = Int(arc4random_uniform(UInt32(self.quotes.count)))
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
}

