struct Point {
    var x: Double
    var y: Double
}

func calculateCentroid(vertices: [Point]) -> Point {
    var xSum = 0.0
    var ySum = 0.0
    let numVertices = vertices.count

    for vertex in vertices {
        xSum += vertex.x
        ySum += vertex.y
    }

    let centroid = Point(x: xSum / numVertices, y: ySum / numVertices)
    return centroid
}

// Example usage:
let polygonVertices = [Point(x: 0, y: 0), Point(x: 4, y: 0), Point(x: 4, y: 3), Point(x: 0, y: 3)]
let centroid = calculateCentroid(vertices: polygonVertices)
print("The centroid is at (\(centroid.x), \(centroid.y))")
