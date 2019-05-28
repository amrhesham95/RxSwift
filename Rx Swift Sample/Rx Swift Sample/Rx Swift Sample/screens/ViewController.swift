import UIKit
import RxSwift
import RxCocoa
import RxAlamofire
import SwiftyJSON
class ViewController: UIViewController 
{
   
    
    @IBOutlet weak var onOffSwitch: UISwitch!
    
    @IBOutlet weak var myTableView: UITableView!
    
    let disposeBag = DisposeBag()
    var presenter:PresenterDelegate?
    override func viewDidLoad()
    {
        presenter = Presenter(view:self)
        presenter?.useObservable()
        super.viewDidLoad()
    }
        

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width  = collectionView.bounds.width
        let height = (width - 10 ) / 3
        return CGSize(width: width, height: height)
    }
    */
}

