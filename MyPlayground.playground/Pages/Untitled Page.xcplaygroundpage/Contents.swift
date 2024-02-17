import Cocoa

struct Employee {
    var name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int{
        get{
            vacationAllocated - vacationTaken
        }
        
        set{
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var angelEmployee = Employee(name: "Angel")
angelEmployee.vacationTaken += 4 // vacationTaken now is 4
angelEmployee.vacationRemaining = 5 // vacationAllocated now equals 9
print(angelEmployee.vacationAllocated) // 9 - 4, which equals 5

// Protocol Example

protocol Vehicle{
    var name: String {get}
    var currentPassengers: Int { get set }
    
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    var name: String
    
    var currentPassengers: Int
    
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance)km")
    }
}
