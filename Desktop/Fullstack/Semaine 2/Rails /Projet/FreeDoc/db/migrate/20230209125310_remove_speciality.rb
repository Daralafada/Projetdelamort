class RemoveSpeciality < ActiveRecord::Migration[7.0]
  def change
    remove_column :doctors, :speciality, :string
  end
end
