json.extract! fiche_de_seance, :id, :date, :cohorte, :theme, :titre, :formateur, :effectif, :lieux, :duree, :seance_precedente, :seance_suivante, :reference, :moyen_pedagogique, :objectif, :plan, :points_cles, :introduction, :premiere_part, :deux_part, :trois_part, :conclusion, :created_at, :updated_at
json.url fiche_de_seance_url(fiche_de_seance, format: :json)
