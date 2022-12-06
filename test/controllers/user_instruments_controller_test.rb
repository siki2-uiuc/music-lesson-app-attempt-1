require "test_helper"

class UserInstrumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_instrument = user_instruments(:one)
  end

  test "should get index" do
    get user_instruments_url
    assert_response :success
  end

  test "should get new" do
    get new_user_instrument_url
    assert_response :success
  end

  test "should create user_instrument" do
    assert_difference('UserInstrument.count') do
      post user_instruments_url, params: { user_instrument: { instrument_id: @user_instrument.instrument_id, max_teaching_level_id: @user_instrument.max_teaching_level_id, min_teaching_level_id: @user_instrument.min_teaching_level_id, musician_id: @user_instrument.musician_id, own_level_id: @user_instrument.own_level_id, years_played: @user_instrument.years_played } }
    end

    assert_redirected_to user_instrument_url(UserInstrument.last)
  end

  test "should show user_instrument" do
    get user_instrument_url(@user_instrument)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_instrument_url(@user_instrument)
    assert_response :success
  end

  test "should update user_instrument" do
    patch user_instrument_url(@user_instrument), params: { user_instrument: { instrument_id: @user_instrument.instrument_id, max_teaching_level_id: @user_instrument.max_teaching_level_id, min_teaching_level_id: @user_instrument.min_teaching_level_id, musician_id: @user_instrument.musician_id, own_level_id: @user_instrument.own_level_id, years_played: @user_instrument.years_played } }
    assert_redirected_to user_instrument_url(@user_instrument)
  end

  test "should destroy user_instrument" do
    assert_difference('UserInstrument.count', -1) do
      delete user_instrument_url(@user_instrument)
    end

    assert_redirected_to user_instruments_url
  end
end
