After do |scenario|
    if scenario.failed?
        screenshot = Capybara.page.save_screenshot("reports/screenshot/sc.png")
        attach(screenshot, 'image/png')
    end
end