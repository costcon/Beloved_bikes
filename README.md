# Beloved Bikes


## サイト概要

個人同士のバイクのシェアサービス。
機能としては主要なものは以下になります。

- 個人所持バイクの掲載機能
- ページ内での一覧、ランキング表示
- ユーザー側のレンタル予約機能
- 取引開始後のメッセージ、GoogleMAPのAPIによる支援機能
- 取引終了後のレビュー機能、マイページでの履歴表示機能

大まかな概要を踏まえて、
オーナー、ユーザー双方に企業の営業しているレンタルバイクとは異なるメリットがあります。
主なメリットは以下になります。

【オーナー側】
- 思い出のこもったバイクを走らせて長く維持する
- レンタル費を設定することでちょっとしたお小遣い、維持費稼ぎになる

【ユーザー側】
- レンタルバイクショップにはない、オンリーワンなカスタマイズ車に乗れる
- レンタルバイクショップでは取り扱っていない車種のバイクに乗れる

利用の流れとしては下記の通りです
- `（オーナー）レンタル価格・期間・引き受け場所を決めて掲載する`
- `↓`
- `（ユーザー）お好みのバイクを期間を指定して予約リクエスト`
- `↓`
- `（オーナー）リクエストを承認、取引開始`
- `↓`
- `取引チャットが使えるようになるのでやりとりして引き受け日の詳細を決める`
- `↓`
- `取引終了後、お互いにレビューを行う`


### サイトテーマ

オートバイクの個人間シェアサービス


### テーマを選んだ理由

自分が所持しているバイクが最近乗る頻度が少なくなったせいで故障してしまった。
同じようなことはバイク乗りのあるあるで周りの友人の内でも多い
かといって思い出の詰まった愛車を手放すような真似はできない、
たまには乗って青春を思い出したい！という方は多いはず。
バイクを現役で維持するには動かすことが一番なので、
誰かに乗ってもらえるような仕組みを作りたいと思った。

機能部分は前職で扱っていたネット予約のサービスを
ユーザー側の予約の敷居を下げ、利用者を増やすという点で
とても優れたものだと感じていたので、
個人同士での取引という敷居をさげ、さらに別の分野で活かす
ということを目標としています。


### ターゲットユーザ
【オーナー】
- 最近バイクに乗る機会が減ってきて手放すかどうか悩んでいる人（３０代〜男性中心）
【ユーザー】
- 新しいバイク購入を検討している or 他のバイク乗りのこだわりバイクを楽しみたい人（男性中心）

### 主な利用シーン

【オーナー】
- 最近乗らなくなってしまったバイクを出品
- 信頼できるユーザーを評価
【ユーザー】
- ちょっと変わった少人数旅行を楽しみたい時に
- バイクの乗り換えに興味があり、他のバイク乗りのツーリング仕様や乗り心地に興味がある場合に
- 昔バイクに乗っていて今は手放してしまったが久しぶりに風になりたい時に

## 設計書

これから


## チャレンジ要素一覧

[こちらから](https://docs.google.com/spreadsheets/d/1Il6RXS7MLiayBDBoY7DQRGKk82_PDFGQTAWmgp4-eZQ/edit#gid=0)

## 開発環境

- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JS ライブラリ：jQuery
- IDE：Cloud9

## 使用素材

最終的に必要がなければ欄ごと削除する



お世話になっております。DWC運営部です。
ポートフォリオテーマ・機能一覧のご提出、ありがとうございます。
下記レビューを確認していただき、フォームより再提出をお願いいたします。
## アプリケーションへのレビュー
- 内容的には需要が見込めるよいアプリだと思います。
- サイト概要の上に大項目でサイト名・アプリ名を記述してください。
- 「サイト概要」と「サイトテーマ」の内容は逆の方がいいと思います。
また、その場合でもサイト概要には追記をした方がよさそうです。
どういうアプリなのか、どういう機能があるのかを軽く触れて、
その上でオーナーとユーザーのメリットを書く形にするとなおよいです。

## 技術的要素のレビュー
- チャレンジ要素の量は正常な量です。
- カリキュラムにない機能、実装経験のない機能については、
参考にするサイトや記事を探して、URLを記述するのをお勧めします。
実装の目途が立たないような難しい内容の可能性があります。

- 「検索」機能は、gem「ransack」を使用することも可能ですが、
-よりSQLを理解するためにActiverecordでDB検索する方が実務に役立つと思います。

- トラブルがあった時などに備えて利用履歴、通報機能などもあると
より良いと思います。検討してみて下さい。

## その他
- READMEの使用素材については、最終的に必要がなければ欄ごと削除して大丈夫です。