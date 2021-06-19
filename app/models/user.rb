class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :bikes, dependent: :destroy
  has_many :reserves, dependent: :destroy
  has_many :reviews, dependent: :destroy


  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :last_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :postal_code, presence: true, numericality: {only_integer: true}, length: { in: 6..7 }
  validates :address, presence: true

  attachment :profile_image

  # 退会ユーザーを確認
  def active_for_authentication?
    super && (self.id_deleted == false)
  end

end