class CreateRespostas < ActiveRecord::Migration[5.2]
  def change
    create_table :respostas do |t|
      t.string :resposta
      t.references :pergunta, foreign_key: true

      t.timestamps
    end
  end
end
