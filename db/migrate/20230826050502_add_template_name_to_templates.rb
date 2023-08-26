class AddTemplateNameToTemplates < ActiveRecord::Migration[7.0]
  def change
    add_column :templates, :template_name, :string
  end
end
