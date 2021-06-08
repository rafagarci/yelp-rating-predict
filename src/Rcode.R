rm(list = ls())


## It took us 3 days for us computers to find all the predictors
## Since it is impossible, even for high power computers to re-run all my code,
## the following data are provided and are needed for the code to run********************
## It is also assumed that the yelp original data are in the working directory

data = read.csv("Data.csv")
out = read.csv("out.csv")


## For adding the new predictors to the data we used the following method:
#  add.Predictor.Word = function(wordToLook, dataSet){
{
#  if(!is.character(wordToLook) ){  
  #   print("error with word to look for")
  #   return()}
  #  install.packages("stringi")
  #  library("stringi")
  # 
  # 
  # index = 1
  # wordMatches = c()
  # while(index <= length(dataSet[,1])){
  #   wordMatches = c(wordMatches ,as.numeric(stri_count_regex(( tolower( toString(dataSet$text[index]))), wordToLook )) )
  #   index = index + 1
  # }
  # dataSet = cbind(dataSet, wordMatches)
  # 
  # dataSetColLength = length(colnames(dataSet))
  # colnames(dataSet) = c(colnames(dataSet)[1:(dataSetColLength-1)] , wordToLook)
  # 
  # return(dataSet)
  
}
##  sample:    out = add.Predictor.Word("gorgeous" , out)


## Basically what we did was to find a huge list of words and loop though it using that method.
## We also combined some variables into one using the same method.


## This is the final submitted model, please pardon that it is kinda long with a lot of variables
{
MODEL24 = lm(data= data,  stars~
                                   X.3
                                 +X.2
                                 +useful
                                 +funny
                                 +cool
                                 +sentiment
                                 +gem
                                 +incredible
                                 +divine
                                 +perfection
                                 +phenomenal
                                 +die
                                 +heaven
                                 +highly
                                 +superb
                                 +amazing
                                 +sourced
                                 +delectable
                                 +knowledgeable
                                 +perfect
                                 +fantastic
                                 +favorites
                                 +wonderful
                                 +worse
                                 +gross
                                 +apologize
                                 +charged
                                 +proceeded
                                 +ignored
                                 +receipt
                                 +response
                                 +poorly
                                 +waste
                                 +nasty
                                 +terrible
                                 +tasteless
                                 +rude
                                 +awful
                                 +horrible
                                 +apology
                                 +disgusting
                                 +worst
                                 +unique
                                 +great
                                 +love
                                 +excellent
                                 +fresh
                                 +friendly
                                 +delicious
                                 +perfectly
                                 +happy
                                 +favorite
                                 +flavor
                                 +frozen
                                 +disappoint
                                 +wait
                                 +wasn.t
                                 +didn.t
                                 +not
                                 +couldn.t
                                 +old
                                 +out
                                 +enjoy
                                 +last
                                 +worth
                                 +service
                                 +minutes
                                 +definitely
                                 +best
                                 +very
                                 +like
                                 +cold
                                 +yum
                                 +sweet
                                 +joy
                                 +unacceptable
                                 +dirt
                                 +smell
                                 +fuck
                                 +shit
                                 +hell
                                 +horr
                                 +boring
                                 +mediocre
                                 +stale
                                 +under
                                 +dry
                                 +orgasm
                                 +rotten
                                 +burn
                                 +bland
                                 +over
                                 +appetizing
                                 +watery
                                 +tender
                                 +tast
                                 +soggy
                                 +rancid
                                 +nauseating
                                 +mushy
                                 +moldy
                                 +star
                                 +negative
                                 +positive
                                 +crowd
                                 +noisy
                                 +loud
                                 +slow
                                 +fast
                                 +canned
                                 +chalky
                                 +charcuterie
                                 +chewy
                                 +chilled
                                 +chowder
                                 +course
                                 +creamy
                                 +crispy
                                 +crumbly
                                 +crunchy
                                 +cuisine
                                 +decadent
                                 +delightful
                                 +dense
                                 +devein
                                 +deviled
                                 +dietary
                                 +disagreeable
                                 +distasteful
                                 +distinctive
                                 +doughy
                                 +drenched
                                 +dried.out
                                 +drizzled
                                 +dull
                                 +dusted
                                 +earthy
                                 +edible
                                 +etouffee
                                 +exquisite
                                 +fine
                                 +filling
                                 +fishy
                                 +flambé
                                 +flavorless
                                 +flavorful
                                 +fluffy
                                 +freeze.dried
                                 +garnish
                                 +glazed
                                 +golden
                                 +good
                                 +grainy
                                 +gratifying
                                 +greasy
                                 +gritty
                                 +hardboiled
                                 +heat
                                 +heavy
                                 +healthy
                                 +hearty
                                 +hot
                                 +icy
                                 +inviting
                                 +juicy
                                 +kick
                                 +laced
                                 +lemony
                                 +light
                                 +limp
                                 +low.fat
                                 +medium
                                 +mellow
                                 +microwave
                                 +milky
                                 +minced
                                 +mixed
                                 +mixture
                                 +moist
                                 +mouth.watering
                                 +muddy
                                 +nourishing
                                 +nuked
                                 +nutritious
                                 +nutty
                                 +oily
                                 +oniony
                                 +oozing
                                 +overpowering
                                 +packed
                                 +pan.fried
                                 +paprika
                                 +parched
                                 +parfait
                                 +pasty
                                 +peanut.butter
                                 +penetrating
                                 +peppery
                                 +perishable
                                 +pleasant
                                 +plump
                                 +potent
                                 +pungent
                                 +reduced
                                 +refreshing
                                 +relish
                                 +roasted
                                 +robust
                                 +rolled
                                 +ruined
                                 +runny
                                 +salted
                                 +salty
                                 +saturated
                                 +sauté
                                 +savory
                                 +scorched
                                 +scrumptious
                                 +shredded
                                 +slimy
                                 +slivered
                                 +smooth
                                 +soaked
                                 +soft
                                 +solidify
                                 +sordid
                                 +spicy
                                 +spoiled
                                 +sprinkled
                                 +starchy
                                 +steamy
                                 +stewed
                                 +strong
                                 +stuffed
                                 +sugary
                                 +sweet.and.sour
                                 +tainted
                                 +tasty
                                 +texture
                                 +toasted
                                 +toothsome
                                 +tough
                                 +wilted
                                 +yucky
                                 +zesty
                                 +delish
                                 +tasteful
                                 +creepy
                                 +gruesome
                                 +horrific
                                 +odious
                                 +outrageous
                                 +shameless
                                 +shocking
                                 +beastly
                                 +ghastly
                                 +grody
                                 +horrid
                                 +lousy
                                 +acceptable
                                 +bad
                                 +exceptional
                                 +satisfactory
                                 +ace
                                 +capital
                                 +choice
                                 +crack
                                 +nice
                                 +rad
                                 +spanking
                                 +sterling
                                 +superior
                                 +worthy
                                 +first.rate
                                 +gnarly
                                 +precious
                                 +select
                                 +stupendous
                                 +tip.top
                                 +atrocious
                                 +cheap
                                 +crummy
                                 +dreadful
                                 +poor
                                 +rough
                                 +sad
                                 +blah
                                 +garbage
                                 +careless
                                 +crappy
                                 +erroneous
                                 +grungy
                                 +incorrect
                                 +not.good
                                 +substandard
                                 +adorable
                                 +adventurous
                                 +affable
                                 +appreciated
                                 +authentic
                                 +aware
                                 +awesome
                                 +blessed
                                 +bold
                                 +careful
                                 +caring
                                 +centered
                                 +cheerful
                                 +comfortable
                                 +conscientious
                                 +courageous
                                 +courteous
                                 +creative
                                 +dandy
                                 +dazzled
                                 +decisive
                                 +dedicated
                                 +desirable
                                 +dynamic
                                 +eager
                                 +emotional
                                 +energized
                                 +enough
                                 +excited
                                 +expanded
                                 +extraordinary
                                 +fabulous
                                 +frank
                                 +free
                                 +fulfilled
                                 +fun
                                 +generous
                                 +genius
                                 +genuine
                                 +glad
                                 +glorious
                                 +glowing
                                 +goddess
                                 +goodness
                                 +graceful
                                 +grateful
                                 +hard.working
                                 +helpful
                                 +holy
                                 +honest
                                 +humorous
                                 +incomparable
                                 +inspired
                                 +intuitive
                                 +inventive
                                 +irresistible
                                 +jolly
                                 +jovial
                                 +joyous
                                 +just
                                 +kind
                                 +loved
                                 +lovely
                                 +loving
                                 +loyal
                                 +luxurious
                                 +magical
                                 +magnificent
                                 +mind.blowing
                                 +miraculous
                                 +nurtured
                                 +open
                                 +original
                                 +polite
                                 +quiet
                                 +radiant
                                 +rational
                                 +ready
                                 +relaxed
                                 +relieved
                                 +remarkable
                                 +renewed
                                 +resilient
                                 +romantic
                                 +sacred
                                 +safe
                                 +satisfied
                                 +secured
                                 +sensational
                                 +smart
                                 +stellar
                                 +successful
                                 +super
                                 +sustained
                                 +thoughtful
                                 +tranquil
                                 +triumphant
                                 +ultimate
                                 +unassuming
                                 +unbelievable
                                 +understanding
                                 +unlimited
                                 +wealthy
                                 +welcomed
                                 +willing
                                 +wise
                                 +xoxo
                                 +hope
                                 +abrupt
                                 +absentee
                                 +abysmal
                                 +accidental
                                 +accost
                                 +accusation
                                 +accusing
                                 +acrid
                                 +addict
                                 +addicted
                                 +afraid
                                 +aggravating
                                 +aggravation
                                 +aggression
                                 +aggressive
                                 +agonize
                                 +agonizingly
                                 +ail
                                 +ailment
                                 +alarming
                                 +alienate
                                 +altercation
                                 +ambiguity
           )
}



