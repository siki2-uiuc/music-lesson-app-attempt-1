require "application_system_test_case"

class MusicianGenresTest < ApplicationSystemTestCase
  setup do
    @musician_genre = musician_genres(:one)
  end

  test "visiting the index" do
    visit musician_genres_url
    assert_selector "h1", text: "Musician Genres"
  end

  test "creating a Musician genre" do
    visit musician_genres_url
    click_on "New Musician Genre"

    fill_in "Genre", with: @musician_genre.genre_id
    fill_in "User", with: @musician_genre.user_id
    click_on "Create Musician genre"

    assert_text "Musician genre was successfully created"
    click_on "Back"
  end

  test "updating a Musician genre" do
    visit musician_genres_url
    click_on "Edit", match: :first

    fill_in "Genre", with: @musician_genre.genre_id
    fill_in "User", with: @musician_genre.user_id
    click_on "Update Musician genre"

    assert_text "Musician genre was successfully updated"
    click_on "Back"
  end

  test "destroying a Musician genre" do
    visit musician_genres_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Musician genre was successfully destroyed"
  end
end
