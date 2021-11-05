class Song < ApplicationRecord
  ACCEPTABLE_FILE_TYPE = 'audio/mpeg'
  # include ActiveModel::Validations
  # validates_with FileValidations

  has_one_attached :mp3_file
  validates :artist_name, presence: true
  validates :song_genre, presence: true
  validate :acceptable_mp3_file
  # after_save :save_to_aws_s3_bucket

  def acceptable_mp3_file
    return unless mp3_file.attached?

    unless mp3_file.byte_size <= 10.megabyte
      errors.add(:mp3_file, "is too big. Must be 10MB or smaller.")
    end

    unless ACCEPTABLE_FILE_TYPE == mp3_file.content_type
      errors.add(:mp3_file, "must be MP3.")
    end
  end
  private
  def aws_client
    binding.pry
    Aws::S3::Client.new(region: ENV['MUSIC_SHARING_AWS_REGION'],
        access_key_id: ENV['MUSIC_SHARING_AWS_ACCESS_KEY_ID'],
        secret_access_key: ENV['MUSIC_SHARING_AWS_SECRET_KEY'])
  end

end
