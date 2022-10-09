require "application_system_test_case"

class FicheDeSeancesTest < ApplicationSystemTestCase
  setup do
    @fiche_de_seance = fiche_de_seances(:one)
  end

  test "visiting the index" do
    visit fiche_de_seances_url
    assert_selector "h1", text: "Fiche De Seances"
  end

  test "creating a Fiche de seance" do
    visit fiche_de_seances_url
    click_on "New Fiche De Seance"

    fill_in "Cohorte", with: @fiche_de_seance.cohorte
    fill_in "Conclusion", with: @fiche_de_seance.conclusion
    fill_in "Date", with: @fiche_de_seance.date
    fill_in "Deux part", with: @fiche_de_seance.deux_part
    fill_in "Duree", with: @fiche_de_seance.duree
    fill_in "Effectif", with: @fiche_de_seance.effectif
    fill_in "Formateur", with: @fiche_de_seance.formateur
    fill_in "Introduction", with: @fiche_de_seance.introduction
    fill_in "Lieux", with: @fiche_de_seance.lieux
    fill_in "Moyen pedagogique", with: @fiche_de_seance.moyen_pedagogique
    fill_in "Objectif", with: @fiche_de_seance.objectif
    fill_in "Plan", with: @fiche_de_seance.plan
    fill_in "Points cles", with: @fiche_de_seance.points_cles
    fill_in "Premiere part", with: @fiche_de_seance.premiere_part
    fill_in "Reference", with: @fiche_de_seance.reference
    fill_in "Seance precedente", with: @fiche_de_seance.seance_precedente
    fill_in "Seance suivante", with: @fiche_de_seance.seance_suivante
    fill_in "Theme", with: @fiche_de_seance.theme
    fill_in "Titre", with: @fiche_de_seance.titre
    fill_in "Trois part", with: @fiche_de_seance.trois_part
    click_on "Create Fiche de seance"

    assert_text "Fiche de seance was successfully created"
    click_on "Back"
  end

  test "updating a Fiche de seance" do
    visit fiche_de_seances_url
    click_on "Edit", match: :first

    fill_in "Cohorte", with: @fiche_de_seance.cohorte
    fill_in "Conclusion", with: @fiche_de_seance.conclusion
    fill_in "Date", with: @fiche_de_seance.date
    fill_in "Deux part", with: @fiche_de_seance.deux_part
    fill_in "Duree", with: @fiche_de_seance.duree
    fill_in "Effectif", with: @fiche_de_seance.effectif
    fill_in "Formateur", with: @fiche_de_seance.formateur
    fill_in "Introduction", with: @fiche_de_seance.introduction
    fill_in "Lieux", with: @fiche_de_seance.lieux
    fill_in "Moyen pedagogique", with: @fiche_de_seance.moyen_pedagogique
    fill_in "Objectif", with: @fiche_de_seance.objectif
    fill_in "Plan", with: @fiche_de_seance.plan
    fill_in "Points cles", with: @fiche_de_seance.points_cles
    fill_in "Premiere part", with: @fiche_de_seance.premiere_part
    fill_in "Reference", with: @fiche_de_seance.reference
    fill_in "Seance precedente", with: @fiche_de_seance.seance_precedente
    fill_in "Seance suivante", with: @fiche_de_seance.seance_suivante
    fill_in "Theme", with: @fiche_de_seance.theme
    fill_in "Titre", with: @fiche_de_seance.titre
    fill_in "Trois part", with: @fiche_de_seance.trois_part
    click_on "Update Fiche de seance"

    assert_text "Fiche de seance was successfully updated"
    click_on "Back"
  end

  test "destroying a Fiche de seance" do
    visit fiche_de_seances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fiche de seance was successfully destroyed"
  end
end
