class HreportWorker
  	include Sidekiq::Worker
  	sidekiq_options :queue => :report_queue, :unique => :all
  	def perform()
    	no_of_user_created_yesterday = Normaluser.where("Date(created_at) = ?" , Date.today).count
        puts "#{no_of_user_created_yesterday}"
        file = File.open("daily_user_report3.txt", "w")
        file.puts "Number of Users Created on #{Date.yesterday} : #{no_of_user_created_yesterday}"
        file.close
    end
end
Sidekiq::Cron::Job.create(name: 'Generate Report EveryDay', cron: '* /1 * * * *', class: 'HreportWorker')