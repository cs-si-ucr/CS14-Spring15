Lab 3: Binary Search Trees (BST)
================

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

![tree](http://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Binary_tree.svg/220px-Binary_tree.svg.png =250x "It's a tree!")


What's a BST?
-------------
A Binary Search Tree is exactly like any other tree, except every node has **exactly** two children (if there is no child, the node will be a null pointer).
Furtermore (and more importantly), every child to the left of a node will be less than the node, while every child to the right will be greater.

You'll notice that the picture above is **NOT** a BST. Even though each node has two children (we can pretend that there are invisible null children), if we go to the left child of our root, we find a value that is *greater*, breaking our definition.

**This** would be a valid Binary Search Tree:

![BST](http://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Binary_search_tree.svg/2000px-Binary_search_tree.svg.png =250x "It's a BST!")

Notice how **every** number to the left of any node (take 8 for example), is less than the node itself. Since this is the case, where will the smallest node be? What about the largest?