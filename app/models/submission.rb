class Submission < ActiveRecord::Base
  belongs_to :user
  belongs_to :submission

  validates :file_type, presence: true, inclusion: { in: %w(zip rar tar 7z jpeg gif tiff png archive file), message: "%{value} is not a usable file." }
  validates :digest, presence: true, length: { is: 64 }, format: { with: /\A[0-9A-Fa-f]+\z/, message: "Not a SHA-256 digest."}
  validates :apikey, presence: true, length: { is: 64 }, format: { with: /\A[0-9A-Fa-f]+\z/, message: "Not a valid API Key."}
  validates :size, presence: true, numericality: { only_integer: true }
end
