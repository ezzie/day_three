require 'spec_helper'

describe "students/new" do
  before(:each) do
    assign(:student, stub_model(Student,
      :given_name => "MyString",
      :middle_name => "MyString",
      :family_name => "MyString",
      :grade_point_average => "9.99"
    ).as_new_record)
  end

  it "renders new student form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => students_path, :method => "post" do
      assert_select "input#student_given_name", :name => "student[given_name]"
      assert_select "input#student_middle_name", :name => "student[middle_name]"
      assert_select "input#student_family_name", :name => "student[family_name]"
      assert_select "input#student_grade_point_average", :name => "student[grade_point_average]"
    end
  end
end
