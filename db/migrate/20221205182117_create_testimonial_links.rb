class CreateTestimonialLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :testimonial_links do |t|
      t.string :link_url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
