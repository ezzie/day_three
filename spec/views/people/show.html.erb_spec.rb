require 'spec_helper'

describe "people/show" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
      :name => "Name",
      :secret => "Secret",
      :country => "Country",
      :email => "Email",
      :description => "MyText",
      :can_send_email => false,
      :graduation_year => 1,
      :body_temperature => 1.5,
      :price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Secret/)
    rendered.should match(/Country/)
    rendered.should match(/Email/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
    rendered.should match(/1/)
    rendered.should match(/1.5/)
    rendered.should match(/9.99/)
  end
end
