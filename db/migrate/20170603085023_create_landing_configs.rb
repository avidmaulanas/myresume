class CreateLandingConfigs < ActiveRecord::Migration
  def change
    create_table :landing_configs do |t|
      t.string :full_name
      t.string :job_title
      t.string :email
      t.text :about_me
      t.text :address
      t.string :phone

      t.timestamps null: false
    end
  end
end
