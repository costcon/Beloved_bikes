class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :bikes, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :chats, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :user_rooms, dependent: :destroy


  enum approval: {
    '未対応':0, '承認済':1, '非承認':2
  }


  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :last_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :nickname, presence: true
  validates :postal_code, presence: true, numericality: {only_integer: true}, length: { in: 6..7 }
  validates :address, presence: true

  attachment :profile_image
  attachment :license_front_image
  attachment :license_back_image

  # 退会ユーザーを確認
  def active_for_authentication?
    super && (self.id_deleted == false)
  end


end
