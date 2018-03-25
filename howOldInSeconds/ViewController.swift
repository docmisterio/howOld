import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var birthDate: UIDatePicker!
    
    @IBOutlet weak var ageInYears: UILabel!
    @IBOutlet weak var ageInDays: UILabel!
    @IBOutlet weak var ageInMonths: UILabel!
    @IBOutlet weak var ageInWeeks: UILabel!
    @IBOutlet weak var ageInHours: UILabel!
    
    @IBAction func birthDateValueChanged(_ sender: Any) {
//        print(birthDate)
    }
    
    @IBAction func dateChosen(_ sender: Any) {
        setTimes(date: chosenBirthdate)
    }
    
    // --------- Everything Else
    
    private var chosenBirthdate: Date {
        return birthDate.date
    }
    
    private func birthDateToMonth() -> String {
        let components = Calendar.current.dateComponents([.month], from: chosenBirthdate, to: Date())
        guard let months = components.month else {
            fatalError("components doesn't have a month")
        }
        return String(months)
    }
    
    private func birthDateToYear() -> String {
        let components = Calendar.current.dateComponents([.year], from: chosenBirthdate, to: Date())
        guard let years = components.year else {
            fatalError("components doesn't have a year")
        }
        return String(years)
    }
    
    private func birthDateToDay() -> String {
        let components = Calendar.current.dateComponents([.day], from: chosenBirthdate, to: Date())
        guard let days = components.day else {
            fatalError("components doesn't have a day")
        }
        return String(days)
    }
    
    private func birthDateToWeek() -> String {
        let components = Calendar.current.dateComponents([.weekday], from: chosenBirthdate, to: Date())
        guard let weeks = components.weekday else {
            fatalError("components doesn't have a week")
        }
        return String(weeks / 7)
    }
    
    private func birthDateToHour() -> String {
        let components = Calendar.current.dateComponents([.hour], from: chosenBirthdate, to: Date())
        guard let hours = components.hour else {
            fatalError("components doesn't have a hour")
        }
        return String(hours)
    }
    
    //need to hook this up to a timer, I think
    private func birthDateToSeconds() -> String {
        let components = Calendar.current.dateComponents([.second], from: chosenBirthdate, to: Date())
        guard let seconds = components.second else {
            fatalError("components doesn't have a second")
        }
        return String(seconds)
    }
    
    private func setTimes(date: Date) {
        ageInYears.text = "You are \(birthDateToYear()) years old, or..."
        ageInMonths.text = "\(birthDateToMonth()) months old, or..."
        ageInDays.text = "\(birthDateToDay()) days old, or..."
        ageInWeeks.text = "\(birthDateToWeek()) weeks old, or..."
        ageInHours.text = "\(birthDateToHour()) hours old, or..."
    }
}
