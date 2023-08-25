class AddTemplateIdToEmails < ActiveRecord::Migration[7.0]
  def change
    add_reference :emails, :template, foreign_key: true
  end
end
