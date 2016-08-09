require 'rails_helper'

RSpec.describe "rooms/edit", type: :view do
  before(:each) do
    @room = assign(:room, Room.create!(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit room form" do
    render

    assert_select "form[action=?][method=?]", room_path(@room), "post" do

      assert_select "input#room_title[name=?]", "room[title]"

      assert_select "textarea#room_description[name=?]", "room[description]"
    end
  end
end
