require 'spec_helper'

describe "awards/new" do
  before(:each) do
    assign(:award, stub_model(Award,
      :name => "MyString",
      :year => 1,
      :student_id => 1
    ).as_new_record)
  end

  it "renders new award form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => awards_path, :method => "post" do
      assert_select "input#award_name", :name => "award[name]"
      assert_select "input#award_year", :name => "award[year]"
      assert_select "input#award_student_id", :name => "award[student_id]"
    end
  end
end
