require 'functions' # fails because we cannot find functions

# TWO
# Find out what we have in our load path
#puts $LOAD_PATH

# THREE
# This would work but we would need to be in the example_01 folder
# $LOAD_PATH.push('.')

# FOUR
# Properly get the directory of this file
#File.dirname(__FILE__)
#$LOAD_PATH.push(directory)
#require 'functions'

# FIVE
  #require_relative 'functions'
