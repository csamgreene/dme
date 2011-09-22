require 'spec_helper'

describe "temps/show.html.erb" do
  before(:each) do
    @temp = assign(:temp, stub_model(Temp,
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
  end
end
