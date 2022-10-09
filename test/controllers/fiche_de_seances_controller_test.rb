require 'test_helper'

class FicheDeSeancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fiche_de_seance = fiche_de_seances(:one)
  end

  test "should get index" do
    get fiche_de_seances_url
    assert_response :success
  end

  test "should get new" do
    get new_fiche_de_seance_url
    assert_response :success
  end

  test "should create fiche_de_seance" do
    assert_difference('FicheDeSeance.count') do
      post fiche_de_seances_url, params: { fiche_de_seance: { cohorte: @fiche_de_seance.cohorte, conclusion: @fiche_de_seance.conclusion, date: @fiche_de_seance.date, deux_part: @fiche_de_seance.deux_part, duree: @fiche_de_seance.duree, effectif: @fiche_de_seance.effectif, formateur: @fiche_de_seance.formateur, introduction: @fiche_de_seance.introduction, lieux: @fiche_de_seance.lieux, moyen_pedagogique: @fiche_de_seance.moyen_pedagogique, objectif: @fiche_de_seance.objectif, plan: @fiche_de_seance.plan, points_cles: @fiche_de_seance.points_cles, premiere_part: @fiche_de_seance.premiere_part, reference: @fiche_de_seance.reference, seance_precedente: @fiche_de_seance.seance_precedente, seance_suivante: @fiche_de_seance.seance_suivante, theme: @fiche_de_seance.theme, titre: @fiche_de_seance.titre, trois_part: @fiche_de_seance.trois_part } }
    end

    assert_redirected_to fiche_de_seance_url(FicheDeSeance.last)
  end

  test "should show fiche_de_seance" do
    get fiche_de_seance_url(@fiche_de_seance)
    assert_response :success
  end

  test "should get edit" do
    get edit_fiche_de_seance_url(@fiche_de_seance)
    assert_response :success
  end

  test "should update fiche_de_seance" do
    patch fiche_de_seance_url(@fiche_de_seance), params: { fiche_de_seance: { cohorte: @fiche_de_seance.cohorte, conclusion: @fiche_de_seance.conclusion, date: @fiche_de_seance.date, deux_part: @fiche_de_seance.deux_part, duree: @fiche_de_seance.duree, effectif: @fiche_de_seance.effectif, formateur: @fiche_de_seance.formateur, introduction: @fiche_de_seance.introduction, lieux: @fiche_de_seance.lieux, moyen_pedagogique: @fiche_de_seance.moyen_pedagogique, objectif: @fiche_de_seance.objectif, plan: @fiche_de_seance.plan, points_cles: @fiche_de_seance.points_cles, premiere_part: @fiche_de_seance.premiere_part, reference: @fiche_de_seance.reference, seance_precedente: @fiche_de_seance.seance_precedente, seance_suivante: @fiche_de_seance.seance_suivante, theme: @fiche_de_seance.theme, titre: @fiche_de_seance.titre, trois_part: @fiche_de_seance.trois_part } }
    assert_redirected_to fiche_de_seance_url(@fiche_de_seance)
  end

  test "should destroy fiche_de_seance" do
    assert_difference('FicheDeSeance.count', -1) do
      delete fiche_de_seance_url(@fiche_de_seance)
    end

    assert_redirected_to fiche_de_seances_url
  end
end
