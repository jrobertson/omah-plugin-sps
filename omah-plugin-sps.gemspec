Gem::Specification.new do |s|
  s.name = 'omah-plugin-sps'
  s.version = '0.1.0'
  s.summary = 'An Omah gem plugin for publishing a SimplePubSub message when new mail arrives. Suitable for use with either the Gmail_omah gem or the Classic_omah gem'
  s.authors = ['James Robertson']
  s.files = Dir['lib/omah-plugin-sps.rb']
  s.add_runtime_dependency('sps-pub', '~> 0.4', '>=0.4.0')
  s.signing_key = '../privatekeys/omah-plugin-sps.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/omah-plugin-sps'
end
