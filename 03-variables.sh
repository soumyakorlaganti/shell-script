#!/bin/bash

#declaring of variable
PERSON1=soumya  #no space between = and values
PERSON2=raju

#referring variable
echo "$PERSON1:: Hello $PERSON2,How are you?"
echo "${PERSON2}:: Hi $PERSON1,I am fine. How are you?"
echo "$PERSON1:: I am fine too.how is your work?"
echo "$PERSON2:: not bad. I am thinking to upgrade to devops"