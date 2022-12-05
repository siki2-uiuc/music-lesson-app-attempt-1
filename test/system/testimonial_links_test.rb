require "application_system_test_case"

class TestimonialLinksTest < ApplicationSystemTestCase
  setup do
    @testimonial_link = testimonial_links(:one)
  end

  test "visiting the index" do
    visit testimonial_links_url
    assert_selector "h1", text: "Testimonial Links"
  end

  test "creating a Testimonial link" do
    visit testimonial_links_url
    click_on "New Testimonial Link"

    fill_in "Link url", with: @testimonial_link.link_url
    fill_in "User", with: @testimonial_link.user_id
    click_on "Create Testimonial link"

    assert_text "Testimonial link was successfully created"
    click_on "Back"
  end

  test "updating a Testimonial link" do
    visit testimonial_links_url
    click_on "Edit", match: :first

    fill_in "Link url", with: @testimonial_link.link_url
    fill_in "User", with: @testimonial_link.user_id
    click_on "Update Testimonial link"

    assert_text "Testimonial link was successfully updated"
    click_on "Back"
  end

  test "destroying a Testimonial link" do
    visit testimonial_links_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Testimonial link was successfully destroyed"
  end
end
