class Ability
  include CanCan::Ability
  def initialize(user) # -> 這裏就是current_user
    if user.admin?
        can :manage, :all

    else   
        can :update, Question do |question|
            question.user == user  
        end     
        #以上是說 如果 （ question.user == user  ）, 就 can update Question
        

        can :destroy, Question do |question|
            question.user == user  
        end 

        can :destroy, Answer do |answer|
            answer.user == user  
        end   

        can :create, Question
        can :create, Answer

    end
  end
end
