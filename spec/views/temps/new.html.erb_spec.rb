require 'spec_helper'

describe "temps/new.html.erb" do
  before(:each) do
    assign(:temp, stub_model(Temp,
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new temp form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => temps_path, :method => "post" do
      assert_select "input#temp_title", :name => "temp[title]"
    end
  end
end
