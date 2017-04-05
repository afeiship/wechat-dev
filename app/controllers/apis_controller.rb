class ApisController < ApplicationController
  # @@token="weixintokentest1988"

  def notify
    # p params.inspect
    if check_signature?(params["timestamp"],params["signature"],params["nonce"])
      render plain: params['echostr']
    end
  end


  def check_signature?(timestamp,signature,nonce)
    token = "weixintokentest1988"
    array = [token,timestamp, nonce]
    array = array.sort
    tmpsign = Digest::SHA1.hexdigest(array.join)
    return tmpsign == signature
  end
end
