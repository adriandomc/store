class Product < ApplicationRecord
  has_many :subscribers, dependent: :destroy
  has_rich_text :description do |config|
    config.attachments.create_many_uploads = {
      controller: 'rich_text_attachments',
      action: 'create',
      make_public: true
    }
  end
  validates :name, presence: true
  validates :inventory_count, numericality: { greater_than_or_equal_to: 0 }
end