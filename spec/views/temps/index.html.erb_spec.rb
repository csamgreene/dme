require 'spec_helper'

describe "temps/index.html.erb" do
  before(:each) do
    assign(:temps, [
      stub_model(Temp,
        :title => "Title"
      ),
      stub_model(Temp,
        :title => "Title"
      )
    ])
  end

  it "renders a list of temps" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
