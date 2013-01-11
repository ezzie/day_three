require 'spec_helper'

describe "students/index" do
  before(:each) do
    assign(:students, [
      stub_model(Student,
        :given_name => "Given Name",
        :middle_name => "Middle Name",
        :family_name => "Family Name",
        :grade_point_average => "9.99"
      ),
      stub_model(Student,
        :given_name => "Given Name",
        :middle_name => "Middle Name",
        :family_name => "Family Name",
        :grade_point_average => "9.99"
      )
    ])
  end

  it "renders a list of students" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Given Name".to_s, :count => 2
    assert_select "tr>td", :text => "Middle Name".to_s, :count => 2
    assert_select "tr>td", :text => "Family Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
