class Reservation < ApplicationRecord

  belongs_to :reserver, class_name:"User"
  belongs_to :reserved, class_name:"User"
  belongs_to :bike

  # 予約被り防止
  # def start_time
  #   self.reservation_name
  # end


  # validate :date_before_start
  # def date_before_start
  #   errors.add(:start_time, "過去の日付は選択できません") if start_time.to_i < Date.today.to_i
  # end

  # validates :start_time, uniqueness: { message: '他のユーザーが予約しています' }
  validates :start_time, presence: true
  validates :end_time, presence: true

end
