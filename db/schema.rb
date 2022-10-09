# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_10_08_125055) do

  create_table "fiche_de_seances", force: :cascade do |t|
    t.date "date"
    t.string "cohorte"
    t.string "theme"
    t.string "titre"
    t.string "formateur"
    t.integer "effectif"
    t.string "lieux"
    t.string "duree"
    t.string "seance_precedente"
    t.string "seance_suivante"
    t.string "reference"
    t.string "moyen_pedagogique"
    t.text "objectif"
    t.text "plan"
    t.text "points_cles"
    t.text "introduction"
    t.text "premiere_part"
    t.text "deux_part"
    t.text "trois_part"
    t.text "conclusion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
