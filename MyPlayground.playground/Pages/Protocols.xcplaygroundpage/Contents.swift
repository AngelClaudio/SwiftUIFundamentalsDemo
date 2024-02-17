// Protocol Example
protocol Vehicle{
    var name: String {get}
    var currentPassengers: Int { get set }
    
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

// Adopting aka Conforming to protocol
struct Car: Vehicle {
    var name: String
    
    var currentPassengers: Int
    
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
func commute(distance: Int, using vehicle: Vehicle){
    if vehicle.estimateTime(for: distance)>100{
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}


// Example using the struct that conformed to Vehicle
let car = Car(name: "lambo", currentPassengers: 2)
commute(distance: 100, using: car)

