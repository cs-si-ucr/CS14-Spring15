Lab 2: The Standard Template Library
===================================
[std-vector]:http://en.cppreference.com/w/cpp/container/vector "cppreference for std::vector"
[std-list]:http://en.cppreference.com/w/cpp/container/list "cppreference for std::list"
[std-swap]:http://en.cppreference.com/w/cpp/algorithm/swap "cppreference for std::swap"
[std-sort]:http://en.cppreference.com/w/cpp/algorithm/sort "cppreference for std::sort"
[STL-beautiful]:http://www.bfilipek.com/2014/12/top-5-beautiful-c-std-algorithms.html "Cool examples that showcase use of the STL"
[STL-video]:https://channel9.msdn.com/Series/C9-Lectures-Stephan-T-Lavavej-Standard-Template-Library-STL-/C9-Lectures-Introduction-to-STL-with-Stephan-T-Lavavej  "Lecture that introduces STL"

[Vec-iterator-Image]:http://upload.cppreference.com/mwiki/images/1/1b/range-begin-end.svg

Like templates, you've already been using a
small portiton of the Standard Template Library already.

Namely, you're already well-acquiented with the 
contigous container [`std::vector`][std-vector] and maybe even [`std::list`][std-list].

The Standard Template Library, or the **STL** for short, is
a library that provides many reusable (or generic) algorithms and data structures that programmers would otherwise have to reimplement themselves.

Some of these algorithms range from simple algorithms such
as [`std::swap`][std-swap] to the more complex [`std::sort`][std-sort].

The motivation for learning and mastering the STL is to write [code that is clear and concise][STL-beautiful].  

Iterators
---------
Probably the most important and inescapable concept in the
STL is the types we call iterators.

Iterators are used to generalize the iterator over a STL container (or your own containers that implement iterators). 

The easiest way to think about iterators is to think of them as fancy pointers (again, this conceptual model works for 80% of use cases - it's not entirely correct).

*"Enough talk, show me the code!"* Here's how you can iterate through a vector using iterators!
```cpp
vector<int> vec {1, 2, 3};
vector<int>::iterator vec_iterator = vec.begin();

// go through the vector until we hit vec.end()
while(vec_iterator != vec.end()) {
    cout << *vec_iterator << ' ';
    vec_iterator++; //move the iterator up one 
}
// Outputs "1 2 3"
```
Note the `vec.begin()` and `vec.end()` calls in the above
code block. Both of these return an iterator to different
positions in the vector container. Both also return an
iterator of type `vector<int>::iterator`.

`vec.begin()` returns an iterator to beginning of `vec`. However, `vec.end()` returns an iterator to the element **one past** the last element.

This is pictured below (image from en.cppreference.com)
![blah][Vec-iterator-Image]


Cool References
---------------
[Standard Template Library Video Series by Stephan T. Lavaej at Microsoft][STL-video]
