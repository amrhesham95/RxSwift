//
//  Rate.swift
//  RxAlamofire
//
//  Created by Esraa Hassan on 5/26/19.
//  Copyright © 2019 iti. All rights reserved.
//

import Foundation
struct Rate: Codable {
    let base: String
    let rates: [String: Double]
    let date: String
}
