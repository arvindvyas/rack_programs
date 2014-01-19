my_rack_proc = lambda { |env| [200,{"Content-Type" => "text/plain"},["Hello. The time now is #{Time.now}"]] } #a rack app !
p my_rack_proc.call({})
