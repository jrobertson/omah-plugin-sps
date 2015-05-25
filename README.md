# using the Omah-plugin-sps gem with the Gmail_omah gem

    require 'gmail_omah'
    require 'omah-plugin-sps'

    m = {user_name: 'somebody@gmail.com', password: 'secret'}

    plugins = {sps: {active: true, address: 'sps', port: 59000}}

    gomah = GmailOmah.new user: 'james', mail: m, plugins: plugins
    gomah.fetch_email

The above example demonstrates using the Omah-plugin-sps gem with the Gmail_omah gem. Note: Using a plugin with the Gmail_omah gem is optional.

## Resources

* ?gmail_omah https://rubygems.org/gems/gmail_omah?
* ?omah-plugin-sps https://rubygems.org/gems/omah-plugin-sps?

omah classic gem email

