# Bob is a lackadaisical teenager. In conversation,
# his responses are very limited.
# Bob answers 'Sure.' if you ask him a question.
# He answers 'Whoa, chill out!' if you yell at him.
# He answers 'Calm down, I know what I'm doing!' if you yell a question at him.
# He says 'Fine. Be that way!'
# rif you address him without actually saying anything.
# He answers 'Whatever.' to anything else.
class Bob
  def self.hey(remark)
    return 'Calm down, I know what I\'m doing!' if being_questionned_by(remark) && being_yelled_at_by(remark)
    return 'Sure.' if being_questionned_by(remark)
    # return 'Whoa, chill out!' if remark.upcase == remark || remark[-1] == '!'
    return 'Whoa, chill out!' if being_yelled_at_by(remark)
    'Whatever.'
  end

  # private

  def self.being_questionned_by(remark)
    remark[-1] == '?'
  end

  def self.being_yelled_at_by(remark)
    # remark.gsub
    # remark.gsub!(/\d/, "")
    remark.upcase == remark
  end

  def self.being_said_nothing_by(remark)
    remark == ""
  end
end

module BookKeeping
  VERSION = 2
end
