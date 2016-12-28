

json.array! @employees.each do |employee|
  json.id employee.id
  json.first_name employee.first_name
  json.last_name employee.last_name
  json.birth_date employee.birth_date
  json.email employee.email
  json.ssn employee.ssn
end
