class CreateArticleAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :article_attachments do |t|
      t.integer :article_id
      t.string :avatar

      t.timestamps
    end
  end
end