## The following code writes the submitted files. 
attempt = data.frame(Id=out$Id, Expected=predict(MODEL24, newdata = out))
write.csv(attempt, file='RESULT.csv', row.names=FALSE)



## The following was also used to check correlations:
{
  # correlation = cor(data)
  # row = 1
  # while(row <= length(correlation[,1])){
  #   column = 1
  #   while(column <= length(correlation[1,])){
  #     
  #     if(correlation[row,column] > 0.6 && row.names(correlation)[row] != colnames(correlation)[column]){
  #       cat(sep = "" , row.names(correlation)[row] , " is correlated with " , colnames(correlation)[column] , "\n")
  #     }
  #     column = column + 1
  #   }
  #   
  #   
  #   row = row + 1;
  # }
}



## All the following show the previous attempts, note that my computer chrashed multiple times 
## and data was lost, so some of them might not work if tried:
{
# 
# ## Attempt1
# {
#   attempt = data.frame(Id=out$Id, Expected=predict(MODEL, newdata = out))
#   write.csv(attempt, file='AttemptGroup20.csv', row.names=FALSE)
# }
# 
# 
# ## Attempt2 
# {
#   MODEL2 = lm(data = Data, stars~ funny + cool + nword + sentiment + love + 
#                 deliciousCombination + perfectCombination + worseCombination)
#   
#   attempt = data.frame(Id=out$Id, Expected=predict(MODEL2, newdata = out))
#   write.csv(attempt, file='Attempt2Group20.csv', row.names=FALSE)
# }
# 
# ## Attempt3
# 
# {MODEL3 = lm(data = Data, stars~ 
#                
#                
#                useful+
#                funny +
#                cool+
#                nchar+
#                nword+
#                sentiment+
#                gem+
#                incredible+
#                divine+
#                perfection+
#                phenomenal+
#                die+
#                
#                highly+
#                
#                superb+
#                
#                amazing+
#                sourced+
#                delectable+
#                knowledgeable+
#                
#                
#                fantastic+
#                favorites+
#                wonderful+
#                
#                gross+
#                apologize+
#                charged+
#                proceeded+
#                ignored+
#                receipt+
#                response+
#                poorly+
#                waste+
#                nasty+
#                terrible+
#                tasteless+
#                inedible+
#                rude+
#                awful+
#                horrible+
#                
#                disgusting+
#                
#                unique+
#                great+
#                love+
#                excellent+
#                fresh+
#                friendly+
#                
#                deliciousCombination+
#                heavenCombination+
#                perfectCombination+
#                apologizeCombination+
#                worseCombination
# )
#   
#   attempt = data.frame(Id=out$Id, Expected=predict(MODEL3, newdata = out))
#   write.csv(attempt, file='Attempt3Group20.csv', row.names=FALSE)
# }
# 
# ## Attempt 5
# {
#   
#   MODEL5 = lm(data = Data, stars~ 
#                 
#                 
#                 useful+
#                 funny +
#                 cool+
#                 nchar+
#                 nword+
#                 sentiment+
#                 gem+
#                 incredible+
#                 divine+
#                 perfection+
#                 phenomenal+
#                 die+
#                 
#                 highly+
#                 
#                 
#                 
#                 amazing+
#                 
#                 delectable+
#                 knowledgeable+
#                 
#                 
#                 fantastic+
#                 favorites+
#                 wonderful+
#                 
#                 gross+
#                 apologize+
#                 charged+
#                 proceeded+
#                 ignored+
#                 receipt+
#                 response+
#                 poorly+
#                 waste+
#                 nasty+
#                 terrible+
#                 tasteless+
#                 inedible+
#                 rude+
#                 awful+
#                 horrible+
#                 
#                 disgusting+
#                 
#                 unique+
#                 great+
#                 love+
#                 excellent+
#                 fresh+
#                 friendly+
#                 
#                 deliciousCombination+
#                 heavenCombination+
#                 perfectCombination+
#                 apologizeCombination+
#                 worseCombination)
#   
#   attempt = data.frame(Id=out$Id, Expected=predict(MODEL5, newdata = out))
#   write.csv(attempt, file='Attempt5Group20.csv', row.names=FALSE)
#   
# }
# 
# ## Attempt 6 
# {
#   ## Model
#   {
#     MODEL6 = lm(data = Data, stars~ 
#                   
#                   useful+
#                   funny +
#                   cool+
#                   nchar+
#                   nword+
#                   sentiment+
#                   gem+
#                   incredible+
#                   divine+
#                   perfection+
#                   phenomenal+
#                   die+
#                   
#                   highly+
#                   
#                   superb+
#                   
#                   amazing+
#                   sourced+
#                   delectable+
#                   knowledgeable+
#                   
#                   
#                   fantastic+
#                   favorites+
#                   wonderful+
#                   
#                   gross+
#                   apologize+
#                   charged+
#                   proceeded+
#                   ignored+
#                   receipt+
#                   response+
#                   poorly+
#                   waste+
#                   nasty+
#                   terrible+
#                   tasteless+
#                   inedible+
#                   rude+
#                   awful+
#                   horrible+
#                   fantastic+
#                   disgusting+
#                   
#                   unique+
#                   great+
#                   love+
#                   excellent+
#                   fresh+
#                   friendly+
#                   
#                   deliciousCombination+
#                   heavenCombination+
#                   perfectCombination+
#                   apologizeCombination+
#                   worseCombination)
#   }
#   summary(MODEL6)
#   attempt = data.frame(Id=out$Id, Expected=predict(MODEL6, newdata = out))
#   write.csv(attempt, file='Attempt6Group20.csv', row.names=FALSE)
#   
# }
# 
# ## Attempt 7, lasso Regression
# {
#   library(glmnet)
#   
#   
#   MODEL7 = cv.glmnet(cbind(
#     useful = Data$useful,
#     funny =Data$funny, 
#     cool = Data$cool,
#     nchar = Data$nchar,
#     nword =  Data$nword,
#     sentiment =  Data$sentiment,
#     gem =  Data$gem,
#     incredible =  Data$incredible,
#     divine = Data$divine,
#     perfection = Data$perfection,
#     phenomenal = Data$phenomenal,
#     die =  Data$die,
#     
#     highly =  Data$highly,
#     
#     superb =  Data$superb,
#     
#     amazing = Data$amazing,
#     sourced =  Data$sourced,
#     delectable =  Data$delectable,
#     knowledgeable=  Data$knowledgeable,
#     
#     
#     fantastic =  Data$fantastic,
#     favorites =  Data$favorites,
#     wonderful = Data$wonderful,
#     
#     gross=  Data$gross,
#     apologize= Data$apologize,
#     charged= Data$charged,
#     proceeded= Data$proceeded,
#     ignored=   Data$ignored,
#     receipt=  Data$receipt,
#     response=  Data$response,
#     poorly=  Data$poorly,
#     waste=  Data$waste,
#     nasty=  Data$nasty,
#     terrible= Data$terrible,
#     tasteless= Data$tasteless,
#     inedible= Data$inedible,
#     rude= Data$rude,
#     awful= Data$awful,
#     horrible= Data$horrible,
#     
#     disgusting= Data$disgusting,
#     
#     unique= Data$unique,
#     great=Data$great,
#     love= Data$love,
#     excellent= Data$excellent,
#     fresh=  Data$fresh,
#     friendly= Data$friendly,
#     
#     deliciousCombination=Data$deliciousCombination,
#     heavenCombination= Data$heavenCombination,
#     perfectCombination=Data$perfectCombination,
#     apologizeCombination=Data$apologizeCombination,
#     worseCombination= Data$worseCombination
#     
#     
#   ) , Data$stars)
#   
#   attempt = data.frame(Id=out$Id, Expected = predict(MODEL7, newx = 
#                                                        
#                                                        cbind(
#                                                          useful = out$useful,
#                                                          funny =out$funny, 
#                                                          cool = out$cool,
#                                                          nchar = out$nchar,
#                                                          nword =  out$nword,
#                                                          sentiment =  out$sentiment,
#                                                          gem =  out$gem,
#                                                          incredible =  out$incredible,
#                                                          divine = out$divine,
#                                                          perfection = out$perfection,
#                                                          phenomenal = out$phenomenal,
#                                                          die =  out$die,
#                                                          
#                                                          highly =  out$highly,
#                                                          
#                                                          superb =  out$superb,
#                                                          
#                                                          amazing = out$amazing,
#                                                          sourced =  out$sourced,
#                                                          delectable =  out$delectable,
#                                                          knowledgeable=  out$knowledgeable,
#                                                          
#                                                          
#                                                          fantastic =  out$fantastic,
#                                                          favorites =  out$favorites,
#                                                          wonderful = out$wonderful,
#                                                          
#                                                          gross=  out$gross,
#                                                          apologize= out$apologize,
#                                                          charged= out$charged,
#                                                          proceeded= out$proceeded,
#                                                          ignored=   out$ignored,
#                                                          receipt=  out$receipt,
#                                                          response=  out$response,
#                                                          poorly=  out$poorly,
#                                                          waste=  out$waste,
#                                                          nasty=  out$nasty,
#                                                          terrible= out$terrible,
#                                                          tasteless= out$tasteless,
#                                                          inedible= out$inedible,
#                                                          rude= out$rude,
#                                                          awful= out$awful,
#                                                          horrible= out$horrible,
#                                                          
#                                                          disgusting= out$disgusting,
#                                                          
#                                                          unique= out$unique,
#                                                          great=out$great,
#                                                          love= out$love,
#                                                          excellent= out$excellent,
#                                                          fresh=  out$fresh,
#                                                          friendly= out$friendly,
#                                                          
#                                                          deliciousCombination=out$deliciousCombination,
#                                                          heavenCombination= out$heavenCombination,
#                                                          perfectCombination=out$perfectCombination,
#                                                          apologizeCombination=out$apologizeCombination,
#                                                          worseCombination= out$worseCombination
#                                                          
#                                                          
#                                                        ), 
#                                                      
#                                                      
#                                                      
#                                                      
#                                                      s = "lambda.min" , newdata = out))
#   write.csv(attempt, file='Attempt7Group20.csv', row.names=FALSE)
#   
# }
# 
# ## Attempt 8, Ridge Regression
# {
#   library(glmnet)
#   
#   
#   MODEL8 = cv.glmnet(cbind(
#     useful = Data$useful,
#     funny =Data$funny, 
#     cool = Data$cool,
#     nchar = Data$nchar,
#     nword =  Data$nword,
#     sentiment =  Data$sentiment,
#     gem =  Data$gem,
#     incredible =  Data$incredible,
#     divine = Data$divine,
#     perfection = Data$perfection,
#     phenomenal = Data$phenomenal,
#     die =  Data$die,
#     
#     highly =  Data$highly,
#     
#     superb =  Data$superb,
#     
#     amazing = Data$amazing,
#     sourced =  Data$sourced,
#     delectable =  Data$delectable,
#     knowledgeable=  Data$knowledgeable,
#     
#     
#     fantastic =  Data$fantastic,
#     favorites =  Data$favorites,
#     wonderful = Data$wonderful,
#     
#     gross=  Data$gross,
#     apologize= Data$apologize,
#     charged= Data$charged,
#     proceeded= Data$proceeded,
#     ignored=   Data$ignored,
#     receipt=  Data$receipt,
#     response=  Data$response,
#     poorly=  Data$poorly,
#     waste=  Data$waste,
#     nasty=  Data$nasty,
#     terrible= Data$terrible,
#     tasteless= Data$tasteless,
#     inedible= Data$inedible,
#     rude= Data$rude,
#     awful= Data$awful,
#     horrible= Data$horrible,
#     
#     disgusting= Data$disgusting,
#     
#     unique= Data$unique,
#     great=Data$great,
#     love= Data$love,
#     excellent= Data$excellent,
#     fresh=  Data$fresh,
#     friendly= Data$friendly,
#     
#     deliciousCombination=Data$deliciousCombination,
#     heavenCombination= Data$heavenCombination,
#     perfectCombination=Data$perfectCombination,
#     apologizeCombination=Data$apologizeCombination,
#     worseCombination= Data$worseCombination
#     
#     
#   ) , Data$stars, alpha = 0)
#   
#   attempt = data.frame(Id=out$Id, Expected=predict(MODEL8, newx = 
#                                                      
#                                                      cbind(
#                                                        useful = out$useful,
#                                                        funny =out$funny, 
#                                                        cool = out$cool,
#                                                        nchar = out$nchar,
#                                                        nword =  out$nword,
#                                                        sentiment =  out$sentiment,
#                                                        gem =  out$gem,
#                                                        incredible =  out$incredible,
#                                                        divine = out$divine,
#                                                        perfection = out$perfection,
#                                                        phenomenal = out$phenomenal,
#                                                        die =  out$die,
#                                                        
#                                                        highly =  out$highly,
#                                                        
#                                                        superb =  out$superb,
#                                                        
#                                                        amazing = out$amazing,
#                                                        sourced =  out$sourced,
#                                                        delectable =  out$delectable,
#                                                        knowledgeable=  out$knowledgeable,
#                                                        
#                                                        
#                                                        fantastic =  out$fantastic,
#                                                        favorites =  out$favorites,
#                                                        wonderful = out$wonderful,
#                                                        
#                                                        gross=  out$gross,
#                                                        apologize= out$apologize,
#                                                        charged= out$charged,
#                                                        proceeded= out$proceeded,
#                                                        ignored=   out$ignored,
#                                                        receipt=  out$receipt,
#                                                        response=  out$response,
#                                                        poorly=  out$poorly,
#                                                        waste=  out$waste,
#                                                        nasty=  out$nasty,
#                                                        terrible= out$terrible,
#                                                        tasteless= out$tasteless,
#                                                        inedible= out$inedible,
#                                                        rude= out$rude,
#                                                        awful= out$awful,
#                                                        horrible= out$horrible,
#                                                        
#                                                        disgusting= out$disgusting,
#                                                        
#                                                        unique= out$unique,
#                                                        great=out$great,
#                                                        love= out$love,
#                                                        excellent= out$excellent,
#                                                        fresh=  out$fresh,
#                                                        friendly= out$friendly,
#                                                        
#                                                        deliciousCombination=out$deliciousCombination,
#                                                        heavenCombination= out$heavenCombination,
#                                                        perfectCombination=out$perfectCombination,
#                                                        apologizeCombination=out$apologizeCombination,
#                                                        worseCombination= out$worseCombination
#                                                        
#                                                        
#                                                      ), 
#                                                    
#                                                    
#                                                    
#                                                    
#                                                    s = "lambda.min" , newdata = out))
#   write.csv(attempt, file='Attempt8Group20.csv', row.names=FALSE)
#   
# }
# 
# ## Attempt 9, Add more predictros to the regression
# {
#   
#   Data =   add.Predictor.Word("beautiful",Data)
#   out =   add.Predictor.Word("beautiful",out)
#   
#   MODEL9 = lm(data = Data, stars~ 
#                 
#                 
#                 useful+
#                 funny +
#                 cool+
#                 nchar+
#                 nword+
#                 sentiment+
#                 gem+
#                 incredible+
#                 divine+
#                 perfection+
#                 phenomenal+
#                 die+
#                 
#                 highly+
#                 
#                 superb+
#                 
#                 amazing+
#                 sourced+
#                 delectable+
#                 knowledgeable+
#                 
#                 
#                 fantastic+
#                 favorites+
#                 wonderful+
#                 
#                 gross+
#                 apologize+
#                 charged+
#                 proceeded+
#                 ignored+
#                 receipt+
#                 response+
#                 poorly+
#                 waste+
#                 nasty+
#                 terrible+
#                 tasteless+
#                 inedible+
#                 rude+
#                 awful+
#                 horrible+
#                 
#                 disgusting+
#                 
#                 unique+
#                 great+
#                 love+
#                 excellent+
#                 fresh+
#                 friendly+
#                 
#                 deliciousCombination+
#                 heavenCombination+
#                 perfectCombination+
#                 apologizeCombination+
#                 worseCombination+
#                 ## Added word
#                 beautiful
#   )
#   
#   attempt = data.frame(Id=out$Id, Expected=predict(MODEL9, newdata = out))
#   write.csv(attempt, file='Attempt9Group20.csv', row.names=FALSE)
#   
#   
#   
# }
# 
# ## Attempt 10, Add more predictros to the regression
# {
#   
#   Data =   add.Predictor.Word("service",Data)
#   out =   add.Predictor.Word("service",out)
#   
#   MODEL10 = lm(data = Data, stars~ 
#                  
#                  
#                  useful+
#                  funny +
#                  cool+
#                  nchar+
#                  nword+
#                  sentiment+
#                  gem+
#                  incredible+
#                  divine+
#                  perfection+
#                  phenomenal+
#                  die+
#                  
#                  highly+
#                  
#                  superb+
#                  
#                  amazing+
#                  sourced+
#                  delectable+
#                  knowledgeable+
#                  
#                  
#                  fantastic+
#                  favorites+
#                  wonderful+
#                  
#                  gross+
#                  apologize+
#                  charged+
#                  proceeded+
#                  ignored+
#                  receipt+
#                  response+
#                  poorly+
#                  waste+
#                  nasty+
#                  terrible+
#                  tasteless+
#                  inedible+
#                  rude+
#                  awful+
#                  horrible+
#                  
#                  disgusting+
#                  
#                  unique+
#                  great+
#                  love+
#                  excellent+
#                  fresh+
#                  friendly+
#                  
#                  deliciousCombination+
#                  heavenCombination+
#                  perfectCombination+
#                  apologizeCombination+
#                  worseCombination+
#                  ## Added words to attempt number 3
#                  service
#                
#                
#                
#   )
#   attempt = data.frame(Id=out$Id, Expected=predict(MODEL10, newdata = out))
#   write.csv(attempt, file='Attempt10Group20.csv', row.names=FALSE)
#   
#   
#   
# }
# 
# ## Attempt 11, Add more predictros to the regression
# {
#   
#   Data =   add.Predictor.Word("minutes",Data)
#   out =   add.Predictor.Word("minutes",out)
#   
#   MODEL11 = lm(data = Data, stars~ 
#                  
#                  
#                  useful+
#                  funny +
#                  cool+
#                  nchar+
#                  nword+
#                  sentiment+
#                  gem+
#                  incredible+
#                  divine+
#                  perfection+
#                  phenomenal+
#                  die+
#                  
#                  highly+
#                  
#                  superb+
#                  
#                  amazing+
#                  sourced+
#                  delectable+
#                  knowledgeable+
#                  
#                  
#                  fantastic+
#                  favorites+
#                  wonderful+
#                  
#                  gross+
#                  apologize+
#                  charged+
#                  proceeded+
#                  ignored+
#                  receipt+
#                  response+
#                  poorly+
#                  waste+
#                  nasty+
#                  terrible+
#                  tasteless+
#                  inedible+
#                  rude+
#                  awful+
#                  horrible+
#                  
#                  disgusting+
#                  
#                  unique+
#                  great+
#                  love+
#                  excellent+
#                  fresh+
#                  friendly+
#                  
#                  deliciousCombination+
#                  heavenCombination+
#                  perfectCombination+
#                  apologizeCombination+
#                  worseCombination+
#                  ## Added words to attempt number 3
#                  service +
#                  minutes
#                
#                
#                
#                
#   )
#   summary(MODEL11)
#   attempt = data.frame(Id=out$Id, Expected=predict(MODEL11, newdata = out))
#   write.csv(attempt, file='Attempt11Group20.csv', row.names=FALSE)
#   
#   
#   
# }
# 
# ## Attempt 12, Add more predictros to the regression
# {
#   
#   Data =   add.Predictor.Word("definitely",Data)
#   out =   add.Predictor.Word("definitely",out)
#   
#   MODEL12 = lm(data = Data, stars~ 
#                  
#                  
#                  useful+
#                  funny +
#                  cool+
#                  nchar+
#                  nword+
#                  sentiment+
#                  gem+
#                  incredible+
#                  divine+
#                  perfection+
#                  phenomenal+
#                  die+
#                  
#                  highly+
#                  
#                  superb+
#                  
#                  amazing+
#                  sourced+
#                  delectable+
#                  knowledgeable+
#                  
#                  
#                  fantastic+
#                  favorites+
#                  wonderful+
#                  
#                  gross+
#                  apologize+
#                  charged+
#                  proceeded+
#                  ignored+
#                  receipt+
#                  response+
#                  poorly+
#                  waste+
#                  nasty+
#                  terrible+
#                  tasteless+
#                  inedible+
#                  rude+
#                  awful+
#                  horrible+
#                  
#                  disgusting+
#                  
#                  unique+
#                  great+
#                  love+
#                  excellent+
#                  fresh+
#                  friendly+
#                  
#                  deliciousCombination+
#                  heavenCombination+
#                  perfectCombination+
#                  apologizeCombination+
#                  worseCombination+
#                  ## Added words to attempt number 3
#                  service +
#                  minutes + 
#                  definitely
#                
#                
#                
#                
#   )
#   summary(MODEL12)
#   attempt = data.frame(Id=out$Id, Expected=predict(MODEL12, newdata = out))
#   write.csv(attempt, file='Attempt12Group20.csv', row.names=FALSE)
#   
#   
#   
# }
# 
# 
# ## Attempt 13, Add more predictros to the regression
# {
#   
#   Data =   add.Predictor.Word("best",Data)
#   out =   add.Predictor.Word("best",out)
#   
#   MODEL13 = lm(data = Data, stars~ 
#                  
#                  
#                  useful+
#                  funny +
#                  cool+
#                  nchar+
#                  nword+
#                  sentiment+
#                  gem+
#                  incredible+
#                  divine+
#                  perfection+
#                  phenomenal+
#                  die+
#                  
#                  highly+
#                  
#                  superb+
#                  
#                  amazing+
#                  sourced+
#                  delectable+
#                  knowledgeable+
#                  
#                  
#                  fantastic+
#                  favorites+
#                  wonderful+
#                  
#                  gross+
#                  apologize+
#                  charged+
#                  proceeded+
#                  ignored+
#                  receipt+
#                  response+
#                  poorly+
#                  waste+
#                  nasty+
#                  terrible+
#                  tasteless+
#                  inedible+
#                  rude+
#                  awful+
#                  horrible+
#                  
#                  disgusting+
#                  
#                  unique+
#                  great+
#                  love+
#                  excellent+
#                  fresh+
#                  friendly+
#                  
#                  deliciousCombination+
#                  heavenCombination+
#                  perfectCombination+
#                  apologizeCombination+
#                  worseCombination+
#                  ## Added words to attempt number 3
#                  service +
#                  minutes + 
#                  definitely+
#                  best
#                
#                
#                
#                
#   )
#   summary(MODEL13)
#   attempt = data.frame(Id=out$Id, Expected=predict(MODEL13, newdata = out))
#   write.csv(attempt, file='Attempt13Group20.csv', row.names=FALSE)
#   
#   
#   
# }
# 
# ## Attempt 14, Add more predictros to the regression
# {
#   
#   Data =   add.Predictor.Word("very",Data)
#   out =   add.Predictor.Word("very",out)
#   
#   MODEL14 = lm(data = Data, stars~ 
#                  
#                  
#                  useful+
#                  funny +
#                  cool+
#                  nchar+
#                  nword+
#                  sentiment+
#                  gem+
#                  incredible+
#                  divine+
#                  perfection+
#                  phenomenal+
#                  die+
#                  
#                  highly+
#                  
#                  superb+
#                  
#                  amazing+
#                  sourced+
#                  delectable+
#                  knowledgeable+
#                  
#                  
#                  fantastic+
#                  favorites+
#                  wonderful+
#                  
#                  gross+
#                  apologize+
#                  charged+
#                  proceeded+
#                  ignored+
#                  receipt+
#                  response+
#                  poorly+
#                  waste+
#                  nasty+
#                  terrible+
#                  tasteless+
#                  inedible+
#                  rude+
#                  awful+
#                  horrible+
#                  
#                  disgusting+
#                  
#                  unique+
#                  great+
#                  love+
#                  excellent+
#                  fresh+
#                  friendly+
#                  
#                  deliciousCombination+
#                  heavenCombination+
#                  perfectCombination+
#                  apologizeCombination+
#                  worseCombination+
#                  ## Added words to attempt number 3
#                  service +
#                  minutes + 
#                  definitely+
#                  best +
#                  very
#                
#                
#                
#                
#   )
#   summary(MODEL14)
#   attempt = data.frame(Id=out$Id, Expected=predict(MODEL14, newdata = out))
#   write.csv(attempt, file='Attempt14Group20.csv', row.names=FALSE)
#   
#   
#   
# }
# 
# ## Attempt 15, Add more predictros to the regression and erase some
# {
#   
#   Data =   add.Predictor.Word("like",Data)
#   out =   add.Predictor.Word("like",out)
#   
#   MODEL15 = lm(data = Data, stars~ 
#                  
#                  
#                  useful+
#                  funny +
#                  cool+
#                  nchar+
#                  nword+
#                  sentiment+
#                  gem+
#                  incredible+
#                  divine+
#                  perfection+
#                  phenomenal+
#                  die+
#                  
#                  highly+
#                  
#                  superb+
#                  
#                  amazing+
#                  
#                  delectable+
#                  knowledgeable+
#                  
#                  
#                  fantastic+
#                  favorites+
#                  wonderful+
#                  
#                  gross+
#                  apologize+
#                  charged+
#                  
#                  ignored+
#                  receipt+
#                  response+
#                  poorly+
#                  waste+
#                  nasty+
#                  terrible+
#                  tasteless+
#                  inedible+
#                  rude+
#                  awful+
#                  horrible+
#                  
#                  disgusting+
#                  
#                  unique+
#                  great+
#                  love+
#                  excellent+
#                  fresh+
#                  friendly+
#                  
#                  deliciousCombination+
#                  heavenCombination+
#                  perfectCombination+
#                  apologizeCombination+
#                  worseCombination+
#                  ## Added words to attempt number 3
#                  service +
#                  minutes + 
#                  definitely+
#                  best +
#                  very+
#                  like
#                
#                
#                
#                
#   )
#   summary(MODEL15)
#   attempt = data.frame(Id=out$Id, Expected=predict(MODEL15, newdata = out))
#   write.csv(attempt, file='Attempt15Group20.csv', row.names=FALSE)
#   
#   
#   
# }
# 
# ## Attempt 16, Add more predictros to the regression and erase some
# {
#   
#   Data =   add.Predictor.Word("never",Data)
#   out =   add.Predictor.Word("never",out)
#   Data = add.Predictor.Word("happy",Data)
#   out =   add.Predictor.Word("happy",out)
#   
#   neverSqt = sqrt(Data$never)
#   Data = cbind(Data, neverSqt)
#   
#   neverSqt = sqrt(out$never)
#   out = cbind(out,neverSqt)
#   
#   
#   MODEL16 = lm(data = Data, stars~ 
#                  
#                  
#                  useful+
#                  funny +
#                  cool+
#                  nchar+
#                  nword+
#                  sentiment+
#                  gem+
#                  incredible+
#                  divine+
#                  perfection+
#                  phenomenal+
#                  die+
#                  
#                  highly+
#                  
#                  superb+
#                  
#                  amazing+
#                  
#                  delectable+
#                  knowledgeable+
#                  
#                  
#                  fantastic+
#                  favorites+
#                  wonderful+
#                  
#                  gross+
#                  apologize+
#                  charged+
#                  
#                  ignored+
#                  receipt+
#                  response+
#                  poorly+
#                  waste+
#                  nasty+
#                  terrible+
#                  tasteless+
#                  inedible+
#                  rude+
#                  awful+
#                  horrible+
#                  
#                  disgusting+
#                  
#                  unique+
#                  great+
#                  love+
#                  excellent+
#                  fresh+
#                  friendly+
#                  
#                  deliciousCombination+
#                  heavenCombination+
#                  perfectCombination+
#                  apologizeCombination+
#                  worseCombination+
#                  ## Added words to attempt number 3
#                  service +
#                  minutes + 
#                  definitely+
#                  best +
#                  very+
#                  like +
#                  neverSqt +
#                  happy
#                
#                
#                
#                
#   )
#   summary(MODEL16)
#   attempt = data.frame(Id=out$Id, Expected=predict(MODEL16, newdata = out))
#   write.csv(attempt, file='Attempt16Group20.csv', row.names=FALSE)
#   
#   
#   
# }
# 
# ## Attempt 17, Add more predictros to the regression and erase some
# {
#   
#   Data =   add.Predictor.Word("favorite",Data)
#   out =   add.Predictor.Word("favorite",out)
#   
#   favoriteCombination = Data$favorite + Data$favorites
#   Data = cbind(Data, favoriteCombination)
#   
#   favoriteCombination = out$favorite + out$favorites
#   out = cbind(out, favoriteCombination)
#   
#   
#   MODEL17 = lm(data = Data, stars~ 
#                  
#                  
#                  useful+
#                  funny +
#                  cool+
#                  nchar+
#                  nword+
#                  sentiment+
#                  gem+
#                  incredible+
#                  divine+
#                  perfection+
#                  phenomenal+
#                  die+
#                  
#                  highly+
#                  
#                  superb+
#                  
#                  amazing+
#                  
#                  delectable+
#                  knowledgeable+
#                  
#                  
#                  fantastic+
#                  
#                  wonderful+
#                  
#                  gross+
#                  apologize+
#                  charged+
#                  
#                  ignored+
#                  receipt+
#                  response+
#                  poorly+
#                  waste+
#                  nasty+
#                  terrible+
#                  tasteless+
#                  inedible+
#                  rude+
#                  awful+
#                  horrible+
#                  
#                  disgusting+
#                  
#                  unique+
#                  great+
#                  love+
#                  excellent+
#                  fresh+
#                  friendly+
#                  
#                  deliciousCombination+
#                  heavenCombination+
#                  perfectCombination+
#                  apologizeCombination+
#                  worseCombination+
#                  ## Added words to attempt number 3
#                  service +
#                  minutes + 
#                  definitely+
#                  best +
#                  very+
#                  like +
#                  
#                  happy +
#                  favorite
#                
#                
#                
#                
#   )
#   summary(MODEL17)
#   attempt = data.frame(Id=out$Id, Expected=predict(MODEL17, newdata = out))
#   write.csv(attempt, file='Attempt17Group20.csv', row.names=FALSE)
#   
#   
#   
# }
# 
# ## Attempt 18, 
# {
#   
#   Data =   add.Predictor.Word("frozen",Data)
#   out =   add.Predictor.Word("frozen",out)
#   
#   
#   
#   MODEL18 = lm(data = Data, stars~ 
#                  
#                  
#                  useful+
#                  funny +
#                  cool+
#                  nchar+
#                  nword+
#                  sentiment+
#                  gem+
#                  incredible+
#                  divine+
#                  perfection+
#                  phenomenal+
#                  die+
#                  
#                  highly+
#                  
#                  superb+
#                  
#                  amazing+
#                  
#                  delectable+
#                  knowledgeable+
#                  
#                  
#                  fantastic+
#                  
#                  wonderful+
#                  
#                  gross+
#                  apologize+
#                  charged+
#                  
#                  ignored+
#                  receipt+
#                  response+
#                  poorly+
#                  waste+
#                  nasty+
#                  terrible+
#                  tasteless+
#                  inedible+
#                  rude+
#                  awful+
#                  horrible+
#                  
#                  disgusting+
#                  
#                  unique+
#                  great+
#                  love+
#                  excellent+
#                  fresh+
#                  friendly+
#                  
#                  deliciousCombination+
#                  heavenCombination+
#                  perfectCombination+
#                  apologizeCombination+
#                  worseCombination+
#                  ## Added words to attempt number 3
#                  service +
#                  minutes + 
#                  definitely+
#                  best +
#                  very+
#                  like +
#                  
#                  happy +
#                  favorite+
#                  flavor
#                +frozen
#                
#                
#                
#                
#                
#                
#                
#                
#   )
#   summary(MODEL18)
#   attempt = data.frame(Id=out$Id, Expected=predict(MODEL18, newdata = out))
#   write.csv(attempt, file='Attempt18Group20.csv', row.names=FALSE)
#   
#   
#   
# }
# 
# ## Attempt 19, 
# {
#   
#   Data =   add.Predictor.Word("smell",Data)
#   out =   add.Predictor.Word("smell",out)
#   
#   Data =   add.Predictor.Word("fuck",Data)
#   out =   add.Predictor.Word("fuck",out)
#   
#   Data = Data[,-length(colnames(Data))]
#   out = out[,-length(colnames(out))]
#   
#   
#   
#   MODEL19 = lm(data = Data, stars~ 
#                  
#                  
#                  useful+
#                  funny +
#                  cool+
#                  #  nchar+
#                  #  nword+
#                  sentiment+
#                  gem+
#                  incredible+
#                  divine+
#                  perfection+
#                  phenomenal+
#                  die+
#                  
#                  highly+
#                  
#                  superb+
#                  
#                  amazing+
#                  
#                  delectable+
#                  knowledgeable+
#                  
#                  
#                  fantastic+
#                  
#                  wonderful+
#                  
#                  gross+
#                  apologize+
#                  charged+
#                  
#                  ignored+
#                  receipt+
#                  response+
#                  poorly+
#                  waste+
#                  nasty+
#                  terrible+
#                  tasteless+
#                  inedible+
#                  rude+
#                  awful+
#                  horrible+
#                  
#                  disgusting+
#                  
#                  unique+
#                  great+
#                  love+
#                  excellent+
#                  fresh+
#                  friendly+
#                  
#                  deliciousCombination+
#                  heavenCombination+
#                  perfectCombination+
#                  apologizeCombination+
#                  worseCombination+
#                  ## Added words to attempt number 3
#                  service +
#                  minutes + 
#                  definitely+
#                  best +
#                  very+
#                  like +
#                  
#                  happy +
#                  favorite+
#                  flavor
#                +frozen
#                + disappoint
#                + wait
#                + final
#                +  `wasn't` 
#                + `didn't`
#                + not
#                + `couldn't`
#                + old
#                +out
#                #    + enjoy
#                + last 
#                + worth
#                + cold
#                + yum
#                + sweet
#                + joy
#                + unacceptable
#                + dirt
#                + smell
#                
#                
#                
#                
#                
#                
#                
#                
#                
#                
#   )
#   summary( MODEL19 )$adj.r.squared
#   summary(MODEL19)
#   attempt = data.frame(Id=out$Id, Expected=predict(MODEL19, newdata = out))
#   write.csv(attempt, file='Attempt19Group20.csv', row.names=FALSE)
#   
#   
#   
# }
# 
# ## Attempt 20, 
# {
#   
#   Data =   add.Predictor.Word("smell",Data)
#   out =   add.Predictor.Word("smell",out)
#   
#   Data =   add.Predictor.Word("raw",Data)
#   out =   add.Predictor.Word("raw",out)
#   
#   Data = Data[,-length(colnames(Data))]
#   out = out[,-length(colnames(out))]
#   
#   
#   
#   MODEL20 = lm(data = Data, stars~ 
#                  
#                  
#                  useful+
#                  funny +
#                  cool+
#                  #  nchar+
#                  #  nword+
#                  sentiment+
#                  gem+
#                  incredible+
#                  divine+
#                  perfection+
#                  phenomenal+
#                  die+
#                  
#                  highly+
#                  
#                  superb+
#                  
#                  amazing+
#                  
#                  delectable+
#                  knowledgeable+
#                  
#                  
#                  fantastic+
#                  
#                  wonderful+
#                  
#                  gross+
#                  apologize+
#                  charged+
#                  
#                  ignored+
#                  receipt+
#                  response+
#                  poorly+
#                  waste+
#                  nasty+
#                  terrible+
#                  tasteless+
#                  inedible+
#                  rude+
#                  awful+
#                  #   horrible+
#                  
#                  disgusting+
#                  
#                  unique+
#                  great+
#                  love+
#                  excellent+
#                  fresh+
#                  friendly+
#                  
#                  deliciousCombination+
#                  heavenCombination+
#                  perfectCombination+
#                  apologizeCombination+
#                  worseCombination+
#                  ## Added words to attempt number 3
#                  service +
#                  minutes + 
#                  definitely+
#                  best +
#                  very+
#                  like +
#                  
#                  happy +
#                  favorite+
#                  flavor
#                +frozen
#                + disappoint
#                + wait
#                + final
#                +  `wasn't` 
#                + `didn't`
#                + not
#                + `couldn't`
#                + old
#                + out
#                #    + enjoy
#                + last 
#                + worth
#                + cold
#                + yum
#                + sweet
#                + joy
#                + unacceptable
#                + dirt
#                + smell
#                # + fuck
#                + shit
#                + crap
#                + hell
#                + horr
#                + boring
#                + mediocre
#                + stale
#                + under
#                
#                
#                
#                
#                
#                
#                
#                
#                
#                
#   )
#   summary(MODEL20)$adj.r.squared
#   summary(MODEL19)$adj.r.squared
#   attempt = data.frame(Id=out$Id, Expected=predict(MODEL20, newdata = out))
#   write.csv(attempt, file='Attempt20Group20.csv', row.names=FALSE)
#   
#   
#   
# }
# 
# ## Attempt 21
# {
#   
#   Data =   add.Predictor.Word("smell",Data)
#   out =   add.Predictor.Word("smell",out)
#   
#   Data =   add.Predictor.Word("nois",Data)
#   out =   add.Predictor.Word("nois",out)
#   
#   Data = Data[,-length(colnames(Data))]
#   out = out[,-length(colnames(out))]
#   
#   head(Data)
#   head(out)
#   
#   MODEL21 = lm(data = Data, stars~ 
#                  
#                  
#                  useful+
#                  funny +
#                  cool+
#                  #  nchar+
#                  #  nword+
#                  sentiment+
#                  gem+
#                  incredible+
#                  divine+
#                  perfection+
#                  phenomenal+
#                  die+
#                  
#                  highly+
#                  
#                  superb+
#                  
#                  amazing+
#                  
#                  delectable+
#                  knowledgeable+
#                  
#                  
#                  fantastic+
#                  
#                  wonderful+
#                  
#                  gross+
#                  apologize+
#                  charged+
#                  
#                  ignored+
#                  receipt+
#                  response+
#                  poorly+
#                  waste+
#                  nasty+
#                  terrible+
#                  tasteless+
#                  inedible+
#                  rude+
#                  awful+
#                  #   horrible+
#                  
#                  disgusting+
#                  # disgust + 
#                  unique+
#                  great+
#                  love+
#                  excellent+
#                  fresh+
#                  friendly+
#                  
#                  deliciousCombination+
#                  heavenCombination+
#                  perfectCombination+
#                  apologizeCombination+
#                  worseCombination+
#                  ## Added words to attempt number 3
#                  service +
#                  minutes + 
#                  definitely+
#                  best +
#                  very+
#                  like +
#                  
#                  happy +
#                  favorite+
#                  flavor
#                +frozen
#                + disappoint
#                + wait
#                + final
#                +  `wasn't` 
#                + `didn't`
#                + not
#                + `couldn't`
#                + old
#                + out
#                #    + enjoy
#                + last 
#                + worth
#                + cold
#                + yum
#                + sweet
#                + joy
#                + unacceptable
#                + dirt
#                + smell
#                # + fuck
#                + shit
#                + crap
#                + hell
#                + horr
#                + boring
#                + mediocre
#                + stale
#                + under
#                + dry
#                + orgasm
#                + rotten
#                + burn
#                + bland
#                
#                
#                
#                
#                
#                
#                
#                
#                
#                
#                
#   )
#   summary(MODEL21)$adj.r.squared
#   summary(MODEL19)$adj.r.squared
#   attempt = data.frame(Id=out$Id, Expected=predict(MODEL21, newdata = out))
#   write.csv(attempt, file='Attempt21Group20.csv', row.names=FALSE)
#   
#   
#   
# }
# 
# ## Attempt 22, 
# ## Current
# ## bEST ONE SO FAR
# {
#   
#   Data =   add.Predictor.Word("smell",Data)
#   out =   add.Predictor.Word("smell",out)
#   
#   Data =   add.Predictor.Word("nois",Data)
#   out =   add.Predictor.Word("nois",out)
#   
#   Data = Data[,-length(colnames(Data))]
#   out = out[,-length(colnames(out))]
#   
#   head(Data)
#   head(out)
#   typeof(head(Data[,]))
#   MODEL22 = lm(data = head( Data), stars~ 
#                  
#                  
#                  useful+
#                  funny +
#                  cool+
#                  #  nchar+
#                  #  nword+
#                  sentiment+
#                  gem+
#                  incredible+
#                  divine+
#                  perfection+
#                  phenomenal+
#                  die+
#                  
#                  highly+
#                  
#                  superb+
#                  
#                  amazing+
#                  
#                  delectable+
#                  knowledgeable+
#                  
#                  
#                  fantastic+
#                  
#                  wonderful+
#                  
#                  gross+
#                  apologize+
#                  charged+
#                  
#                  ignored+
#                  receipt+
#                  response+
#                  poorly+
#                  waste+
#                  nasty+
#                  terrible+
#                  tasteless+
#                  inedible+
#                  rude+
#                  awful+
#                  #   horrible+
#                  
#                  disgusting+
#                  # disgust + 
#                  unique+
#                  great+
#                  love+
#                  excellent+
#                  fresh+
#                  friendly+
#                  
#                  deliciousCombination+
#                  heavenCombination+
#                  perfectCombination+
#                  apologizeCombination+
#                  worseCombination+
#                  
#                  
#                  ## Added words to attempt number 3
#                  service +
#                  minutes + 
#                  definitely+
#                  best +
#                  very+
#                  like +
#                  
#                  happy +
#                  favorite+
#                  flavor
#                + frozen
#                + disappoint
#                + wait
#                + final
#                +  `wasn't` 
#                + `didn't`
#                + not
#                + `couldn't`
#                + old
#                + out
#                #    + enjoy
#                + last 
#                + worth
#                + cold
#                + yum
#                + sweet
#                + joy
#                + unacceptable
#                + dirt
#                + smell
#                # + fuck
#                + shit
#                + crap
#                + hell
#                + horr
#                + boring
#                + mediocre
#                + stale
#                + under
#                + dry
#                + orgasm
#                + rotten
#                + burn
#                + bland
#                #### After words search
#                
#                +raw
#                +over
#                +appetizing
#                +watery
#                +tender
#                +tast
#                +soggy
#                +ruin
#                +rancid
#                +nauseating
#                +mushy
#                +moldy
#                +star
#                +negative
#                +positive
#                +mess
#                +crowd
#                +noisy
#                +loud
#                +slow
#                +fast
#                +browned
#                +bubbly
#                +canned
#                +chalky
#                +charcuterie
#                +charred
#                +chewy
#                +chilled
#                +chowder
#                +`comfort food`
#                +condensed
#                +course
#                +creamy
#                +creole
#                +crispy
#                +crumbly
#                +crunchy
#                +crystalized
#                +cuisine
#                +decadent
#                +delightful
#                +dense
#                +devein
#                +deviled
#                +dietary
#                +dipping
#                +disagreeable
#                +distasteful
#                +distinctive
#                +doughy
#                +drenched
#                +`dried out`
#                +drizzled
#                +dull
#                +dusted
#                +earthy
#                +edible
#                +etouffee
#                +exquisite
#                +fatty
#                +fine
#                +filling
#                +fishy
#                +flambé
#                +flavorless
#                +flavorful
#                +fluffy
#                +`freeze dried`
#                +fruity
#                +garnish
#                +glazed
#                +golden
#                +good
#                +gourmet
#                +grainy
#                +gratifying
#                +greasy
#                +grilled
#                +gritty
#                +hardboiled
#                +heat
#                +heavy
#                +healthy
#                +hearty
#                +hot
#                +`hot sauce`
#                +icy
#                +infused
#                +inviting
#                +juicy
#                +kick
#                +laced
#                +lemony
#                +light
#                +limp
#                +`low-fat`
#                +lumpy
#                +mashed
#                +medium
#                +mellow
#                +microwave
#                +milky
#                +minced
#                +mixed
#                +mixture
#                +moist
#                +`mouth-watering`
#                +muddy
#                +nourishing
#                +nuked
#                +nutritious
#                +nutty
#                +oily
#                +oniony
#                +oozing
#                +organic
#                +overpowering
#                +packed
#                +palatable
#                +`pan-fried`
#                +paprika
#                +parched
#                +parfait
#                +pasty
#                +`peanut butter`
#                +penetrating
#                +peppery
#                +perishable
#                +pleasant
#                +plump
#                +potent
#                +puffy
#                +pungent
#                +puréed
#                +reduced
#                +refreshing
#                +relish
#                +rich
#                +roasted
#                +robust
#                +rolled
#                +ruined
#                +runny
#                +salted
#                +salty
#                +saturated
#                +sauté
#                +savory
#                +scorched
#                +scrumptious
#                +seasoned
#                +shredded
#                +sizzling
#                +slathered
#                +slimy
#                +slivered
#                +smooth
#                +snappy
#                +soaked
#                +soft
#                +`soft-boiled`
#                +solidify
#                +sordid
#                +spicy
#                +spirited
#                +spoiled
#                +spongy
#                +sprinkled
#                +starchy
#                +steamy
#                +stewed
#                +stringy
#                +strong
#                +stuffed
#                +succulent
#                +sugary
#                +`sweet and sour`
#                +syrupy
#                +tainted
#                +tart
#                +tasty
#                +texture
#                +toasted
#                +toothsome
#                +tough
#                +umami
#                +wilted
#                +yucky
#                +zest
#                +zesty
#                +delish
#                +tasteful
#                +abominable
#                +creepy
#                +gruesome
#                +horrific
#                +odious
#                +outrageous
#                +shameless
#                +shocking
#                +vile
#                +beastly
#                +ghastly
#                +grody
#                +hideous
#                +horrid
#                +lousy
#                +nerdy
#                +offensive
#                +acceptable
#                +bad
#                +exceptional
#                +satisfactory
#                +satisfying
#                +valuable
#                +ace
#                +capital
#                +choice
#                +crack
#                +nice
#                +rad
#                +sound
#                +spanking
#                +sterling
#                +superior
#                +welcome
#                +worthy
#                +`first-rate`
#                +gnarly
#                +precious
#                +select
#                +splendid
#                +stupendous
#                +`tip-top`
#                +atrocious
#                +cheap
#                +crummy
#                +dreadful
#                +poor
#                +rough
#                +sad
#                +blah
#                +garbage
#                +synthetic
#                +careless
#                +crappy
#                +cruddy
#                +erroneous
#                +grungy
#                +inadequate
#                +incorrect
#                +`not good`
#                +off
#                +substandard
#                
#                
#                
#   )
#   
#   summary(MODEL22)$adj.r.squared
#   summary(MODEL21)$adj.r.squared
#   attempt = data.frame(Id=out$Id, Expected=predict(MODEL22, newdata = out))
#   write.csv(attempt, file='Attempt22Group20.csv', row.names=FALSE)
#   
#   
#   
# }

}



