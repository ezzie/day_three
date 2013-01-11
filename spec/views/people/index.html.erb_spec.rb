require 'spec_helper'

describe "people/index" do
  before(:each) do
    assign(:people, [
      stub_model(Person,
        :name => "Name",
        :secret => "Secret",
        :country => "Country",
        :email => "Email",
        :description => "MyText",
        :can_send_email => false,
        :graduation_year => 1,
        :body_temperature => 1.5,
        :price => "9.99"
      ),
      stub_model(Person,
        :name => "Name",
        :secret => "Secret",
        :country => "Country",
        :email => "Email",
        :description => "MyText",
        :can_send_email => false,
        :graduation_year => 1,
        :body_temperature => 1.5,
        :price => "9.99"
      )
    ])
  end

  it "renders a list of people" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Secret".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
