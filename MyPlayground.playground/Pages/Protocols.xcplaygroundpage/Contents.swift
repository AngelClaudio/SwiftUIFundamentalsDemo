// Protocol Example
protocol Vehicle{
    var name: String {get} // read only but must be implemented during construction
    var currentPassengers: Int { get set } // must be readable & writeable
    
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

protocol CanBeElectric {
    // TO DO Placeholder
}

// Adopting aka Conforming to 2 protocols
struct Car: Vehicle, CanBeElectric {
    let name = "Car"
    
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance)km")
    }
    
    func openSunroof() {
        print("It's a nice day!")
    }
}

// Demo of a 2nd structure Adopting aka Conforming to protocol
struct Bicycle: Vehicle {
    let name = "Bicycle"
    
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    
    func travel(distance: Int) {
        print("I'm cycling \(distance)km")
    }
    
    func openSunroof() {
        print("It's a nice day!")
    }
}

func commute(distance: Int, using vehicle: Vehicle){
    if vehicle.estimateTime(for: distance)>100{
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

func getTravelEstimates(using vehicles: [Vehicle], distance: Int){
    for vehicle in vehicles{
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}

// Example using the struct that conformed to Vehicle
let car = Car()
commute(distance: 100, using: car)

let bike = Bicycle()
commute(distance: 50, using: bike)

let vehicles : [Vehicle] = [car, bike]

getTravelEstimates(using: vehicles, distance: 75)