## For cross validation we used:
{
#   SUB = regsubsets( nvmax = 540, data = data, stars~. , method = "backward")
#   max(summary(SUB)$adjr2)
# }
# 
# {
#   SUB = regsubsets( nvmax = 540, data = data, stars~. , method = "forward")
#   max(summary(SUB)$adjr2)
}



## The following plot shows the relationship between the number of predictor and the obtained score:
{
numPredictors = c(15,12,50,49,48,50,50,51,52,53,54,55,54,56,56,58,(58+18) , 81, 85, 328, 370, 426)

adjRsquared = c(0.3860625,0.4525877 , 0.4525409, 0.4525877 , 0.4499, 0.45120,  0.4501204 , 0.4525766 , 0.4558276,
                0.4623493, 0.4631353, 0.4679456, 0.4682565, 0.4735363, 0.4736217 , 0.4790349, 0.4817404, 0.4909802, 
                0.5110831, 0.5176248 , 0.5361782 , 0.549008
                )
install.packages("ggplot2")
library(ggplot2)

ggplot(data = data.frame(numPredictors=numPredictors,adjRsquared=adjRsquared) , aes(x = numPredictors, y = adjRsquared) ) + geom_point()+
  ggtitle(expression(paste(italic(adj), R^2 , " vs Number of Predictors"))) + ylab(expression(paste(italic(adj), R^2 ))) + xlab("Number of Predictors") +
  geom_smooth(col = "red" , alpha = 0.4, size = 0.4, method ="lm")

}



