class Document < ActiveRecord::Base
  validates :file_type, presence: true, inclusion: { in: %w(zip rar tar 7z jpeg gif tiff png archive file), message: "%{value} is not a usable file." }
  validates :digest, presence: true, length: { is: 64 }, format: { with: /[0-9A-Fa-f]+/, message: "Not a SHA-256 digest."}
  validates :created, presence: true
  validates :size, presence: true, numericality: { only_integer: true }
  validates :folder, presence: true

  has_many :inclusions
  has_many :aliases
  has_one :track
end
