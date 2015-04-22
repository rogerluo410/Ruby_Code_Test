#Recall super Kernel#method_missing in the overwrited method_missing by you ,when meets a method that we don't know how to deal with it

class Roulette
      def method_missing(name,&args)
          person = name.to_s.capitalize
          super unless %w(Bob Frank Bill).include? person
          number = 0

          3.times do 
             number = rand(10) + 1
             puts "#{number}..."
          end
          p "#{person} got a #{number}"
      end
    
end

ro = Roulette.new
ro.bill
ro.roger

