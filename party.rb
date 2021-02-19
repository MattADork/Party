def prompt
  puts 'What do you want to do?'
  print '> '
  gets.chomp.downcase
end

def intro
  puts '=' * 68
  puts %(
    You are about to read a story. Or rather, part of a story.
    You will be be asked to define the story by controlling one
    instant in the life of the person whose story it is.
    Your intervention will begin and end the story.
    But be warned; there are many stories and not all of the
    stories are about the same person.
  )
  puts '=' * 68
  puts 'Press CTRL-C or Command-C to exit any time'
  puts 
  puts 'What should we call you?' 
  print '> '
  nickname = gets.chomp.capitalize
  puts 'Press ENTER to begin...'
  gets.chomp
  return nickname
end

def prologue(nickname)
  puts %(
  Ah, the first New Year’s Eve back from college. Awkward.
  You’d rather be back at school by now, but the timing has
  you texting old friends you haven’t seen since before
  you had your first drink.
  
  Your friend Emily sends you an address, and you respond
  “Sweet! Looking forward to seeing you!” You immediately regret
  this and think it was way too formal of a response.

  When you arrive at the house, you hear two people yelling
  loudly over even louder music. You think about knocking, but then
  the door swings opens, and a 6’3” guy wearing
  Ray Bans booms, “Well if it isn’t #{nickname}! Get in here! 
  Ryan and Brody have been asking about you."

  You probably should’ve known Trey would be here...
  He ushers you inside.

  What can I get you dude? Beer, bud, Breaking Bad?")
  puts
end

def process_user_input(x)
  bad_commands = ['breaking bad', 'some breaking bad', 'breaking', 'ask for breaking bad', 'say breaking bad']
  bud_commands = ['bud', 'weed', 'ask for bud', 'ask for weed', 'smoke weed', 'ask for a hit', 'ask for some bud',
                  'say bud']
  brody_commands = ['find brody', 'look for brody', 'seek brody', 'talk to brody', 'talk brody', 'look around for brody', 'brody', 'say hi to brody', 'look brody']
  drink_commands = ['drink', 'grab a beer', 'drink a beer', 'get a beer', 'get beer', 'grab beer', 'beer', 'say beer',
                    'ask for beer', 'request beer', 'ask beer', 'i want beer', 'ask for some beer', 'ask for a beer']
  emily_commands = ['find emily', 'look for emily', 'seek emily', 'talk to emily', 'talk emily', 'look around for emily', 'emily', 'say hi to emily', 'look emily']
  garden_commands = ['garden', 'go to garden with brody', 'go to the garden', 'betty', 'talk to brody in garden', 'talk to brody in the garden',
                    'go to the garden with brody']
  liquor_commands = ['ask for liquor', 'drink liquor', 'ask for a shot', 'ask to do shots', 'ask for vodka', 'drink vodka', 'get liquor', 'liquor', 'vodka', 'take a shot']
  mosh_commands = ['mosh', 'go mosh', 'start a mosh pit', 'go moshing', 'try to mosh', 'start moshing']
  ryan_commands = ['find ryan', 'look for ryan', 'seek ryan', 'talk to ryan', 'talk ryan', 'look around for ryan', 'ryan', 'say hi to ryan', 'look ryan']
  scream_commands = ['scream', 'ask to scream', 'start screaming', 'screaming', 'scream into the void', 'yell', 'be loud', 'make noise']
  shotgun_commands = ['shotgun a beer', 'shotgun beer', 'chug beer', 'shotgun']
  trey_commands = ['talk to trey', 'talk trey', 'say hi to trey', 'speak to trey', 'talk with trey', 'speak with trey', 'trey talk']
  
  if drink_commands.include?(x)
    puts %(
    '"Righteous, righteous!"'

    Trey leads you to the kitchen, where the fridge is stocked entirely
    with non-alcoholic beer, ginger beer, and White Claw.

    “I know this is fucked up but I have to say, it’s really good
    to see you drinking liquids again. After you accidentally drank
    that bleach at the graduation after party, you really scared me.”
    )  

  elsif bad_commands.include?(x)
    puts %(
    "Oh fuck yeah, dude. That is exactly the kind of party I am
    interested in right now"

    "He walks you through a sea of people, and you make awkward eye
    contact with many of them. You definitely had a crush on at least
    two people here. They knew it. You know it. You’re all here now.
    It’s awful. You try to keep your eyes on the back of Trey’s t-shirt
    until he leads you to the garage."

    From what you can see, four dudebros are sitting in the 
    coldpassing around a pipe. You begin to wonder what Trey 
    meant when he said Breaking Bad.

    Then, you hear the voice of Bob Odenkirk, someone says 
    "I fucking love this guy,” and you know all is well. This is the party now.
    )
    
  elsif bud_commands.include?(x)
    puts %(
    He laughs as he pulls a monster blunt out from behind his ear.
    How did you not notice that before? Was it the Ray Bans? The thing is huge.

    “I was hoping you’d say that!"

    "Look dude, I don’t want to freak you out, but I have been meaning
    to tell you this for a long time and then we just, you know… college
    happened so I haven’t had a chance, but… I follow you on
    reddit! I’ve seen you post on r/trees before! Haha, you
    played it so coy in high school but I knew you were
    a fellow ent at heart!"

    "You feel all blood rush out of your face. This man is a psychopath
    and he is telling you to your face that he knows exactly what you
    masturbate to. You note to yourself to delete your current
    reddit account immediately."
    ) 

  elsif brody_commands.include?(x)
    puts %(
    You find Brody on the misty patio alone. It’s fucking freezing. 

    “Aren’t you cold?” 

    He turns at the sound of your voice and you see that 
    he’s clearly crying. 

    “Oh my God, fuck, Brody, are you okay?” You rush to him but 
    he stops you with an edge.

    “Why are you here?”

    “‘Why am I here?’ Why am I here? Because I…” Your voice sounds 
    small. “I need you to know that what happened this summer… it 
    was so stupid. It was so fucking stupid. I’m such a fucking idiot. 
    I miss you so fucking much.”

    “What the hell, NICKNAME! You can’t just show up here and say 
    that to me! I’m with Ryan now and you… You should be with August.” 

    “No way. No freakin’ way. August was… a summer thing. She was 
    like, a distraction from all of the time I had bored without you. 
    I love you Brody. Will you have me? Please, please have me.” 

    Brody doesn’t know what to say. He starts walking away and for 
    a moment you think this whole night was pointless, until he turns 
    around and says, “Come on.” 

    He leads you to the garden. 
    )

  elsif emily_commands.include?(x)
    puts %(
    "Actually, I think I’m just going to go find Emily
    but thanks. Good to see you Trey."

    "He bellows “Happy New Year!”, throws back a swig of
    his beer, and does a little twirl before moonwalking
    to his next conversation.

    You wade through a crowd of faces and names you recognize
    but no longer give a shit about, and text Emily "where are you??"
    but get no response. You’re stuck on the stairs in a conversation
    about your old acquaintance from choir’s new a cappella group at
    Brigham Young when you hear a shriek from upstairs.

    "Biiiiiiiiiitch!” Emily comes jumping giddily down to meet you.
    “Thank GOD you are here. Did you know Susan Doggett is QAnon now?"
    )

  elsif garden_commands.include?(x)
    puts %(
    You and Brody sit down tentatively on a wooden bench behind a hedge, 
    shielded from the rest of the party. You’re surrounded by backyard 
    twinkling fairy lights, and you find yourself reminded of the end of 
    the first Twilight movie. 
  
    “I can’t believe you showed up here.”
        
    “Why? Trey said you were looking for me.”
        
    “I wasn’t looking for you!” He’s very defensive about this. “But… I 
    guess I was asking about you.” 
        
    Yes. An opportunity. The smile starts spreading across your face before 
    you even know it’s there. You take his hand and squeeze.
        
    “Brody, I… I haven’t stopped thinking about you. If you want to- if you 
    would have me… I want to keep loving you. I know Ryan is a great guy. 
    He’s a really amazing person. But you’ve gotta put your happiness first, 
    and I think I could make you happier.” 
        
    Brody looks pained. 
        
    “NICKNAME… You know I want that, right? That’s what I’ve always wanted. 
    But this summer, it just messed everything up! I don’t know how to fix 
    this! I don’t know if we can ever just be Brody and NICKNAME again. How 
    can I trust you? Am I always going to be looking over my shoulder wondering 
    if you’re going to cheat on me again? ”
         
    “No.” You’re eager to get the words out of your mouth. “No, you will 
    never have to worry about me cheating on you ever again. I was stupid 
    and I know better now. You will never have to worry about that because 
    I would never risk losing you again, if you give me another chance. Please, 
    Brody. Will you have me? Will you love me?”
        
    You look at him, the words lingering in the air between you, but he can’t 
    summon a response. His face looks so conflicted. You can feel that you’re 
    going to cry if he doesn’t say something soon so you need to get the fuck 
    out of there. 
        
    “If you still believe in us the way I do, come find me in my car. I would 
    really love to be your New Year’s Eve Kiss.”
      )

  elsif liquor_commands.include?(x)
    puts %(
    “Actually Trey, wanna do some shots? I’ll take whatever ya got!”
  
    Trey gives you a surprised look, which quickly morphs itself
    into a huge smile.
          
    “Yeah, come right this way! Haha, wow, you surprise me, you disappear 
    for a few months and return to us a party animal! I never took you 
    for someone to get fucked up at one of these parties.”
          
    He leads you though the house, is it his house? You’re not entirely 
    sure. You think about asking, but it’s much too loud, and Trey is 
    ushering you along much too quickly. The music is blaring, a bunch 
    of bros are crowded around a table playing rage cage, and you think 
    you hear a a couple fighting in the corner. You find yourself outside 
    with the liquor table. Trey pours you both shots of vodka in plastic cups.
          
    “Bottoms up!” You yell, bringing the cup to your lips. You drink it 
    all in one go, and you make sure it stays down. Don’t want a repeat 
    of what happened during welcome week… You’re still not used to the 
    hard stuff, but liquor goes down more and more smoothly every time. 
    Still beats beer by a long shot.
          
    You thank Trey and decide to look for some of your friends.
      ) 

  elsif mosh_commands.include?(x)
    puts %(
    You look hard into Trey’s eyes. You didn’t want to come 
    here tonight, but you’re here now. So you make a choice. 

    You grab the beer bottle out of Trey’s hand and crash it
    over the top of his head. Trey goes down in an instant, 
    drunk and gobsmacked. You feel a surge of energy and power 
    pulsing through your arms, heat rising to your face. 
    You let out a primal howl to the ceiling of this middle 
    class family home and rip off your shirt. 

    Fuck these clothes. Fuck these people. They didn’t know you 
    then and they don’t know you now. They’re all staring. 
    There’s only one word to yell. 

    “MOOOOOOOSSSSSHHHHHHHHHHHHHH!”

    You’re pure adrenaline as you push through the entryway of 
    this party. Some big gym rat dudes start circling in on you. 
    It’s intense. They see you as their leader, and yet, you fear 
    them. You all form a circle, giant hands on each other’s 
    muscled shoulders, pulsing to the music. You’re so in it that 
    you don’t even feel embarrassed when someone yells, “Alexa, 
    turn up the volume!” You all pulse harder and harder, heads 
    nodding with greater and greater intensity, until he beats drops, 
    and you instinctively punch the person next to you. 

    “Holy shit, my eye!” 
    You snap out of it immediately. What the fuck are you doing? 
    Is that Susan Doggett?
    )

  elsif ryan_commands.include?(x)
    puts %(
    When you first spot Ryan, he’s sitting on a piano bench chuckling
    as he asks a follow-up question to someone else’s story. He’s wearing
    a collared shirt with the sleeves rolled up to his elbows, like an unbuttoned
    lawyer tired at the end of the day. He’s the most mature-looking
    nineteen year old here, but nothing about it feels forced.
    He’s just the kind of guy who always knew he’d end up as a Young
    Professional and got the wardrobe to match.

    When he sees you, his eyes light up and he instantly gets up
    to pull you into a hug.

    “Hey! I’ve been looking for you! I was hoping you’d make it!"

    You can’t help but smile. He’s such a nice person. Fuck.

    "It’s really good to see you. How are things going in your program?"

    "They’re good, but they’d be better if you were there! How’s the Big Apple?"

    "You’re about to answer when you feel eyes on you, and not the usual
    were-we-in-geometry-together?-eyes. From across the room,
    Brody is leaning in the doorway and staring at you gravely.
    When he finally catches your eye over Ryan’s shoulder, he gestures to the
    patio urgently and you forget everything you were going to say."

    "It’s good… It’s… totally good! Ryan, I am so sorry, but do
    you know where the bathroom is?"

    “Oh for sure! It’s right over there!” He points in the opposite
    direction of the patio. Shit."
    )

  elsif scream_commands.include?(x)
    puts %(
    You look at Trey for a minute and feel an existential exhaustion 
    seep into you. You don’t want to be here, but you don’t really want 
    to be alone either. 

    “Trey, do you want to go scream into the void?”
      
    He get into your car. While he fiddles with your music system and 
    tells you about how he’s liking it in Boulder, you drive to a nearby 
    bridge. You pull into a small parking lot by the scenic overlook, 
    and the two of you walk to the edge of the canyon.
      
    You try to scream, but screaming is hard to do for a long time, so 
    your scream turns into a lower range yell. You yell into the void. 
    The void is a canyon you’ve been to many times growing up. It’s 
    actually more representative of nice times and oneness with the 
    universe, nature and goodness, than a void or emptiness or whatever 
    this dark feeling is that’s making you a fuckin’ bummer to hang out 
    with on New Year’s Eve. 
      
    You look to Trey and find him sitting with his feet dangling, gazing 
    out over the water, a Juul in his mouth and a mystery in his eyes. 
      
    “It’s so beautiful. I feel so lucky to have grown up here.”
      
    “Yeah… You’re right. Me too.” You sit down and join him.
    )  

  elsif shotgun_commands.include?(x)
    puts %(
    "Trey! Good to see you! Got any room temperature beers laying around?
    I've learned a new trick."

    "Sure, wait here just a second..."

    He disappears for a minute before returning with an oh so familiar
    blue can and tosses it to you. You take out your keys and puncture 
    a hole near the base, just like you've been practicing. 

    "Ready for this?"

    You crack the can open and start inhaling through the hole, but
    things quickly go south. You feel liquid shoot up your nose, it's
    like you're drowning. In a panic you expel your mouthful of beer
    all over Trey's shirt. 

    "Bro what the FUCK?!"

    You see a fist flying towards your face.
    )

  elsif trey_commands.include?(x)
    puts %(
    "You look at Trey for a moment and decide it’s now or never.
    You should’ve talked about this a long time ago, but it’s
    never too late to speak up."
    
    "Hey Trey, I appreciate that you’re trying to be nice right now,
    but why are you doing that when you were so rude to me in high school?"
    
    He’s taken aback, and removes his sunglasses slowly. They look
    almost like they trip on the bridge of his nose because
    he’s so surprised to even be asked.

    "Oh- I- I don’t know. I don’t, I don’t really-“ he stutters.
    He seems more baffled than insulted. You decide to let him
    stutter, to not let him off the hook. This too, baffles him.
    It’s like he expects to be interrupted by this point. His 
    "aw, shucks" act is annoying.

    "I don’t know. I really don’t know. Honestly, you were annoying.”
    “I was annoying?!”
    “Yeah,” he sighs, clearly annoyed to even be having this conversation.
    “Look, I’m kinda drunk and I think we should just not interact
    tonight, alright?”

    He starts walking away.

    “Are you fucking serious, Trey?”
    He’s already gone.
    )  

  else
    puts %(
    You have a thought that is just literally '#{x}', but then realize 
    that... that isn't anything.

    Focus.
    )
    false
  end
  true
end

def main
  nickname = intro
  exit = false
  while exit != true
    prologue(nickname)
    while exit != true
      x = prompt
      exit = process_user_input(x)
    end
    puts 'Play Again? y/n? >'
    choice = gets.chomp.downcase
    exit = case choice
           when 'y'
             false
           else
             true
           end
  end
end

main      