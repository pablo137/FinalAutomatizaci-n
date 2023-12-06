Given("I enter the following user credentials:") do |table|
  credentials = table.rows_hash
  fill_in 'userName', with: credentials['username']
  fill_in 'password', with: credentials['password']
end

Given('I enter {string} with {string} and verify {float} characters') do |field, value, verify|
  fill_in field, with: value
  expect(value.length).to eq(verify)
end

When('I remark the field {string}') do |string|
  input_value = find_field(string).value
end

Then('the field {string} should have only {float} characters.') do |field, float|
  input_value = find_field(field).value
  expect(input_value.length).to eq(float)
end