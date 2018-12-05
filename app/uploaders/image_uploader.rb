class ImageUploader < CarrierWave::Uploader::Base
  if Rails.env.production?

    storage :fog
  end
end
