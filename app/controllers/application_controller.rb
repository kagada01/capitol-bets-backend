class ApplicationController < ActionController::Base

    def secret_key
        'h3llo'
    end 

    #given the payload, I can create a token
    def encode(payload)
        JWT.encode(payload, secret_key, 'HS256')
    end 

    #given the token, I can get back the payload
    def decoder(token)
        JWT.decode(token, secret_key, true, { algorithm: 'HS256'})[0]
    end 
end
