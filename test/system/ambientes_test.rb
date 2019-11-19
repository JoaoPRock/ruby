require "application_system_test_case"

class AmbientesTest < ApplicationSystemTestCase
  setup do
    @ambiente = ambientes(:one)
  end

  test "visiting the index" do
    visit ambientes_url
    assert_selector "h1", text: "Ambientes"
  end

  test "creating a Ambiente" do
    visit ambientes_url
    click_on "New Ambiente"

    fill_in "Nome", with: @ambiente.nome
    click_on "Create Ambiente"

    assert_text "Ambiente was successfully created"
    click_on "Back"
  end

  test "updating a Ambiente" do
    visit ambientes_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @ambiente.nome
    click_on "Update Ambiente"

    assert_text "Ambiente was successfully updated"
    click_on "Back"
  end

  test "destroying a Ambiente" do
    visit ambientes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ambiente was successfully destroyed"
  end
end
