require 'spec_helper'

describe "people/new" do
  before(:each) do
    assign(:person, stub_model(Person,
      :name => "MyString",
      :secret => "MyString",
      :country => "MyString",
      :email => "MyString",
      :description => "MyText",
      :can_send_email => false,
      :graduation_year => 1,
      :body_temperature => 1.5,
      :price => "9.99"
    ).as_new_record)
  end

  it "renders new person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => people_path, :method => "post" do
      assert_select "input#person_name", :name => "person[name]"
      assert_select "input#person_secret", :name => "person[secret]"
      assert_select "input#person_country", :name => "person[country]"
      assert_select "input#person_email", :name => "person[email]"
      assert_select "textarea#person_description", :name => "person[description]"
      assert_select "input#person_can_send_email", :name => "person[can_send_email]"
      assert_select "input#person_graduation_year", :name => "person[graduation_year]"
      assert_select "input#person_body_temperature", :name => "person[body_temperature]"
      assert_select "input#person_price", :name => "person[price]"
    end
  end
end
