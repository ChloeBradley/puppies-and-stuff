class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :time
      t.integer :puppy_id
      t.integer :vet_id
    end
  end
end
