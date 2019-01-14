import Foundation 

func somequadrant(bearing: Double) -> String {
    var quadrant = bearing / 45
    var  which_quadrant = quadrant.rounded(.up)
    var  string_quadrant = String(which_quadrant)
    var  message = "Quadrant " + string_quadrant
    
    if which_quadrant  = 0 { 
        return "Quadrant 1.0"
    } else if bearing < 0 {
        bearing = bearing + 360
        somequadrant(bearing: bearing)
    } else {
        return message
    }
