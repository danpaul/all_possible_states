## About

`all_possible_states` is a simple ruby class to iterate over every possible state of a binary array of a user defined length.

## Example

```ruby
possible_states = Possible_states.new(4);
possible_states.show_state()

while possible_states.next()
    possible_states.show_state()
end
```

Output:
```
[false, false, false, false]
[true, false, false, false]
[true, true, false, false]
[true, true, true, false]
[true, true, true, true]
[false, true, false, false]
[false, true, true, false]
[false, true, true, true]
[false, false, true, false]
[false, false, true, true]
[false, false, false, true]
```