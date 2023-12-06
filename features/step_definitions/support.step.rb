Then(/^A web site under construction message$/) do
  expected_message = "This section of our web site is currently under construction."
  expect(page).to have_content(expected_message)
end

When(/^I press the BACK TO HOME button$/) do
  xpath = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr[1]/td[2]/table/tbody/tr[4]/td/a'
  find(:xpath, xpath).click
  sleep 2
end
