# Lorem Athlete
## Installation

    gem install lorem_athlete

or if you are using rails 3 or higher

    gem 'lorem_athlete'
    
## Usage
    
Generate an athlete's name

    LoremAthlete::athlete

Generate a team name

    LoremAthlete::team

You can specify the sport to get a pro team name for hockey, basketball, football and baseball.

    LoremAthlete::team("football") # NFL team
    LoremAthlete::team("basketball") # NBA team
    LoremAthlete::team("hockey") # NHL team
    LoremAthlete::team("baseball") # MLB team
    
Or if you specify another sport you will get an Olympic team for that sport.

You can also generate sports words and sentences with:

    LoremAthlete::word
    LoremAthlete::sentence

Paragraphs will default to 3 sentences but this can be specified

    LoremAthlete::paragraph # 3 sentence paragraph
    LoremAthlete::paragraph(10) # 10 sentence paragraph
    



