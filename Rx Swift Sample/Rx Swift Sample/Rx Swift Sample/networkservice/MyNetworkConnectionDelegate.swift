//
//  MyNetworkConnectionDelegate.swift
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
protocol MyNetworkConnectionDelegate {
    func getObservable(apiUrl:String,disposableBag:DisposeBag)->Observable<(HTTPURLResponse,Any)>
}
