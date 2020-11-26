class AddCompletedAtToArticle < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :completed_at, :datetime
  end
end
