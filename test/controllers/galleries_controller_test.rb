require 'test_helper'

class GalleriesControllerTest < ActionController::TestCase
  setup do
    @gallery = galleries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:galleries)
  end

  test "should create gallery" do
    assert_difference('Gallery.count') do
      post :create, gallery: { description: @gallery.description, name: @gallery.name, thumbnail: @gallery.thumbnail }
    end

    assert_response 201
  end

  test "should show gallery" do
    get :show, id: @gallery
    assert_response :success
  end

  test "should update gallery" do
    put :update, id: @gallery, gallery: { description: @gallery.description, name: @gallery.name, thumbnail: @gallery.thumbnail }
    assert_response 204
  end

  test "should destroy gallery" do
    assert_difference('Gallery.count', -1) do
      delete :destroy, id: @gallery
    end

    assert_response 204
  end
end
