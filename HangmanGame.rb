#No_of_try=3
Month=["january","february","march","april","may","june","july","august","september","october","november","december"]

def main_menu(try)
  print "Number Of Tries Left : " ,3-try
  puts ""
end

def play
  indexof=rand(12)
  guess_word=''
  required_word=Month[indexof]
  guess_size=Month[indexof].size

  for i in 0..guess_size-1 do
    guess_word+='X'
  end

  #guess_word="X"*Month[guess_size].size
  #flag=0
  counter=0
  try=0
  while(try<3)
    main_menu try
    print "Guessed Word: ",guess_word
    puts ""
    print "Actual Word: ",required_word
    puts ""
    flag=true
    guess=gets
    for i in 0..guess_size-1 do
      if required_word[i]==guess[0] && guess_word[i]=='X'
          guess_word[i]=guess[0]
          flag=false
          counter+=1
          break
      end
    end
    if counter>=guess_size
      break
    end
    if flag
      try+=1
    end
  end

  status=0
  for i in 0..guess_size do
    if guess_word[i]=='X'
      status=1
      break
    end
  end

  if status==1
    puts "You Lose!"
  else
    puts "You Win!"
  end
end

flag=true
while flag
  play
  print "You Want To Play More?[y/n]\n"
  choice=gets
  if chioce=='n'
    flag=false
  end
end