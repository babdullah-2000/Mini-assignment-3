#Mini-Assignment 3- Baith Abdullah

#Hello World Function Demo
x <- c("hello", "bonjor", "hola") #Assigning my variable 'x' to the objects 'hello', 'bonjor', and 'hola'(assuming tri-lingual professor)
hello.world <- function(x) {
  if(x == "hello"){ #Making sure that if the input is 'hello' that the output is 'hello class'
    return("hello class") 
  } else if(x == "bonjor"){ #Making sure that if the input is 'bonjor' that the output is 'bonjor mes amis'
    return("bonjor, mes amis")
  } else if(x == "hola"){ #Making sure that if the input is 'hola' that the output is 'hola clase'
    return("hola clase")
  } else{
    return("hello?") #For any other inputs than the previous three, the function gives an output of "hello?"
  }
  
}
# mc2ba: nice! be sure to use curly braces right after you define the inputs to
# your function (i made the change already above and in the example below).
# it's also good to add some test cases so you can easily check your code is
# running as intended,e.g.:
# test cases:
hello.world("hello")
hello.world("bonjor")
hello.world("hola")
hello.world("heyyy")


# Make sure to use hastags when using my function! (I could not remember how to
# omit having to use them)
# This function assumes a tri-lingual professor that has classes of all three
# langauges. Any responses outside of the professors knowledge,
# cannot be answered.

# After some time, the professor realizes she has Spanish-speaking classes on MW,
# English-speaking TTh, and French on F. With this information, she is further
# able to use the function for set days. And she decides to use it to remind
# herself which language to speak on a particular day of the week.
days <- c("monday", "tuesday", "wednesday", "thursday",
          "friday", "saturday", "friday") #Assigning the days of the week into a character vector
what.to.say <- function(days) {
  for (i in days) { if(i == "monday" || i == "wednesday"){ #Using a for-loop to itierate over our days vector and an if conditional to select for the professor's MW
    print(hello.world("hola")) #Using our previous function hello.world and having it produce the same response as before but instead for the days MW
  } else if(i == "tuesday" || i == "thursday"){ #Same steps as before except for the english-speaking/TTH days
    print(hello.world("hello"))
  } else if(i == "friday"){
    print(hello.world("bonjor"))#Same step except for the french-speaking/F day
  } else{
    print("I'm  off work!")
  }
  }
}
# This function,what.to.say, results in the same responses as the hello.world,
# but it takes in days of the week instead of an individual response so the
# prfoessor may be primed/ready to go ahead of time. Remember the hashtags!
# mc2ba: test cases, e.g.,
what.to.say(days)
what.to.say("monday")
what.to.say("saturday")
what.to.say(c("tuesday", "thursday"))
