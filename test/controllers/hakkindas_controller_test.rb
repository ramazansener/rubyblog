require 'test_helper'

class HakkindasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hakkinda = hakkindas(:one)
  end

  test "should get index" do
    get hakkindas_url
    assert_response :success
  end

  test "should get new" do
    get new_hakkinda_url
    assert_response :success
  end

  test "should create hakkinda" do
    assert_difference('Hakkinda.count') do
      post hakkindas_url, params: { hakkinda: { aciklama: @hakkinda.aciklama, tarih: @hakkinda.tarih } }
    end

    assert_redirected_to hakkinda_url(Hakkinda.last)
  end

  test "should show hakkinda" do
    get hakkinda_url(@hakkinda)
    assert_response :success
  end

  test "should get edit" do
    get edit_hakkinda_url(@hakkinda)
    assert_response :success
  end

  test "should update hakkinda" do
    patch hakkinda_url(@hakkinda), params: { hakkinda: { aciklama: @hakkinda.aciklama, tarih: @hakkinda.tarih } }
    assert_redirected_to hakkinda_url(@hakkinda)
  end

  test "should destroy hakkinda" do
    assert_difference('Hakkinda.count', -1) do
      delete hakkinda_url(@hakkinda)
    end

    assert_redirected_to hakkindas_url
  end
end
