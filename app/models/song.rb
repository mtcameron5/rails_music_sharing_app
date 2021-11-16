class Song < ApplicationRecord
  belongs_to :user
  has_one_attached :mp3_file
  ACCEPTABLE_AUDIO_FILE = 'audio/mpeg'
  has_one_attached :image_file
  ACCEPTABLE_IMAGE_FILES = %w(image/jpeg image/png)

  validates :user_id, presence: true
  validates :genre, presence: true
  validates :name, presence: true
  validate :acceptable_mp3_file
  validate :acceptable_image_file

  def acceptable_mp3_file
    unless mp3_file.attached?
      errors.add(:mp3_file, "needs to be present.")
      return
    end

    unless mp3_file.byte_size <= 10.megabyte
      errors.add(:mp3_file, "is too big. Must be 10MB or smaller.")
    end

    unless ACCEPTABLE_AUDIO_FILE == mp3_file.content_type
      errors.add(:mp3_file, "must be MP3.")
    end
  end

  def acceptable_image_file
    unless image_file.attached?
      errors.add(:image_file, "needs to be present.")
      return
    end

    unless image_file.byte_size <= 1.megabyte
      errors.add(:image_file, "is too big. Must be 1MB or smaller.")
    end

    unless ACCEPTABLE_IMAGE_FILES.include? image_file.content_type
      errors.add(:image_file, "Must be jpg or png.")
    end
  end
end
