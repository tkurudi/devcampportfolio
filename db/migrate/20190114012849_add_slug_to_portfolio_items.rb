class AddSlugToPortfolioItems < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolio_items, :slug, :string
    add_index :portfolio_items, :slug, unique: true
  end
end
