json.array! @special_businesses do |special_business|
  json.partial! 'special_business', special_business: special_business
end