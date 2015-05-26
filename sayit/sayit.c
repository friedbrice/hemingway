// This is garbage that won't compile.
// I don't even know if functions an be return values (line 19).
# include <stdio.h>

// Global for storing invoked parameters
char words[];

sayIt( char word[] ) {
    // Check to see if a parameter was given.
    if (word[0] == '\0') {
        // If no parameter, empty words and print.
        char message = words;
        words[0] = '\0';
        printf(message);
        return message;
    } else {
        // If a parameter is given, push to words and repeat.
        words = words + ' ' + word
        return sayIt;
    }
}

sayIt("Hey")("there!")()
