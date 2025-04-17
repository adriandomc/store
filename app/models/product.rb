class Product < ApplicationRecord
  has_rich_text :description do |config|
    config.attachments.create_many_uploads = {
      controller: 'rich_text_attachments',
      action: 'create',
      make_public: true
    }
  end
  validates :name, presence: true
end