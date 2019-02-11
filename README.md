# Common Dimension

### Format Ruby :gem:
```ruby
$ irb -r ./src/common-dimension.rb

>> common_dimension(:mile, :yard)          #=> :metre
>> common_dimension(:yard, :foot)          #=> :metre
>> common_dimension(:yard, :litre)         #=> nil
>> common_dimension(:imperial_cup, :liter) #=> :liter
>> common_dimension(:stone, :ounce)        #=> :kilogram
>> common_dimension(:stone, :metre)        #=> nil
>> common_dimension(:gram, :gram)          #=> :kilogram
```

### Format Python :snake:
```python
$ python -i src/common-dimension.py

>>> common_dimension('mile', 'yard')
'metre'
>>> common_dimension('yard', 'foot')
'metre'
>>> common_dimension('yard', 'litre')
>>> common_dimension('imperial_cup', 'litre')
'liter'
>>> common_dimension('stone', 'ounce')
'kilogram'
>>> common_dimension('stone', 'metre')
>>> common_dimension('gram', 'gram')
'kilogram'
```

### Languages
* [Python](./src/lotto.py)
* [Ruby](./src/lotto.rb)
