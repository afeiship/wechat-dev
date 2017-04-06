class ApisController < ApplicationController
  # @@token="weixintokentest1988"

  def notify
    if check_signature?(params["timestamp"],params["signature"],params["nonce"])
      render plain: params['echostr']
      # render '/apis/notify.text.erb', layout: false, content_type: 'text/plain'
    end
  end


  def check_signature?(timestamp,signature,nonce)
    token = "weixintoken11992001"
    array = [token,timestamp, nonce]
    array = array.sort
    tmpsign = Digest::SHA1.hexdigest(array.join)
    return tmpsign == signature
  end
end
