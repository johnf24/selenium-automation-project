require "selenium-webdriver"
require "rspec"

# Global variables
username = "user"
email = "user@test.com"
password = "password"
expected_banner_text = "Welcome to the blog user"

# Functions for filling out, submitting and validating form
def enter_username(username)
  username_field = @driver.find_element(id: 'user_username')
  username_field.send_keys(username)
end

def enter_email_address(email)
  email_field = @driver.find_element(id: 'user_email')
  email_field.send_keys(email)
end

def enter_password(password)
  password_field = @driver.find_element(id: 'user_password')
  password_field.send_keys(password)
end

def submit_form()
  sign_up_button = @driver.find_element(id: 'submit')
  sign_up_button.click
end

def get_banner_text()
  banner = @driver.find_element(id: 'flash_success')
  banner.text
end

# Signs up for blog
describe "Blog application" do
  describe "when signing up a new user"	do
  	it "creates a new user account successfully" do
		  @driver = Selenium::WebDriver.for :chrome
      # Navigates to signup form
      @driver.navigate.to "url path"
      # Calls functions
      enter_username(username)
      enter_email_address(email)
      enter_password(password)
      submit_form()
      # Confirms user has signed up successfully
      banner_text = get_banner_text()
      expect(banner_text).to eq(expected_banner_text)
		  @driver.quit
	  end
  end
end
