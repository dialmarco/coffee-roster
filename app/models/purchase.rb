class Purchase < ActiveRecord::Base

  def self.next_runner
    last_runner = Purchase.last
    puts last_runner
    if last_runner
      last_runner.name == "Diego" ? "Sean" : "Diego"
    else
      "Diego"
    end
  end

end
