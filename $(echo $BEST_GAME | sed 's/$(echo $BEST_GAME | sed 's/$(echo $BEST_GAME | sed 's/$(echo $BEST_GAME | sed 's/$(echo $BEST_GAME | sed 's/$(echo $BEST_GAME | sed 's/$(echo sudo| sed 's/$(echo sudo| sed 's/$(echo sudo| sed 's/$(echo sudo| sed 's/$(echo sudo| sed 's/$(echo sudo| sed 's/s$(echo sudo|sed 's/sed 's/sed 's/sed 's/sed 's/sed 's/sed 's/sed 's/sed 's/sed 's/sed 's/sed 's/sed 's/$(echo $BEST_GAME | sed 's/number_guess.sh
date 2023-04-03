#! /bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

err_report() {
  echo "errexit on line $(caller)" >&2
}

trap err_report ERR

echo hello | grep foo


MENU (){
echo -e "\n~~~~~ Number Guessing Game ~~~~~\n" 


#get username
echo "Enter your username:"
read USERNAME

    USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
    if [[ -z $USER_ID ]]
    then
      echo "Welcome, $USERNAME! It looks like this is your first time here."
      INSERT_INTO_USERS=$($PSQL "INSERT INTO users VALUES('$USERNAME')")
      USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
    else
      BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id='$USER_ID'")
      GAMES_COUNT=$($PSQL "SELECT COUNT(game_id) FROM games WHERE user_id='$USER_ID'")
      CLEAN_GAMES_COUNT=$(echo $GAMES_COUNT | sed 's/ //g')
      CLEAN_BEST_GAME=$(echo $BEST_GAME | sed 's/ //g')
      echo "Welcome back, $USERNAME! You have played $CLEAN_GAMES_COUNT games, and your best game took $CLEAN_BEST_GAME guesses."
fi
GAME
}


GAME (){
  echo -e "Guess the secret number between 1 and 1000:"
  RANDOM_NUM=$((1 + $RANDOM % 1000))
  GAME_ID=$($PSQL "SELECT game_id FROM games WHERE user_id='$USER_ID'")
  GUESSES=0;

while [[ $RANDOM_NUM -ne $GUESSED_NUMBER ]]
do
  read GUESSED_NUMBER

  if [[ ! $GUESSED_NUMBER =~ ^[0-9]+$ ]] #check if input is a number
  then
  echo "That is not an integer, guess again:"
  else
          GUESSES=$(($GUESSES + 1))
        if [[ $RANDOM_NUM -eq $GUESSED_NUMBER ]]
        then
        echo "You guessed it in $GUESSES tries. The secret number was $RANDOM_NUM. Nice job!"
        INSERT_TO_GAMES=$($PSQL "INSERT INTO games (user_id, guesses) VALUES($USER_ID, $GUESSES)")
        elif [[ $GUESSED_NUMBER -lt $RANDOM_NUM ]]
        then 
        echo "It's higher than that, guess again:"
        else
        echo "It's lower than that, guess again:"
      fi
  fi
done

}

MENU
