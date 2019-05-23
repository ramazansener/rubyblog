require 'test_helper'

class YazilarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yazilar = yazilars(:one)
  end

  test "should get index" do
    get yazilars_url
    assert_response :success
  end

  test "should get new" do
    get new_yazilar_url
    assert_response :success
  end

  test "should create yazilar" do
    assert_difference('Yazilar.count') do
      post yazilars_url, params: { yazilar: { aciklama: @yazilar.aciklama, baslik: @yazilar.baslik, kategori: @yazilar.kategori, tarih: @yazilar.tarih, yazar: @yazilar.yazar } }
    end

    assert_redirected_to yazilar_url(Yazilar.last)
  end

  test "should show yazilar" do
    get yazilar_url(@yazilar)
    assert_response :success
  end

  test "should get edit" do
    get edit_yazilar_url(@yazilar)
    assert_response :success
  end

  test "should update yazilar" do
    patch yazilar_url(@yazilar), params: { yazilar: { aciklama: @yazilar.aciklama, baslik: @yazilar.baslik, kategori: @yazilar.kategori, tarih: @yazilar.tarih, yazar: @yazilar.yazar } }
    assert_redirected_to yazilar_url(@yazilar)
  end

  test "should destroy yazilar" do
    assert_difference('Yazilar.count', -1) do
      delete yazilar_url(@yazilar)
    end

    assert_redirected_to yazilars_url
  end
end
