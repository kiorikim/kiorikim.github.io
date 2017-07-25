class AddCompanyIdToTask < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :company_id, :integer
  end
end
