#!/usr/bin/env ruby

# file: omah-plugin-sps.rb

require 'sps-pub'

class OmahPluginSps

  def initialize(settings: {address: 'localhost', port: 59000}, variables: {})
    
    address, port = settings[:address], settings[:port]
    @sps = SPSPub.new(address: address, port: port)
    
    h = variables
    @email_address = h[:email_address] ? h[:email_address] : \
          h[:user_name] + '@' + h[:address].split('.')[1..-1].join('.')    
  end

  def on_newmail(messages, doc)
    
    m = 'message'
    m += 's' if messages.length > 1
    fqm = "email/new: %s received %s new %s" \
                                  % [@email_address, messages.length, m]
    
    @sps.notice fqm    

  end
  
  def on_newmessage(h)
        
    if h[:tags] then

      tag =  h[:tags].split.first
      fqm = "email/notice/%s: from: %s subject: %s %s" % 
                [tag, h[:from], h[:subject], h[:link]]

      @sps.notice fqm
      sleep 0.3
    end
  end

end
