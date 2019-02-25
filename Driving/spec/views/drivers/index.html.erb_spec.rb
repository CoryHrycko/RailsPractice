require 'rails_helper'

RSpec.describe "drivers/index", type: :view do
  before(:each) do
    assign(:drivers, [
      Driver.create!(),
      Driver.create!()
    ])
  end

  it "renders a list of drivers" do
    render
  end
end
