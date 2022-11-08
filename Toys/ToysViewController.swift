//
//  ToysViewController.swift
//  Toys
//
//  Created by Consultant on 11/5/22.
//

import UIKit

class ToysViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var data: [String] = ["Goku Ultrainstinto", "Vegeta", "Broly", "Gohan","Piccolo", "Goku", "Bills", "Gogeta", "Goku Black", "Golden Freiza"]
  var dataInfo: [[String]] = [["La principal característica que tiene el Ultra Instinto es que el usuario tiene que bloquear por completo el uso de sus emociones y permitir que el cuerpo ejecute sus movimientos simplemente por instinto puro.", "Vegeta is the deuteragonist of the Dragon Ball franchise. He starts as the main antagonist of the Saiyan Saga, but as the story progresses, he becomes one of the heroes of the Z Warriors. He is the prince of the warrior race known as the Saiyans.", "Broly is stronger than Goku, however, Perfected Super Saiyan Blue Gogeta is superior to Broly.", "Son Gohan 孫そん悟ご飯はん is a half-breed Saiyan and one of the most prominent characters in the Dragon Ball series. He is the elder son of the series' primary protagonist Goku","A wise and cunning warrior, he was the main antagonist in the final saga of Dragon Ball, the Piccolo Jr. Saga, and was thus a ruthless enemy of Goku.", "Son Goku is the main protagonist of the Dragon Ball metaseries. He is a Saiyan sent to Earth as a baby by his father Bardock to escape the destruction of the planet Vegeta and the Saiyan race.", "Beerus, the God of Destruction (Japanese: 破壊神ビルス, Hepburn: Hakaishin Birusu) is a fictional character in the Dragon Ball franchise created by Akira Toriyama.", "Gogeta (ゴジータ, Gojīta) is the Metamoran fusion of Goku and Vegeta when they perform the Fusion Dance properly. His voice is a dual voice containing both Goku's and Vegeta's voices.", "Goku Black (ゴクウブラック, Gokū Burakku), also known as Zamasu (ザマス, Zamasu), though usually referred to as Black, is an alternate incarnation of Zamasu and a former North Kai and Supreme Kai apprentice serving his former master Gowasu from the unaltered main timeline within Universe 10.", "Golden Frieza (ゴールデンフリーザ, Gōruden Furīza) is the Ultimate Evolution (究極進化, Kyūkyoku Shinka) of the Frieza Race. It was first created and named by Frieza himself."]]
//    var imageName: [String] = ["dbs", "dbs2"]
    var myImages: [String] = ["1 gokultra", "2 vegueta", "3 broly", "4 gohan","5 piccolo", "6 goku", "7 bills", "8 gogeta", "9 gokublack", "10 goldencell"]
    
    var textToBeSend: String = ""
    var textToBeSend2 : String = ""
    var textToBeSend3 : String = ""
    
    
    override func viewDidLoad() {
        
        setup()
        
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

   func setup(){
       
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: "ToysXIBTableViewCell", bundle: nil), forCellReuseIdentifier: "ToysXIBTableViewCell")
    }

}

extension ToysViewController: UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ToysXIBTableViewCell", for: indexPath) as?
                ToysXIBTableViewCell else{
            fatalError("You did not use the correct cell identifier")
        }
        
        //        cell.toysImageView.image = UIImage(named: "dbs")
        cell.toysImageView.image = UIImage(named: myImages[indexPath[1]])
        cell.labelTop.text = self.data[indexPath.row]
        
        
        
//        cell.button.sett = self.data
        
        
        return cell
    }
    
   
    
}

extension ToysViewController : Any {
    
    func tableView(_ tableView : UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("The selected path is \(indexPath.row)")
        self.textToBeSend3 = data[indexPath.row]
        self.textToBeSend2 = myImages[indexPath.row]
        self.textToBeSend = dataInfo[indexPath.section][indexPath.row]
        self.performSegue(withIdentifier: "detailSegue", sender: self)
        
//                index = indexPath[1]
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let info = segue.destination as! DetailViewController
        info.myString = textToBeSend
        info.myString2 = textToBeSend3
        info.myImages = textToBeSend2
    }
}

