require 'spec_helper'

feature 'TrueAutomation.IO Capybara example' do

  scenario 'inputs TA' do
    visit 'https://jarapova.github.io/'

    find(:xpath, ta('text', "(//input[@type='text'])[1]")).set('test')
    find(:xpath, ta('password', "(//input[@type='password'])[1]")).set('test')
    find(:xpath, ta('datetime', "(//input[@type='datetime'])[1]")).set('0001')
    find(:xpath, ta('datetimelocal', "(//input[@type='datetime-local'])[1]")).set('0002')
    find(:xpath, ta('date', "(//input[@type='date'])[1]")).set('2000')
    find(:xpath, ta('month', "(//input[@type='month'])[1]")).set('11')
    find(:xpath, ta('time', "(//input[@type='time'])[1]")).set('1112')
    find(:xpath, ta('week', "(//input[@type='week'])[1]")).set('1111')
    find(:xpath, ta('number', "(//input[@type='number'])[1]")).set('1234')
    find(:xpath, ta('email', "(//input[@type='email'])[1]")).set('121212121212@reuyuer')
    find(:xpath, ta('url', "(//input[@type='url'])[1]")).set('qwerty.cece')
    find(:xpath, ta('search', "(//input[@type='search'])[1]")).set('qwert')
    find(:xpath, ta('tel', "(//input[@type='tel'])[1]")).set('435343')
    find(:xpath, ta('file', "(//input[@type='file'])[1]")).send_keys('/Users/juliaarapova/Downloads/gradle-5.0')
    find(:xpath, ta('color', "(//input[@type='color'])[1]")).set('#C2634E')


    # sleep 5
     find(:xpath, ta('range', "(//input[@type='range'])[1]")).set('step', '20')

    sleep 5

  end


  # scenario 'inputs No-TA' do
  #   visit 'https://jarapova.github.io/'
  #
  #   find(:xpath, "(//input[@type='text'])[1]").set('test')
  #   find(:xpath,  "(//input[@type='password'])[1]").set('test')
  #   find(:xpath,  "(//input[@type='datetime'])[1]").set('0001')
  #   find(:xpath,  "(//input[@type='datetime-local'])[1]").set('0002')
  #   find(:xpath,  "(//input[@type='date'])[1]").set('2000')
  #   find(:xpath,  "(//input[@type='month'])[1]").set('11')
  #   find(:xpath,  "(//input[@type='time'])[1]").set('1112')
  #   find(:xpath,  "(//input[@type='week'])[1]").set('1111')
  #   find(:xpath,  "(//input[@type='number'])[1]").set('1234')
  #   find(:xpath,  "(//input[@type='email'])[1]").set('121212121212@reuyuer')
  #   find(:xpath,  "(//input[@type='url'])[1]").set('qwerty.cece')
  #   find(:xpath,  "(//input[@type='search'])[1]").set('qwert')
  #   find(:xpath,  "(//input[@type='tel'])[1]").set('435343')
  #   find(:xpath,  "(//input[@type='file'])[1]").send_keys('/Users/juliaarapova/Downloads/gradle-5.0')
  #   find(:xpath, "(//input[@type='color'])[1]").set('#C2634E')
  #
  #
  #   sleep 5
  #     find(:xpath, "(//input[@type='range'])[1]").set('step', '20')
  #
  #   sleep 5
  #
  # end


  
  #Inputs type range!!!
    # const range =  $(("//input[@id='formControlRange']"));
    # browser.execute("return arguments[0].value = arguments[1]", range, '30')
    # browser.pause(5000)
end
