class Bowling
    
    def initialize
        @rolls = []
    end

    def roll pins
        @rolls << pins
    end

    def score
        # @rolls.reduce(:+)
        
        result = 0
        roll_index = 0
        10.times do
            # to make it a whole frame (two rolls):
            # if @rolls[roll_index] + @rolls[roll_index + 1] == 10
            if strike? roll_index
                result += strike_score roll_index
                roll_index += 1
            elsif spare? roll_index
                result += spare_score roll_index
                roll_index += 2
                # result += @rolls[roll_index] + @rolls[roll_index + 1] + @rolls[roll_index + 2]
            else
                result += frame_score roll_index
                roll_index += 2
                # result += @rolls[roll_index] + @rolls[roll_index + 1]
            end
        end
        result
    end
    
    
    private
    
    def strike? roll_index
        @rolls[roll_index] == 10
    end
    
    def strike_score roll_index
        @rolls[roll_index] + @rolls[roll_index + 1] + @rolls[roll_index + 2] 
    end
    
    def spare? roll_index
        @rolls[roll_index] + @rolls[roll_index + 1] == 10
    end
    
    def spare_score roll_index
        @rolls[roll_index] + @rolls[roll_index] + @rolls[roll_index + 2]
    end
    
    def frame_score roll_index
        @rolls[roll_index] + @rolls[roll_index + 1]
    end
    





end
