# Reverse Polish Notation Interpretter 🐫
I made this repo mostly to learn some more OCaml. Specifcially, I wanted more experience working with recursion in OCaml and list-based operations. This interpretter uses a stack based approach to RPN, building up the stack until operators are input. I'm sure better solutions exist, but this has been a pretty cool langauge exploration for me :)

## RPN
[Reverse Polish Notation](https://en.wikipedia.org/wiki/Reverse_Polish_notation) is a mathematical notation that involves all numbers being listed prior to operators, with the operators acting on the numbers in a stack-based matter (backwards). An example of an RPN expression could be 
```
5 2 2 + * =
```
Which would evaluate to `(2 + 2) * 5 = `, and would evaluate to 20!

In this program, stdin is continuosly read from up until `=` is used. Any non-digit, non-operator strings are simply ignored by the interpretter.
