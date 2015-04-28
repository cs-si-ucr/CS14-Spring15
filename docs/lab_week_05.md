Lab Week 5: Sets and Maps
=========================

Exercise 1
----------
Write a class called `AnagramChecker` which 
keeps track of strings and is able to tell
if any other string is an anagram in in its
data structure.

Usage example:
```cpp
#include "anagramchecker.h"
#include <iostream>
#include <string>
using namespace std;

void printIfAnagram(const AnagramChecker & a, string s) {
    if(a.check(s)) {
        cout << s << " is an anagram of one of the words in the checker" << endl;
    } else {
        cout << s << " is not an anagram of one of the words in the checker" << endl;
    }
}

int main() {
    AnagramChecker a;
    a.add("hello");
    a.add("bye");

    printIfAnagram(a, "apple");
    printIfAnagram(a, "olleh");
}
```

The above problem should print out 
```text
apple is not an anagram of one of the words in the checker
olleh is an anagram of one of the words in the checker

```
