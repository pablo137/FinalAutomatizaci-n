Given('Enter on the register page') do
    puts current_path
    xpath_base = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[2]/td/table/tbody/tr/td[2]/a'
    element = find(:xpath, xpath_base)
    url = element[:href].split('#').first
    visit(url)
  end
Given('I enter in the fields with:') do |table|
  credentials = table.rows_hash
  fill_in 'firstName', with: credentials['firstname']
  fill_in 'lastName', with: credentials['lastname']
  fill_in 'phone', with: credentials['phone']
  fill_in 'userName', with: credentials['email']
  fill_in 'address1', with: credentials['address']
  fill_in 'city', with: credentials['city']
  fill_in 'state', with: credentials['state']
  fill_in 'postalCode', with: credentials['postacode']
  fill_in 'email', with: credentials['username']
  fill_in 'password', with: credentials['password']
  fill_in 'confirmPassword', with: credentials['cpassword']
end

Given('I enter in the fields {string} {string} {string}:') do |username,pass,cpass|
    fill_in 'email', with: value
    fill_in 'password', with: value
    fill_in 'confirmPassword', with: value
end
