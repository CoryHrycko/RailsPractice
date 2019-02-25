require 'rails_helper'

RSpec.describe "drivers/index", type: :view do
  before(:each) do
    assign(:drivers, [
      Driver.create!(
        :name => "Name",
        :distance => 2
      ),
      Driver.create!(
        :name => "Name",
        :distance => 2
      )
    ])
  end

  it "renders a list of drivers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
