require 'base64'
require 'json'
require 'net/https'


module Vision
  class << self
    def get_image_data(image_file)
      # APIのURL作成
      api_url = "https://vision.googleapis.com/v1/images:annotate?key=#{ENV['GOOGLE_API_KEY']}"

      # 画像をbase64にエンコード
      base64_image = Base64.encode64(open("#{Rails.root}/tmp/uploads/store/#{image_file.id}").read)

      # APIリクエスト用のJSONパラメータ
      params = {
        requests: [{
          image: {
            content: "base64-encoded-image"
          },
          features: [
            {
              type: 'SAFE_SEARCH_DETECTION'
            }
          ]
        }]
      }.to_json

      # Google Cloud Vision APIにリクエスト
      uri = URI.parse(api_url)
      https = Net::HTTP.new(uri.host, uri.port)
      https.use_ssl = true
      request = Net::HTTP::Post.new(uri.request_uri)
      request['Content-Type'] = 'application/json'
      response = https.request(request, params)
      response_body = JSON.parse(response.body)
      # APIレスポンス出力
      if (error = response_body['error']).present?
        raise error['message']
      else
        pp response_body
        response_body['responses']
      end
    end
  end
end
