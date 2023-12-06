Given('Enter on the {string} page') do |link|
    url = find_link(link)[:href].split('#').first
    visit(url)
end

When('I press the button {string}') do |string|
    click_button(string) 
end

Then('A {string} message is then displayed on the screen') do |msg|
    expect(page).to have_content(msg)
end