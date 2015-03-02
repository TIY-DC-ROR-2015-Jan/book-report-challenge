class CreateBookReports < ActiveRecord::Migration
  def change
    create_table :book_reports do |t|
      t.string :title
      t.text   :report
    end
  end
end
