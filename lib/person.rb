# your code goes here
class Person 

    attr_accessor :balance, :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name)
        @name = name 
        @balance = 25
        @happiness = 8
        @hygiene = 8
    end 

    #calls onto balace which =/= attr_accessor :bank_account
    def bank_account
        @balance 
    end 

    def levelset(characteristic)
        if characteristic > 10  
            return 10
        elsif characteristic < 0
            return 0 
        else 
            characteristic
        end 
    end

    def happiness
        levelset(@happiness)
    end 

    def hygiene
        levelset(@hygiene)
    end 

    def levelcheck(level)
        if level > 7
            return true 
        else 
            false 
        end 
    end 

    def happy?
        levelcheck(@happiness)
    end 

    def clean?
        levelcheck(@hygiene)
    end 

    def get_paid(salary)
        @balance += salary
        return "all about the benjamins"
    end 

    def take_bath
        @hygiene += 4
        #has to call to self to pass test, not sure why iffy??
        self.hygiene=(@hygiene)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        @hygiene -= 3
        self.hygiene=(@hygiene)
        @happiness += 2
        self.happiness=(@happiness)
        return "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        @happiness += 3
        self.happiness=(@happiness)
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{name}. How are you?"
    end
    
    def start_conversation(striker, topic)
        if topic == "politics"
            @happiness -= 2
            self.happiness=(@happiness)
            striker.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            @happiness += 1
            self.happiness=(@happiness)
            striker.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end 
end 