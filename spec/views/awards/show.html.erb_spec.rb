require 'spec_helper'

describe "awards/show" do
  before(:each) do
    @award = assign(:award, stub_model(Award,
      :name => "Name",
      :year => 1,
      :student_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
