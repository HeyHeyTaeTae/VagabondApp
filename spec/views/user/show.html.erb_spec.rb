require 'rails_helper'

RSpec.describe "the user profile page" do

  before(:all) do
  	User.destory.all
  	@good_params = {
  					:first_name => "Tae",
					:last_name => "Kim",
					:email => "tae@tae.com",
					:password => "bad",
					:current_city => "San Francisco"
  					}
  	@user = User.create!(@good_params)
  end

  it "displays the user's current city" do
  	assign(:user, @user)
  	render :template => "users/show.html.erb"

  	expect(rendered).to match @user.current_city
  end

  after(:all) do
  	@user.destroy
  end

end