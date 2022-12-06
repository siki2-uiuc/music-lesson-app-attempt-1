require "application_system_test_case"

class UserInstrumentsTest < ApplicationSystemTestCase
  setup do
    @user_instrument = user_instruments(:one)
  end

  test "visiting the index" do
    visit user_instruments_url
    assert_selector "h1", text: "User Instruments"
  end

  test "creating a User instrument" do
    visit user_instruments_url
    click_on "New User Instrument"

    fill_in "Instrument", with: @user_instrument.instrument_id
    fill_in "Max teaching level", with: @user_instrument.max_teaching_level_id
    fill_in "Min teaching level", with: @user_instrument.min_teaching_level_id
    fill_in "Musician", with: @user_instrument.musician_id
    fill_in "Own level", with: @user_instrument.own_level_id
    fill_in "Years played", with: @user_instrument.years_played
    click_on "Create User instrument"

    assert_text "User instrument was successfully created"
    click_on "Back"
  end

  test "updating a User instrument" do
    visit user_instruments_url
    click_on "Edit", match: :first

    fill_in "Instrument", with: @user_instrument.instrument_id
    fill_in "Max teaching level", with: @user_instrument.max_teaching_level_id
    fill_in "Min teaching level", with: @user_instrument.min_teaching_level_id
    fill_in "Musician", with: @user_instrument.musician_id
    fill_in "Own level", with: @user_instrument.own_level_id
    fill_in "Years played", with: @user_instrument.years_played
    click_on "Update User instrument"

    assert_text "User instrument was successfully updated"
    click_on "Back"
  end

  test "destroying a User instrument" do
    visit user_instruments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User instrument was successfully destroyed"
  end
end
