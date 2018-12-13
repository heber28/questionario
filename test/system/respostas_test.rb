require "application_system_test_case"

class RespostasTest < ApplicationSystemTestCase
  setup do
    @resposta = respostas(:one)
  end

  test "visiting the index" do
    visit respostas_url
    assert_selector "h1", text: "Respostas"
  end

  test "creating a Resposta" do
    visit respostas_url
    click_on "New Resposta"

    fill_in "Pergunta", with: @resposta.pergunta_id
    fill_in "Resposta", with: @resposta.resposta
    click_on "Create Resposta"

    assert_text "Resposta was successfully created"
    click_on "Back"
  end

  test "updating a Resposta" do
    visit respostas_url
    click_on "Edit", match: :first

    fill_in "Pergunta", with: @resposta.pergunta_id
    fill_in "Resposta", with: @resposta.resposta
    click_on "Update Resposta"

    assert_text "Resposta was successfully updated"
    click_on "Back"
  end

  test "destroying a Resposta" do
    visit respostas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resposta was successfully destroyed"
  end
end
