class Possible_states
    @@default_state = false
    def initialize(numberOfStateEllements)
        @states = Array.new(numberOfStateEllements){|i| @@default_state }
        @primary_pointer = -1
        @secondary_pointer = numberOfStateEllements - 1;
    end
    def get_state(position)
        return @states[position]
    end
    def get_states
        return @states
    end
    def show_state
        print(@states)
        print("\n")
    end
    def next
        @secondary_pointer += 1
        if @secondary_pointer == @states.length
            return self.primary_next()
        else
            @states[@secondary_pointer] = !@@default_state;
            return true;
        end
    end
    def primary_next
        @primary_pointer += 1
        if @primary_pointer == @states.length
            return false;
        end
        # reset all values except primary positions
        @states = @states.map{ |state| @@default_state }
        @secondary_pointer = @primary_pointer
        @states[@secondary_pointer] = !@@default_state
        return true
    end
end