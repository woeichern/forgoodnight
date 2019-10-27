require 'sinatra'
require 'time'

set :bind, '0.0.0.0'

get '/' do

    return responseTime('tw')

end

get '/:country' do

     return responseTime(:country)

end

def responseTime(country)

    t = Time.now

    case country

    when 'tw'

        ENV['TZ']='Asia/Taipei'

    when 'cn'

        ENV['TZ']='Asia/Shanghai'

    when 'jp'

        ENV['TZ']='Asia/Tokyo'

    when 'hk'

        ENV['TZ']='Asia/Hong_Kong'

    else

        ENV['TZ']='Asia/Taipei'

    end

    res = t.strftime("%Y/%m/%d %I:%M%p")

    ENV['TZ']='Asia/Taipei'

    return res

end