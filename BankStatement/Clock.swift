import Foundation

class Clock {

    private let dateFormatter = DateFormatter()

    func dateToString() -> String {
        dateFormatter.dateFormat = "dd/MM/yyyy"
        return dateFormatter.string(from: today())
    }

    func today() -> Date {
        return  Date()
    }
}
