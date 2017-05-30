require 'test_helper'

class SavedTitlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @saved_title = saved_titles(:one)
  end

  test "should get index" do
    get saved_titles_url
    assert_response :success
  end

  test "should get new" do
    get new_saved_title_url
    assert_response :success
  end

  test "should create saved_title" do
    assert_difference('SavedTitle.count') do
      post saved_titles_url, params: { saved_title: { description: @saved_title.description, image_url: @saved_title.image_url, title: @saved_title.title } }
    end

    assert_redirected_to saved_title_url(SavedTitle.last)
  end

  test "should show saved_title" do
    get saved_title_url(@saved_title)
    assert_response :success
  end

  test "should get edit" do
    get edit_saved_title_url(@saved_title)
    assert_response :success
  end

  test "should update saved_title" do
    patch saved_title_url(@saved_title), params: { saved_title: { description: @saved_title.description, image_url: @saved_title.image_url, title: @saved_title.title } }
    assert_redirected_to saved_title_url(@saved_title)
  end

  test "should destroy saved_title" do
    assert_difference('SavedTitle.count', -1) do
      delete saved_title_url(@saved_title)
    end

    assert_redirected_to saved_titles_url
  end
end
