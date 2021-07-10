require 'base64'
require 'json'
require 'net/https'


module Language
  class << self
    def get_data(text)
      # APIのURL作成
      api_url = "https://language.googleapis.com/v1beta2/documents:analyzeEntitySentiment?key=#{ENV['GOOGLE_API_KEY']}"
      # APIリクエスト用のJSONパラメータ
      params = {
        document: {
          type: 'PLAIN_TEXT',
          language: 'ja',
          content: text
        }
      }.to_json
      # Google Cloud Natural Language APIにリクエスト
      uri = URI.parse(api_url)
      https = Net::HTTP.new(uri.host, uri.port)
      https.use_ssl = true
      request = Net::HTTP::Post.new(uri.request_uri)
      request['Content-Type'] = 'application/json'
      response = https.request(request, params)
      # APIレスポンス出力（Ruby形式に変換する）
      response_body = JSON.parse(response.body)
      if (error = response_body['error']).present?
        raise error['message']
      else
        # response_bodyの中身をターミナルへプリントするコマンド
        # pp response_body
        response_body['entities']
      end
    end
  end
end