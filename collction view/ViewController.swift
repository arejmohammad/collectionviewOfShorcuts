//
//  ViewController.swift
//  collction view
//
//  Created by Areej Mohammad on 10/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mycollection: UICollectionView!
    
    var datatarray = [
        colectionInfo (firsrT: "apple frames", secondT: "196 actions", image: UIImage(systemName: "square")!, color: #colorLiteral(red: 0.4620226622, green: 0.8382837176, blue: 1, alpha: 1) ),
        colectionInfo(firsrT: "Twitter video Downloader V2.6", secondT: "76 actions", image: UIImage(systemName: "square.and.arrow.down.fill")!, color: #colorLiteral(red: 0.3701080978, green: 0.8322106004, blue: 0.7058221698, alpha: 1) ),
        colectionInfo(firsrT: "calcuate Tip", secondT:  "17 actions", image: UIImage(systemName: "dollarsign.circle.fill")!, color: #colorLiteral(red: 0.4620226622, green: 0.8382837176, blue: 1, alpha: 1) ),
        colectionInfo(firsrT: "XS Frames", secondT: "55 actions", image: UIImage(systemName: "phone.fill")!, color: #colorLiteral(red: 1, green: 0.8323456645, blue: 0.4732058644, alpha: 1) ),
        colectionInfo(firsrT: "what's a shorcut?", secondT: "37 actions", image: UIImage(systemName: "rectangle.fill.on.rectangle.fill")!, color: #colorLiteral(red: 0.8446564078, green: 0.5145705342, blue: 1, alpha: 1) ),
        colectionInfo(firsrT: "Take a break", secondT: "12 actions", image: UIImage(systemName: "timer")!, color: #colorLiteral(red: 1, green: 0.4932718873, blue: 0.4739984274, alpha: 1) ),
        colectionInfo(firsrT: "Text last image", secondT: "2 actions", image: UIImage(systemName: "plus.message.fill")!, color: #colorLiteral(red: 0.1045432314, green: 0.5639560223, blue: 0.328388989, alpha: 1) ),
        colectionInfo(firsrT: "shazam shortcut", secondT: "32 actions", image: UIImage(systemName: "waveform")!, color: #colorLiteral(red: 0, green: 0.4023081958, blue: 0.7116518617, alpha: 1) )
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mycollection.dataSource = self
        mycollection.delegate = self
    }
}
extension ViewController : UICollectionViewDataSource , UICollectionViewDelegate , UICollectionViewDelegateFlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return datatarray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mycell", for: indexPath) as! mycell
        cell.firstlabel.text = datatarray[indexPath.row].firsrT
        cell.secondlabel.text = datatarray[indexPath.row].secondT
        cell.myimage.image = datatarray[indexPath.row].image
        cell.backgroundColor = datatarray[indexPath.row].color
        cell.layer.cornerRadius = 20
        return cell
    }
    func collectionView(_ tableView : UITableView, hightForRowAt indexpath: IndexPath) -> CGFloat {
        90
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
      return CGSize(width: 180, height: 140)
    }
}
