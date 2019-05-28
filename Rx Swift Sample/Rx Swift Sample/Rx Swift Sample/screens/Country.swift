import Foundation

// MARK: - Country
class Country: Codable
{
    var base: String
    var rates: [String: Double]
    var date: String
    init()
    {
        self.base  = ""
        self.rates = ["" : 0.0]
        self.date  = ""
    }
    init(base: String, rates: [String: Double], date: String)
    {
        self.base = base
        self.rates = rates
        self.date = date
    }
}

