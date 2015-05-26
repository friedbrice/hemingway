// My first foray into Node.js.
// Basically a direct port of my python offering.
// I'd like to find a way to avoid using a global variable.
/* Also, I thought writing a javascript solution would show me how to
   implement a C solution, but I'm just as clueless as ever. */

// Global for storing invoked parameters
var words = [];

function sayIt(word) {
    // Check to see if a parameter was given.
    if (word == null) {
        // If no parameter, empty words and print.
        message = words.join(' ');
        words = [];
        console.log(message);
        return message;
    } else {
        // If a parameter is given, push to words and repeat.
        words.push(word);
        return sayIt;
    }
}

sayIt("Hey")("there!")()
