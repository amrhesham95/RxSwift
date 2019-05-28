//
//  Presenter.swift
//  Rx Swift Sample
//
//  Created by Esraa Hassan on 5/27/19.
//  Copyright © 2019 Abd elrhman. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import RxAlamofire
import SwiftyJSON
class Presenter:PresenterDelegate{
    let disposableBag = DisposeBag()
    var view:ViewController?
    let nwc: MyNetworkConnectionDelegate = MyNetworkConnection()
    private var dataSubject = PublishSubject<Dictionary<String,Double>>()
    public var dataObservable : Observable<Dictionary<String,Double>>?
    init() {
        dataObservable = dataSubject.asObservable()
        self.useObservable()
    }
    
    func useObservable(){
        
        nwc.getObservable(apiUrl: "https://api.exchangeratesapi.io/latest", disposableBag: disposableBag).subscribe(onNext: { [weak self] in
            if let dict=$0.1 as?[String:Any]{
            if let dictValue = dict["rates"] as? Dictionary<String,Double>{
                print(dictValue.values.first ?? "default")
                self?.dataSubject.onNext(dictValue)
//                Observable< Dictionary<String,Double> >.of(dictValue).bind(to: (self.view?.myTableView.rx.items)!){
//                    (tableview,row,element) in
//                    let cell = tableview.dequeueReusableCell(withIdentifier: "Cell") as? MyTableViewCell
//                    cell?.rightLabel.text = String(element.value)
//                    cell?.leftLabel.text=element.key
//                    return cell!
//                }
                print("after return")
               
            }
            }}).disposed(by: disposableBag)
        
        print("didload")
        
    }
    
    
    
}
