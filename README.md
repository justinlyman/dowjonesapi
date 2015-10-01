The Dow Jones Beta API service has been shut down, do not try and use this gem, your efforts will be futile.

# Dowjonesapi

This gem is a ruby wrapper for the Dow Jones API.  Currently only the Quotes portion of the API has been implemented.

## Installation

Add this line to your application's Gemfile:

    gem 'dowjonesapi', :git => 'https://github.com/justinlyman/dowjonesapi.git'

And then execute:

    $ bundle

## Usage

Quotes:

Code:

Just use this method with the stock symbol as the parameter:
    
    quote = Dowjonesapi::Quote.get_quote('msft')

Will Return a hash:

    {"Instrument"=>{"Types"=>[{"name"=>"Stock", "ns"=>"http://service.marketwatch.com/ws/2007/05/symbology"}], "Debug"=>["http://system.marketwatch.com/mrkt/symbolid/3140", "http://system.marketwatch.com/comstock/symbol/15*!MSFT", "http://system.marketwatch.com/varasto/varastoid/20493", "http://system.dowjones.com/dowjones/fuid/STOCK-XNAS-MSFT", "http://system.marketwatch.com/dowjones/djid/3829", "http://system.marketwatch.com/dylan/official/STOCK-US-MSFT"], "CommonName"=>"Microsoft Corp.", "Ticker"=>"MSFT", "Cusip"=>"594918104", "Sedol"=>"2588173", "Isin"=>"US5949181045", "Exchange"=>{"Types"=>[{"name"=>"Exchange", "ns"=>"http://service.marketwatch.com/ws/2007/05/symbology"}], "Debug"=>["http://system.marketwatch.com/mrkt/exchangeid/0"], "CommonName"=>"U.S.: Nasdaq", "Ticker"=>"NASDAQ", "CountryCode"=>"US", "ExchangeDelay"=>15, "IsoCode"=>"XNAS"}}, "CompositeTrading"=>{"Last"=>{"Price"=>{"Iso"=>"USD", "Value"=>39.6456}, "Time"=>"2014-03-27T13:24:36.946"}, "Open"=>{"Iso"=>"USD", "Value"=>39.74}, "High"=>{"Iso"=>"USD", "Value"=>39.97}, "Low"=>{"Iso"=>"USD", "Value"=>39.4001}, "NetChange"=>{"Value"=>-0.1444}, "Volume"=>17264992.0, "ChangePercent"=>-0.36290525257602413, "IsRealtime"=>true}}

So to get the last trade value, you would just do this:

    quote['CompositeTrading']['Last']['Price']['Value']

## TODO

1. Add Tests
2. Better error handling

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
