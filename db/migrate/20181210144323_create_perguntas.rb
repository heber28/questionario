class CreatePerguntas < ActiveRecord::Migration[5.1]
  def change
    create_table :perguntas do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
