class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      
      t.string :title,                    null: true
      t.string :description,              null: true
      t.string :channel,                  null: false
      t.string :view_template,            null: false
      t.string :expose_view,              null: false
      t.integer :expose_position,         null: false,  default: 0
      t.string :audience_country,         null: false,  default: 'kr'
      t.string :audience_language,        null: false,  default: 'ko'
      t.string :audience_roles,            null: false
      t.integer :audience_grade_from,     null: false
      t.integer :audience_grade_to,       null: false
      t.boolean :forced_stop,             default: false
      t.string :action_type,              null: true
      t.string :action_url,               null: true
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end
