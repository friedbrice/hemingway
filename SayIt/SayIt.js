// SayIt.js
// by daniel
//
// We are to write a function that when given a string will
// modify state and return itself and when given no argument
// will cause an IO side effect and clear the state.
//
// We give three implementations:
// - As a function that modified a global
// - As a class with a single method `_`
// - As a closure implemented by creating an internal wrapper function
"use strict"

// as a function that modifies a global
var words = []

function sayIt(word) {
    if (word === undefined) {
        var message = words.join(' ')
        words = []
        return message
    } else {
        words.push(word)
        return sayIt
    }
}

// as a class with one property and one method
function objectSayIt() {
    this.words = []

    this._ = function (x) {
        if (x === undefined) {
            var message = this.words.join(' ')
            this.words = []
            return message
        } else {
            this.words.push(x)
            return this
        }
    }

    return this
}

// as a closure implemented by a wrapper function
function wrapperSayIt(word) {
    var acc = []

    var fn = function (x) {
        if (x === undefined) {
            var message = acc.join(' ')
            return message
        } else {
            acc.push(x)
            return fn
        }
    }

    return fn(word)
}
