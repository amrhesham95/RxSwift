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
    var viewModel:ViewModel?
    override func viewDidLoad()
    {
        viewModel = ViewModel()
        //presenter?.useObservable()
        viewModel?.dataObservable?.bind(to: self.myTableView.rx.items){
            (tableView,row,element) in
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? MyTableViewCell
            cell?.rightLabel.text = String(element.value)
            cell?.leftLabel.text=element.key
            return cell!
        }
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

