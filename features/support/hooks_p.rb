Before do
    visit 'https://demo.guru99.com/test/newtours/index.php'
    page.driver.browser.manage.window.maximize
end

After do 
    page.driver.browser.manage.delete_cookie('sesion')
end