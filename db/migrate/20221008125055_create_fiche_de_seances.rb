class CreateFicheDeSeances < ActiveRecord::Migration[6.0]
  def change
    create_table :fiche_de_seances do |t|
      t.date :date
      t.string :cohorte
      t.string :theme
      t.string :titre
      t.string :formateur
      t.integer :effectif
      t.string :lieux
      t.string :duree
      t.string :seance_precedente
      t.string :seance_suivante
      t.string :reference
      t.string :moyen_pedagogique
      t.text :objectif
      t.text :plan
      t.text :points_cles
      t.text :introduction
      t.text :premiere_part
      t.text :deux_part
      t.text :trois_part
      t.text :conclusion

      t.timestamps
    end
  end
end
