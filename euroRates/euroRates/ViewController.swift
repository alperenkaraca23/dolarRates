//
//  ViewController.swift
//  euroRates
//
//  Created by Alperen KARACA on 27.07.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var audLabel: UILabel!
    @IBOutlet weak var cadLabel: UILabel!
    @IBOutlet weak var eurLabel: UILabel!
    @IBOutlet weak var gbpLabel: UILabel!
    @IBOutlet weak var jpyLabel: UILabel!
    @IBOutlet weak var tryLabel: UILabel!
    @IBOutlet weak var wstLabel: UILabel!
    @IBOutlet weak var xcdLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: Any) {
        
        let url = URL(string: "https://v6.exchangerate-api.com/v6/1385b7a8d65095a827fe4f9a/latest/USD")
        let session = URLSession.shared
        
        let task = session.dataTask(with: url!) { (data , response , error) in
            if error != nil {
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
                alert.addAction(okButton)
                self.present(alert, animated: true, completion: nil)
                
            }else{
                
                if data != nil {
                    
                    do{
                        let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as! Dictionary< String , Any>
                        
                        DispatchQueue.main.async {
                            if let rates = jsonResponse["conversion_rates"] as? [String : Any] {
                                
                                if let aud = rates["AUD"] as? Double {
                                    self.audLabel.text = "AUD: \(aud)"
                                }
                                
                                if let cad = rates["CAD"] as? Double {
                                    self.cadLabel.text = "CAD: \(cad)"
                                }
                                
                                if let eur = rates["EUR"] as? Double {
                                    self.eurLabel.text = "EUR: \(eur)"
                                }
                                
                                if let gbp = rates["GBP"] as? Double {
                                    self.gbpLabel.text = "GBP: \(gbp)"
                                }
                                
                                if let jpy = rates["JPY"] as? Double {
                                    self.jpyLabel.text = "JPY: \(jpy)"
                                }
                                
                                if let tr = rates["TRY"] as? Double {
                                    self.tryLabel.text = "TRY: \(tr)"
                                }
                                
                                if let wst = rates["WST"] as? Double {
                                    self.wstLabel.text = "WST: \(wst)"
                                }
                                
                                if let xcd = rates["XCD"] as? Double {
                                    self.xcdLabel.text = "XCD: \(xcd)"
                                }
                            }
                        }
                        
                    }catch{
                        print("Error!")
                    }
                    
                }
                
            }
        }
        task.resume()
    }
    
}

