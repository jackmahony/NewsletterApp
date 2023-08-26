class EmailsTemplateIdNullify < ActiveRecord::Migration[7.0]
  def change
    change_column_null :emails, :template_id, true
  end
end
