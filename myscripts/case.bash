#!/bin/bash
echo 
 echo please choose one of the options below
 echo  "a display time and date"
 echo  "b list file and directories"
 echo  "c list users logged in"
 echo

  read choices
   

  case $choices in
	  a) date;;
	  b) ls;;
	  c) who;;
	  *) echo invalid  choice -bye bye 
  esac

