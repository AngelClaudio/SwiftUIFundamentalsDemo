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



