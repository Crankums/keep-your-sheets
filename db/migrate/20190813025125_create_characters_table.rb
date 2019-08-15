class CreateCharactersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :char_name
      t.string :race
      t.string :char_class
   end
  end
end
