class AddArticleSummary < ActiveRecord::Migration
  def change
    change_table :articles do |t|
      t.text :summary
    end
  end
end
