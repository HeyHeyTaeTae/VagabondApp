require 'rails_helper'

RSpec.describe User, :type => :model do
  
  it "has a well formatted email with an @ symbol" do
  	user = User.create!({
  						:first_name => "Tae",
  						:last_name => "Kim",
  						:email => "tae@tae.com",
  						:password => "bad",
  						:current_city => "San Francisco"})
  	# email string should contain an @ symbol
  	expect(user.email).to match "@"
  end

end
