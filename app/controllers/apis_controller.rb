class ApisController < ApplicationController
  # @@token="weixintokentest1988"

  def notify
    if check_signature?(params["timestamp"],params["signature"],params["nonce"])
        render :text => params["echostr"]
    end
  end


  def check_signature?(timestamp,signature,nonce)
    token = "wechat"
    array = [token,timestamp, nonce]
    array = array.sort
    tmpsign = Digest::SHA1.hexdigest(array.join)
    if tmpsign == signature
      true
    else
      false
    end
  end
end
