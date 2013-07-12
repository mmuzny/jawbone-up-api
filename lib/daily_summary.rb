module Jawbone
  
  class DailySummary
  
    attr_accessor :data
  
    def initialize(data)
      @data = data
    end
    
    def steps
      @data["move"]["bg_steps"]
    end
    
    def kilometers
      @data["move"]["distance"]
    end
    
    def workout?
      !@data["move"]["goals"]["workout_time"].empty?
    end
    
    def sleep_total
      @data["sleep"]["goals"]["total"]
    end
    
    def sleep_quality
      return @data["sleep"]["qualities"]
    end
  end
  
end