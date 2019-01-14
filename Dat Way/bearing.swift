func degreesToRadians(degrees: Double) -> Double { return degrees * .pi / 180.0 }
func radiansToDegrees(radians: Double) -> Double { return radians * 180.0 / .pi }

func getBearingBetweenTwoPoints1(point1 : Double, point2 : Double) -> Double {

    let lat1 = degreesToRadians(degrees: point1)
    let lon1 = degreesToRadians(degrees: point1)

    let lat2 = degreesToRadians(degrees: point2)
    let lon2 = degreesToRadians(degrees: point2)

    let dLon = lon2 - lon1

    let y = _sin(dLon) * _cos(lat2)
    let x = _cos(lat1) * _sin(lat2) - _sin(lat1) * _cos(lat2) * _cos(dLon)
    let radiansBearing = atan2(y, x)

    return radiansToDegrees(radians: radiansBearing)
}

print(getBearingBetweenTwoPoints1(point1 : 43.43242, point2 : 123.12341))