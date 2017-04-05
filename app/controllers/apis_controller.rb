class ApisController < ApplicationController
  @@token="weixintokentest1988"

  def notify
    # render plain: params.inspect
    if check_signature?(params[:signature],params[:timestamp],params[:nonce])
     render plain: params[:echostr]
    end
  end


  private
    def check_signature?(signature,timestamp,nonce)  
      Digest::SHA1.hexdigest([timestamp,nonce,@@token].sort.join) == signature  
    end
end
