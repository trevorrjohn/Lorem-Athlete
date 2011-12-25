# Lorem Athlete
## Installation

    gem install lorem_athlete

or if you are using rails 3 or higher, add to your gemfile:

    gem 'lorem_athlete'
    
## Usage
    
Generate an athlete's name

    LoremAthlete::athlete

Generate a team name

    LoremAthlete::team

You can specify a league to get a pro team name for NHL, NBA, NFL and MLB

    LoremAthlete::team("NFL") # NFL team
    
Or if you specify another sport you will get an Olympic team for that sport.

You can also generate sports words and sentences with:

    LoremAthlete::word
    LoremAthlete::sentence

Paragraphs will default to 3 sentences but this can be specified

    LoremAthlete::paragraph # 3 sentence paragraph
    LoremAthlete::paragraph(10) # 10 sentence paragraph
    



