require "test_helper"

class TestimonialLinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testimonial_link = testimonial_links(:one)
  end

  test "should get index" do
    get testimonial_links_url
    assert_response :success
  end

  test "should get new" do
    get new_testimonial_link_url
    assert_response :success
  end

  test "should create testimonial_link" do
    assert_difference('TestimonialLink.count') do
      post testimonial_links_url, params: { testimonial_link: { link_url: @testimonial_link.link_url, user_id: @testimonial_link.user_id } }
    end

    assert_redirected_to testimonial_link_url(TestimonialLink.last)
  end

  test "should show testimonial_link" do
    get testimonial_link_url(@testimonial_link)
    assert_response :success
  end

  test "should get edit" do
    get edit_testimonial_link_url(@testimonial_link)
    assert_response :success
  end

  test "should update testimonial_link" do
    patch testimonial_link_url(@testimonial_link), params: { testimonial_link: { link_url: @testimonial_link.link_url, user_id: @testimonial_link.user_id } }
    assert_redirected_to testimonial_link_url(@testimonial_link)
  end

  test "should destroy testimonial_link" do
    assert_difference('TestimonialLink.count', -1) do
      delete testimonial_link_url(@testimonial_link)
    end

    assert_redirected_to testimonial_links_url
  end
end
