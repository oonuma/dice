class DiceController < ApplicationController
  def index 
		@rolls = Roll.find(:all, :order => "created_at DESC", :limit => 5 )
  end

  def shake	
		dice = Dice.new
		@result = dice.shake
		roll = Roll.new
		roll.value = @result
		roll.save
  end

	def gamble
		if request.post?
			#丁半の判定
			#@result = :win
			dealer = Dealer.new
      @result = dealer.chouhan(params[:expected])
		end	
	end

	def report
		@count = Roll.count
		@statistics = Roll.count(:group => :value)
	end	
end
