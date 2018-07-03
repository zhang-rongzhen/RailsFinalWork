require 'net/http'
require 'uri'

namespace :db do
  namespace :restaurant do
    desc "Update crypto info from coinmarketcap"
      task :update => :environment do
        
        resp=Net::HTTP.get(URI('http://data.coa.gov.tw/Service/OpenData/ODwsv/ODwsvTravelFood.aspx'))
        result=JSON.parse(resp)
        
        result.each do |data|
          local=data["Coordinate"].split(',')
          
          prepare_data={name: data["Name"],address: data["Address"],tel: data["Tel"] ,foodFeature: data["FoodFeature"], city: "#{data["City"]}#{data["Town"]}", picURL: data["PicURL"] ,localy: local[0].to_f, localx: local[1].to_f  }
          restaurant = Restaurant.find_or_initialize_by(name: data["Name"])
          restaurant.update(prepare_data)
          restaurant.save
        end
        
        
      end
  end
end