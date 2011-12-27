require 'YAML'
lib_path = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib_path)
class LoremAthlete
  WORDS = YAML::load(File.open('lib/words.yml'))
  def self.sport
    sports = YAML::load(File.open('lib/sports.yml'))
    sports[rand(sports.length)]
  end

  def self.athlete(sport='default')
    athletes = YAML::load( File.open('lib/athletes.yml'))
    case sport.downcase
    when "nfl"
      athletes = athletes["nfl"]
    when "nhl"
      athletes = athletes["nhl"]
    when "nba"
      athletes = athletes["nba"]
    when "mlb"
      athletes = athletes["mlb"]
    else
      athletes = athletes.map{|k, v| v}.flatten
    end
    athletes[rand(athletes.length)]
  end

  def self.team(sport='all')
    pro_sports_teams = YAML::load( File.open('lib/teams.yml'))
    case sport.downcase
    when "all"
      random_index = rand(2)
      if random_index == 0
        teams = pro_sports_teams.map{|k, v| v}.flatten
      else
        teams = olympic_sport(self.sport)
      end
    when "nfl"
      teams = pro_sports_teams["football"]
    when "nba"
      teams = pro_sports_teams["basketball"]
    when "nhl"
      teams = pro_sports_teams["hockey"]
    when "mlb"
      teams = pro_sports_teams["baseball"]
    else
      teams = olympic_sport(sport)
    end
    teams[rand(teams.length)]
  end

  def self.word
    (WORDS["nouns"] + WORDS["verbs"])[rand(WORDS["nouns"].length + WORDS["verbs"].length)]
  end

  def self.sentence
    num_words = rand(2) + 4
    sentence = num_words.times.map{|word| "#{sentence_word}"}
    sentence.join(" ") + "."
  end

  def self.paragraph(length=4)
    length.times.map{|word| "#{sentence}"}.join(' ')
  end

  private
  def self.country
    countries  = YAML::load(File.open("lib/countries.yml"))
    countries[rand(countries.length)]
  end

  def self.olympic_sport(olympic_sport)
    ["#{self.country} #{["Mens", "Womens", "Mixed"][rand(3)]} Olympic #{olympic_sport} Team"]
  end

  def self.sentence_word
    word_type = ["noun", "verb", "adverb", "athlete", "team", "noun", "verb", "athlete", "team"][rand(9)]
    case word_type
    when "noun"
      WORDS["nouns"][rand(WORDS["nouns"].length)]
    when "verb"
      WORDS["verbs"][rand(WORDS["verbs"].length)]
    when "adverb"
      WORDS["adverbs"][rand(WORDS["adverbs"].length)]
    when "athlete"
      self.athlete
    when "team"
      self.team
    end
  end

end
