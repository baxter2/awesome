def common_dimension(from, to)
  CONVERSION_FACTORS.keys.find do |canonical_unit|
    CONVERSION_FACTORS[canonical_unit].keys.include?(from) && CONVERSION_FACTORS[canonical_unit].keys.include?(to) 
  end
end

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
