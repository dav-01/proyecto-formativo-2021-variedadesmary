class Product < ApplicationRecord
  mount_uploaders :photos, PhotosUploader
  serialize :photos, JSON
end
