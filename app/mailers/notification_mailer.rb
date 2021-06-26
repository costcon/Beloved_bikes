class NotificationMailer < ApplicationMailer

  def reservation_request(reservation)
    @reservation = reservation
    @user = @reservation.reserved
    @bike = @reservation.bike
    @url  = 'http://beloved-bikes.site'
    mail to: @user.email, subject: '【Beloved_bikes】 予約リクエストが入りました'
  end

  def reservation_approval(reservation)
    @reservation = reservation
    @user = @reservation.reserver
    @bike = @reservation.bike
    @url  = 'http://beloved-bikes.site'
    mail to: @user.email, subject: '【Beloved_bikes】 予約リクエストが承認されました'
  end



  # お問い合わせフォームのメソッド
  def send_when_admin_reply(user, contact) #メソッドに対して引数を設定
    @user = user #ユーザー情報
    @answer = contact.reply_text #返信内容
    mail to: user.email, subject: '【Beloved_bikes】 お問い合わせありがとうございます'
  end

end
