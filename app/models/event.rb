class Event < ActiveRecord::Base
  has_many :mbarks
  has_many :users, through: :mbarks

  validate :date_cannot_be_in_past
  validates :time, :street_address, :city, :zip, :description, presence: true

  def date_cannot_be_in_past
    errors.add(:date, "can't be in the past") if !date.blank? and date < Date.today
  end

end
