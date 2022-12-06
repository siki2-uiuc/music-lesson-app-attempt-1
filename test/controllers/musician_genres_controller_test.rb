require "test_helper"

class MusicianGenresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @musician_genre = musician_genres(:one)
  end

  test "should get index" do
    get musician_genres_url
    assert_response :success
  end

  test "should get new" do
    get new_musician_genre_url
    assert_response :success
  end

  test "should create musician_genre" do
    assert_difference('MusicianGenre.count') do
      post musician_genres_url, params: { musician_genre: { genre_id: @musician_genre.genre_id, user_id: @musician_genre.user_id } }
    end

    assert_redirected_to musician_genre_url(MusicianGenre.last)
  end

  test "should show musician_genre" do
    get musician_genre_url(@musician_genre)
    assert_response :success
  end

  test "should get edit" do
    get edit_musician_genre_url(@musician_genre)
    assert_response :success
  end

  test "should update musician_genre" do
    patch musician_genre_url(@musician_genre), params: { musician_genre: { genre_id: @musician_genre.genre_id, user_id: @musician_genre.user_id } }
    assert_redirected_to musician_genre_url(@musician_genre)
  end

  test "should destroy musician_genre" do
    assert_difference('MusicianGenre.count', -1) do
      delete musician_genre_url(@musician_genre)
    end

    assert_redirected_to musician_genres_url
  end
end
