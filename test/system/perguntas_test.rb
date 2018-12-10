require "application_system_test_case"

class PerguntasTest < ApplicationSystemTestCase
  setup do
    @pergunta = perguntas(:one)
  end

  test "visiting the index" do
    visit perguntas_url
    assert_selector "h1", text: "Perguntas"
  end

  test "creating a Pergunta" do
    visit perguntas_url
    click_on "New Pergunta"

    fill_in "Pergunta", with: @pergunta.pergunta
    click_on "Create Pergunta"

    assert_text "Pergunta was successfully created"
    click_on "Back"
  end

  test "updating a Pergunta" do
    visit perguntas_url
    click_on "Edit", match: :first

    fill_in "Pergunta", with: @pergunta.pergunta
    click_on "Update Pergunta"

    assert_text "Pergunta was successfully updated"
    click_on "Back"
  end

  test "destroying a Pergunta" do
    visit perguntas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pergunta was successfully destroyed"
  end
end
