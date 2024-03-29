require 'spec_helper'

describe "awards/edit" do
  before(:each) do
    @award = assign(:award, stub_model(Award,
      :name => "MyString",
      :year => 1,
      :student_id => 1
    ))
  end

  it "renders the edit award form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => awards_path(@award), :method => "post" do
      assert_select "input#award_name", :name => "award[name]"
      assert_select "input#award_year", :name => "award[year]"
      assert_select "input#award_student_id", :name => "award[student_id]"
    end
  end
end
