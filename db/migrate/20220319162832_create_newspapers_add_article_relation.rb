class CreateNewspapersAddArticleRelation < ActiveRecord::Migration[7.0]
  def change
    create_table :newspapers do |t|
      t.text :abstract
      t.belongs_to :article
      t.timestamps
    end

    add_column :articles, :newspaper_id, :integer
  end
end
