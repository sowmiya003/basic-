//
//  ViewController.swift
//  Anandpro
//
//  Created by sowmiya s on 13/02/24.
//

import UIKit


struct onboard {
    let title : String
    let des : String
    let image :UIImage
}

class ViewController: UIViewController {
    
    var currentpage = 0{
        didSet{
            if currentpage == slider.count - 1{
                nxt.setTitle("go", for: .normal)
            }
            else
            {
                nxt.setTitle("next", for: .normal)
            }
        }
    }
    
    
    @IBOutlet weak var collection: UICollectionView!
    
    @IBOutlet weak var nxt: UIButton!
    
    @IBOutlet weak var page: UIPageControl!
    
    var slider : [onboard] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider = [onboard(title : "Delicious Dishes", des : "Experience a variety of amazing dishes from  different cultures around the world.", image : #imageLiteral(resourceName: "dog2")), onboard(title : "World class chef", des : "our dishes are prepared by only the best" , image :  #imageLiteral(resourceName: "dog3")), onboard(title : "Instant World-Wide Delivery", des : "your order will be delivered instantly", image : #imageLiteral(resourceName: "dog1") )]
    }
    
    
    @IBAction func nxtpage(_ sender: Any) {
        page.currentPage = currentpage
        
        if currentpage == slider.count - 1{
            print("nextpage")
        }
        else{
            
            
            currentpage += 1
            let indexpath = IndexPath(item: currentpage, section: 0)
            collection.scrollToItem(at: indexpath, at: .centeredHorizontally, animated: true)
            
        }
    }
    

}

extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slider.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath) as! CollectionViewCell
        cell.setup(slider[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
        
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentpage = Int(scrollView.contentOffset.x/width)
  
    }
    
    
}

