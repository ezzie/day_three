require 'spec_helper'

describe "students/show" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :given_name => "Given Name",
      :middle_name => "Middle Name",
      :family_name => "Family Name",
      :grade_point_average => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Given Name/)
    rendered.should match(/Middle Name/)
    rendered.should match(/Family Name/)
    rendered.should match(/9.99/)
  end
end
