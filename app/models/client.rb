class Client < ActiveRecord::Base
  has_many :attendances
  has_many :lessons, through: :attendances
  belongs_to :language
  belongs_to :office
  belongs_to :cstatus
  has_many :crms

  def to_s
    first_name+" "+last_name
  end
    mount_uploader :photo, PhotoUploader
  validates :first_name, presence: true
  validates :telephone_1, presence: true
  validates :language, presence: true
  validates :office, presence: true



end
