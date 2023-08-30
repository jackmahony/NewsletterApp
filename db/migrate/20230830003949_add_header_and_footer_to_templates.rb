class AddHeaderAndFooterToTemplates < ActiveRecord::Migration[7.0]
  def change
    add_column :templates, :header, :text
    add_column :templates, :footer, :text
    remove_column :templates, :body
  end
end
