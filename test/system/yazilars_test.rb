require "application_system_test_case"

class YazilarsTest < ApplicationSystemTestCase
  setup do
    @yazilar = yazilars(:one)
  end

  test "visiting the index" do
    visit yazilars_url
    assert_selector "h1", text: "Yazilars"
  end

  test "creating a Yazilar" do
    visit yazilars_url
    click_on "New Yazilar"

    fill_in "Aciklama", with: @yazilar.aciklama
    fill_in "Baslik", with: @yazilar.baslik
    fill_in "Kategori", with: @yazilar.kategori
    fill_in "Tarih", with: @yazilar.tarih
    fill_in "Yazar", with: @yazilar.yazar
    click_on "Create Yazilar"

    assert_text "Yazilar was successfully created"
    click_on "Back"
  end

  test "updating a Yazilar" do
    visit yazilars_url
    click_on "Edit", match: :first

    fill_in "Aciklama", with: @yazilar.aciklama
    fill_in "Baslik", with: @yazilar.baslik
    fill_in "Kategori", with: @yazilar.kategori
    fill_in "Tarih", with: @yazilar.tarih
    fill_in "Yazar", with: @yazilar.yazar
    click_on "Update Yazilar"

    assert_text "Yazilar was successfully updated"
    click_on "Back"
  end

  test "destroying a Yazilar" do
    visit yazilars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Yazilar was successfully destroyed"
  end
end
