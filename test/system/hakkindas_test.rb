require "application_system_test_case"

class HakkindasTest < ApplicationSystemTestCase
  setup do
    @hakkinda = hakkindas(:one)
  end

  test "visiting the index" do
    visit hakkindas_url
    assert_selector "h1", text: "Hakkindas"
  end

  test "creating a Hakkinda" do
    visit hakkindas_url
    click_on "New Hakkinda"

    fill_in "Aciklama", with: @hakkinda.aciklama
    fill_in "Tarih", with: @hakkinda.tarih
    click_on "Create Hakkinda"

    assert_text "Hakkinda was successfully created"
    click_on "Back"
  end

  test "updating a Hakkinda" do
    visit hakkindas_url
    click_on "Edit", match: :first

    fill_in "Aciklama", with: @hakkinda.aciklama
    fill_in "Tarih", with: @hakkinda.tarih
    click_on "Update Hakkinda"

    assert_text "Hakkinda was successfully updated"
    click_on "Back"
  end

  test "destroying a Hakkinda" do
    visit hakkindas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hakkinda was successfully destroyed"
  end
end
