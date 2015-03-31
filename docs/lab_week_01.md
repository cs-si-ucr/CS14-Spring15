Lab 1: Templates
================
You may remember (or should remember) from CS12 a data structure
that is formed by connecting a group of nodes called a "Linked List".

In order to implement a Linked List, you must define the structure
for an individual node. 

For a singlely-linked list of integers, it may look something like:
```cpp
struct IntNode{
    int val;
    IntNode * next;
};
```
In order to implement the Linked List, we store the head of the list,
which is a pointer to a `IntNode`. We also implement methods that
insert/remove elements from the list
e.g.
```cpp
class IntList {
    public:
        void insert(int val);
        // ...
    private:
        IntNode * head;
};
```

That's all fine and dandy, but if instead want a `DoubleList` or a
`StringList`, then we are in trouble. 

A common first instinct is to copy-and-paste code manually 
and change the types where needed. But even expert programmers 
start to [make mistakes](http://www.viva64.com/en/b/0260/print/)
copy and pasting.

The solution for this problem are function-templates and class-templates. 

In fact, you've already been using templates all-along. The standard
library container, vector, which makes dynamic arrays easy to use is
also one of these template classes.

To create an instance of a template class is simple, just provide the
desired type in the "angle-brackets".

```cpp
vector<int> numbers; // creates a vector of integers
vector<string> words; // creates a vector of strings
```
