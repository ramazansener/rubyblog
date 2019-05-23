require "application_system_test_case"

class IletisimsTest < ApplicationSystemTestCase
  setup do
    @iletisim = iletisims(:one)
  end

  test "visiting the index" do
    visit iletisims_url
    assert_selector "h1", text: "Iletisims"
  end

  test "creating a Iletisim" do
    visit iletisims_url
    click_on "New Iletisim"

    fill_in "Aciklama", with: @iletisim.aciklama
    click_on "Create Iletisim"

    assert_text "Iletisim was successfully created"
    click_on "Back"
  end

  test "updating a Iletisim" do
    visit iletisims_url
    click_on "Edit", match: :first

    fill_in "Aciklama", with: @iletisim.aciklama
    click_on "Update Iletisim"

    assert_text "Iletisim was successfully updated"
    click_on "Back"
  end

  test "destroying a Iletisim" do
    visit iletisims_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Iletisim was successfully destroyed"
  end
end
