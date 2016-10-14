require 'bundler/setup'
Bundler.require

require_all('app/')

set :database, {adapter: "sqlite3", database: "db/database.sqlite3"}

require 'yelp'

Yelp.client.configure do |config|
  config.consumer_key = 'xeSNSm-hYNCCfH91KJy_RA'
  config.consumer_secret = '2mIHJWhvCZ27YpayLAH2Yz1Ll44'
  config.token = 'nbjkNzZE79hyUiTldHpUIl8vXtoyqEIl'
  config.token_secret = 'qvuq2xmCpdg40m0s4lpcmqFnEnc'
end
