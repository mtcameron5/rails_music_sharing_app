class Song < ApplicationRecord
  # include ActiveModel::Validations
  # validates_with FileValidations

  has_one_attached :mp3_file
  validates :artist_name, presence: true
  validates :song_genre, presence: true
  after_save :save_to_aws_s3_bucket

  def self.validate_attachment(file_params)
    errors.add(:mp3_file, "Must attach MP3 File") if file_params.content_type != "audio/mpeg"
    errors.add(:mp3_file, "Size too large. File must be under 10 MB") if file_params.size > 10_000_000
  end

  def save_to_aws_s3_bucket
    s3 = Aws::S3::Client.new
    binding.pry
    s3.put_object(bucket: ENV['BUCKET_NAME'],
                  key: "#{song_params[:artist_name]} - #{song_params[:song_name]}",
                  data: self.to_s)
  end

end
