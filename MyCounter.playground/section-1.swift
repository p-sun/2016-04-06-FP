// Playground - noun: a place where people can play

import UIKit

// Return a counter function that increments an internal variable c
func makeCounter() -> (() -> Int) {
    var c = 0
    func addOne() -> Int {
        c+=1
        return c
    }
    return addOne
}
var counter = makeCounter()
counter()
counter()


// Recall that a tuple is
var tuple = (s: "ABC", n: 3234)
tuple.s
tuple.n


// Return a tuple consisting of two functions
func newCounter() -> (tick: (() -> Int), reset: (() -> Int)  ) {
    var c = 0
    func tick() -> Int {
        c+=1
        return c
    }
    func reset() -> Int {
        c=0
        return c
    }
    return (tick, reset)
}
var counter2 = newCounter()
counter2.tick()
counter2.tick()
counter2.reset()



