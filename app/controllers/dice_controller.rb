class DiceController < ApplicationController 

  def homepage 

    render({template: "game_templates/homepage"})
  end

  def two_six 

    @first_die = rand(1..6)
    @second_die = rand(1..6)
    sum = @first_die + @second_die
    
    @outcome = "You rolled a #{@first_die} and a #{@second_die} for a total of #{sum}."

    render({template: "game_templates/two_six"})
  end

  def two_ten
    @first_die = rand(1..10)
    @second_die = rand(1..10)
    sum = @first_die + @second_die
    
    @outcome = "You rolled a #{@first_die} and a #{@second_die} for a total of #{sum}."
    render({template: "game_templates/two_ten"})
  end

  def one_twenty 
    @die = rand(1..20)
	
    @outcome = "You rolled a #{@die}."

    render({template: "game_templates/one_twenty"})
  end

  def five_four 
    @first_die = rand(1..4)
    @second_die = rand(1..4)
    @third_die = rand(1..4)
    @fourth_die = rand(1..4)
    @fifth_die = rand(1..4)
    sum = @first_die + @second_die + @third_die + @fourth_die + @fifth_die
    
    @outcome = "You rolled a #{@first_die}, #{@second_die}, #{@third_die}, #{@fourth_die}, and #{@fifth_die} for a total of #{sum}."

    render({template: "game_templates/five_four"})
  end

  def dynamic
    @rolls = []

    @num_rolls = params.fetch("rolls").to_i
    @num_sides = params.fetch("sides").to_i
  
    @num_rolls.times do 
      die = rand(1..@num_sides)
  
      @rolls.push(die)
    end

    render({template: "game_templates/dynamic"})
  end

end
