class Person
# this class will likely be simple, and just remember its name
  attr_accessor :username, :rank, :best_score

  def initialize(username)
    @username = username
  end

  # Returns a rank depending on number of attemps
  def get_rank(attempts)
    if attempts == 1
      "Hero"
    elsif attempts > 1 && attempts <= 3
      "Master"
    elsif attempts > 3 && attempts <= 6
      "Junior"
    else
      "Baby"
    end
  end

  # Update best score and rank of the user
  def update_score(attempts)
    if(@best_score.nil? || attempts < @best_score)
      @best_score = attempts
      @rank = get_rank(@best_score)
    end
  end

  def to_s
    @username
  end

end
