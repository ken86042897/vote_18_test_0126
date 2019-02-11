class Article < ApplicationRecord
	mount_uploader :feature, FeatureUploader
	has_many :article_attachments
    accepts_nested_attributes_for :article_attachments
end
