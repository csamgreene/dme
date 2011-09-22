require 'spec_helper'

describe "temps/edit.html.erb" do
  before(:each) do
    @temp = assign(:temp, stub_model(Temp,
      :title => "MyString"
    ))
  end

  it "renders the edit temp form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => temps_path(@temp), :method => "post" do
      assert_select "input#temp_title", :name => "temp[title]"
    end
  end
end
