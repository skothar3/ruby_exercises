class MyCar
    attr_accessor :color
    attr_reader :year
    def initialize(year,color,model)
        @year = year
        @color = color
        @model = model
        @speed = 0
    end

    def spray_paint(new_color)
        self.color = new_color
    end
    def accelerate(new_speed)
        @speed = new_speed
    end

    def brake()
        @speed = 0
    end
end