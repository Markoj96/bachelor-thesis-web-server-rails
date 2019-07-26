json.array! @houses do |house|
  json.partial! 'house', house: house
end