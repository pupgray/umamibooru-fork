class AddMascotToUser < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :mascot, :string, default: 'headers/judy/bukakke.jpg', null: false
  end
end
