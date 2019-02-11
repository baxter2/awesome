# Common Dimension

### Usage

Given:
```ruby
CONVERSION_FACTORS = {
  metre: {
    kilometre:     0.001,
    metre:         1.0,
    centimetre:  100.0,
    millimetre: 1000.0,
    mile:          0.000621371,
    yard:          1.09361296,
    foot:          3.2808388799999997
  },
  liter: {
    liter:            1.0, 
    milliliter:    1000.0, 
    imperial_pint:    1.75975,
    imperial_cup:     3.51950030971673
  },
  kilogram: {
    tonne:        0.001,
    kilogram:     1.0,
    gram:      1000.0, 
    stone:        0.157473, 
    pound:        2.20462,
    ounce:       35.274
  }
}
```

```ruby
>> common_dimension(:mile, :yard)
=> :metre

>> common_dimension(:yard, :foot)
=> :metre

>> common_dimension(:yard, :liter)
=> nil

>> common_dimension(:imperial_cup, :liter)
=> :liter

>> common_dimension(:stone, :ounce)
=> :kilogram

>> common_dimension(:stone, :metre)
=> nil

>> common_dimension(:gram, :gram)
=> :kilogram
```

### Languages
* Python
* [Ruby](./src/lotto.rb)
