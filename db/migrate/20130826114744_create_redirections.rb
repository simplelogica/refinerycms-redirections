class CreateRedirections < ActiveRecord::Migration
  def change
    create_table Refinery::Redirections::Redirection.table_name do |t|
      t.string :from_url
      t.string :to_url
      t.integer :status_code, default: 301

      t.timestamps
    end
  end
end
