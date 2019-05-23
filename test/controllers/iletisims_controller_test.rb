require 'test_helper'

class IletisimsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @iletisim = iletisims(:one)
  end

  test "should get index" do
    get iletisims_url
    assert_response :success
  end

  test "should get new" do
    get new_iletisim_url
    assert_response :success
  end

  test "should create iletisim" do
    assert_difference('Iletisim.count') do
      post iletisims_url, params: { iletisim: { aciklama: @iletisim.aciklama } }
    end

    assert_redirected_to iletisim_url(Iletisim.last)
  end

  test "should show iletisim" do
    get iletisim_url(@iletisim)
    assert_response :success
  end

  test "should get edit" do
    get edit_iletisim_url(@iletisim)
    assert_response :success
  end

  test "should update iletisim" do
    patch iletisim_url(@iletisim), params: { iletisim: { aciklama: @iletisim.aciklama } }
    assert_redirected_to iletisim_url(@iletisim)
  end

  test "should destroy iletisim" do
    assert_difference('Iletisim.count', -1) do
      delete iletisim_url(@iletisim)
    end

    assert_redirected_to iletisims_url
  end
end
