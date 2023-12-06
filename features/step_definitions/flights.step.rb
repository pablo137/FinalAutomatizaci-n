When(/^I enter flight details as shown below$/) do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    puts "Entering data: #{key} => #{value}"
    case key
    when "Type:"
      find("input[type='radio'][name='tripType'][value='#{value}']").click
    when "Passengers:"
      select value, from: 'passCount'
    when "Departing From:"
      select value, from: 'fromPort'
    when "On:"
      date_parts = value.split(' ')
      select date_parts[0], from: 'fromMonth'
      select date_parts[1], from: 'fromDay'
    when "Arriving In:"
      select value, from: 'toPort'
    when "Returning:"
      date_parts = value.split(' ')
      select date_parts[0], from: 'toMonth'
      select date_parts[1], from: 'toDay'
    when "Service Class:"
      find("input[type='radio'][name='servClass'][value='#{value}']").click
    when "Airline:"
      select value, from: 'airline'
    end
  end
end

When(/^I press the CONTINUE button$/) do
  xpath = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[14]/td/input'
  find(:xpath, xpath).click
end

Then(/^A web site No Seats Avaialble message$/) do
  expected_message = "After flight finder - No Seats Avaialble"
  expect(page).to have_content(expected_message)
end

When(/^I press the yellow BACK TO HOME button$/) do
  xpath = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr[1]/td[2]/table/tbody/tr[2]/td/a'
  find(:xpath, xpath).click
  sleep 2
end
