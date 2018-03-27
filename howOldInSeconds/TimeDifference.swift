import UIKit

class TimeDifference {
    
    var chosenBirthdate: Date {
        return birthDate.date
    }
    
    func timeDifferenceForYear() -> String {
        let timeComponents = Calendar.current.dateComponents([.year], from: chosenBirthdate, to: Date())
        guard let years = timeComponents.year else {
            fatalError("components doesn't have a year")
        }
        return String(years.withCommas())
    }
    
    func timeDifferenceForMonth() -> String {
        let timeComponents = Calendar.current.dateComponents([.month], from: chosenBirthdate, to: Date())
        guard let months = timeComponents.month else {
            fatalError("components doesn't have a months")
        }
        return String(months.withCommas())
    }
    
    func timeDifferenceForWeek() -> String {
        let timeComponents = Calendar.current.dateComponents([.weekday], from: chosenBirthdate, to: Date())
        guard let weeks = timeComponents.weekday else {
            fatalError("components doesn't have a week")
        }
        let weeksInInt = Int(weeks)
        let week = weeksInInt / 7
        return String(week.withCommas())
    }
    
    func timeDifferenceForDay() -> String {
        let timeComponents = Calendar.current.dateComponents([.day], from: chosenBirthdate, to: Date())
        guard let days = timeComponents.day else {
            fatalError("components doesn't have a day")
        }
        return String(days.withCommas())
    }
    
    func timeDifferenceForHour() -> String {
        let timeComponents = Calendar.current.dateComponents([.hour], from: chosenBirthdate, to: Date())
        guard let hours = timeComponents.hour else {
            fatalError("components doesn't have a hour")
        }
        return String(hours.withCommas())
    }
    
    func timeDifferenceForMinute() -> String {
        let timeComponents = Calendar.current.dateComponents([.minute], from: chosenBirthdate, to: Date())
        guard let minutes = timeComponents.minute else {
            fatalError("components doesn't have a minute")
        }
        return String(minutes.withCommas())
    }
    
    func timeDifferenceForSecond() -> String {
        let timeComponents = Calendar.current.dateComponents([.second], from: chosenBirthdate, to: Date())
        guard let seconds = timeComponents.second else {
            fatalError("components doesn't have a second")
        }
        return String(seconds.withCommas())
    }
}
