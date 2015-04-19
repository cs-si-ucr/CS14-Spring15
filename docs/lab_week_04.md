Lab 3: Binary Search Trees (BST)
================
[tree-image-1]:http://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Binary_tree.svg/220px-Binary_tree.svg.png

What's a tree?
--------------
Trees are often easier to deal with recursively (or if you're a mathematician, 'inductively').
Thus, to define a tree recursively, we can say that:

1. A Tree is a system of nodes
..* A node contains a value and pointers to its children
2. Every node has a unique parent (no node has more than one parent)
3. The **Root** of a tree has no parent
4. A Node can have any number of children (including 0)

When we put all of these things together, we end up with something looking like:
![tree](http://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Binary_tree.svg/220px-Binary_tree.svg.png "It's a tree!")


What makes BST different from other trees?
------------------------------------------
