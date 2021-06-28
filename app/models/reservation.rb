class Reservation < ApplicationRecord

  belongs_to :reserver, class_name:"User"
  belongs_to :reserved, class_name:"User"
  belongs_to :bike

  enum reservation_status: {
    '未承認':0, '承認':1, 'キャンセル':2, '支払済':3
  }

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
  validate :start_finish_check
  validate :start_check
  validates :reservation_comment, length: { maximum: 500 }
  validates :reservation_reply, length: { maximum: 500 }
  
  
  def start_finish_check
    errors.add(:end_time, "は開始時刻より先の日付を選択してください") if self.start_time > self.finish_time
  end

  def start_check
    errors.add(:start_time, "は翌日以降の日付を選択してください") if self.start_time < Time.now
  end

end