## This is the code used for the word cloud
{
  #text merging for five stars
  
  
  yelp = read.csv("Yelp_train.csv")
  fivedat<-yelp[sample(which(yelp$stars==5),5000),]
  
  fivetext<-paste(fivedat$text)
  
 
  
  #wordcloud package install
  
  # Install
  
  install.packages("tm")  # for text mining
  
  install.packages("SnowballC") # for text stemming
  
  install.packages("wordcloud") # word-cloud generator
  
  install.packages("RColorBrewer") # color palettes
  
  # Load
  
  library("tm")
  
  library("SnowballC")
  
  library("wordcloud")
  
  library("RColorBrewer")
  
  
  
  
  
  fivetext<-VCorpus(VectorSource(fivetext))
  
  fivetext<-tm_map(fivetext,content_transformer(tolower))
  
  fivetext<-tm_map(fivetext,removeNumbers)
  
  fivetext<-tm_map(fivetext,removeWords,stopwords("english")) #remove english common stopwords
  
  fivetext<-tm_map(fivetext,removeWords,c("also","get","food","place","madison"))
  
  fivetext<-tm_map(fivetext,removePunctuation)
  
  fivetext<-tm_map(fivetext,stripWhitespace)
  
  
  
  #build term documented matrix
  
  fivedtm<-TermDocumentMatrix(fivetext)
  
  fivem<-as.matrix(fivedtm)
  
  fivev<-sort(rowSums(fivem),decreasing=TRUE)
  
  fived<-data.frame(word=names(fivev),freq=fivev)
  
  

  #wordcloud
  
  set.seed(1234)
  
  wordcloud(words=fived$word,freq=fived$freq,min.freq=1,max.words=500,random.order=FALSE,rot.per=0.35,colors=brewer.pal(8,"Dark2"))
  
  
  
  
  
  
  
  ##word cloud for 1 star
  
  #text merging for one stars
  
  length(which(yelp$stars==1))  ##total number 4624
  
  onedat<-yelp[sample(which(yelp$stars==1),4624),]  
  
  onetext<-paste(onedat$text)
  
  
  
  onetext<-paste(onedat$text)
  
  onetext<-VCorpus(VectorSource(onetext))
  
  onetext<-tm_map(onetext,content_transformer(tolower))
  
  onetext<-tm_map(onetext,removeNumbers)
  
  onetext<-tm_map(onetext,removeWords,stopwords("english")) #remove english common stopwords
  
  onetext<-tm_map(onetext,removeWords,c("also","get","just","food","place","madison"))
  
  onetext<-tm_map(onetext,removePunctuation)
  
  onetext<-tm_map(onetext,stripWhitespace)
  
  
  
  #build term documented matrix
  
  onetdm<-TermDocumentMatrix(onetext)
  
  onem<-as.matrix(onetdm)   ####error: can't allocate vector of size 10.8GB
  
  onev<-sort(rowSums(onem),decreasing=TRUE)
  
  oned<-data.frame(word=names(onev),freq=onev)
  
  
  
  #wordcloud
  
  set.seed(1234)
  
  wordcloud(words=oned$word,freq=oned$freq,min.freq=1,max.words=500,random.order=FALSE,rot.per=0.35,colors=brewer.pal(8,"Dark2"))
  
  
  
}


