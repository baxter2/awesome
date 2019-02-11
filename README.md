# Common Dimension

### Format
```ruby
>> common_dimension(:mile, :yard)          #=> :metre

>> common_dimension(:yard, :foot)          #=> :metre

>> common_dimension(:yard, :liter)         #=> nil

>> common_dimension(:imperial_cup, :liter) #=> :liter

>> common_dimension(:stone, :ounce)        #=> :kilogram

>> common_dimension(:stone, :metre)        #=> nil

>> common_dimension(:gram, :gram)          #=> :kilogram
```

### Languages
* Python
* [Ruby](./src/lotto.rb)
