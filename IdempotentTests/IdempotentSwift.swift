import Foundation

public func idempotentSwift(_ n: Int32) -> Int32 {
    let _n: Int32 = -n
    var erg: Int32 = 0
    
    for a in _n...n {
        for b in _n...n {
            for c in _n...n {
                for d in _n...n {
                    for e in _n...n {
                        for f in _n...n {
                            for g in _n...n {
                                for h in _n...n {
                                    for i in _n...n {
                                        if (a != a*a + b*d + c*g) {continue}
                                        if (b != a*b + b*e + c*h) {continue}
                                        if (c != a*c + b*f + c*i) {continue}
                                        if (d != d*a + e*d + f*g) {continue}
                                        if (e != d*b + e*e + f*h) {continue}
                                        if (f != d*c + e*f + f*i) {continue}
                                        if (g != g*a + h*d + i*g) {continue}
                                        if (h != g*b + h*e + i*h) {continue}
                                        if (i != g*c + h*f + i*i) {continue}
                                        erg+=1
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    return erg
}
