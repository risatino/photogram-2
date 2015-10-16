class Photo < ActiveRecord::Base
  validates :caption, presence: true
  validates :source, presence: true
  validates :source, length: { maximum: 500 }
  validate :source_must_be_an_image

  def source_must_be_an_image
    if source[-3..-1] != 'jpg' && source[-3..-1] != 'png'
      errors.add(:image_format, 'must be jpg or png')
    end
end
