extends Node

# create empty dictionary
var emptyDict = {}

#create dictionary, int and string allowed for keys
var dictionary = {
	1: "Hi",
	"key": "World"
}

func _ready():
	
	# add a key to dictionary
	emptyDict["key"] = "value" # square brackets offer greater name control
	emptyDict[4] = [1,2,3,4] # you can use literals such as ints, floats, and booleans
	emptyDict.someKey = "someValue" # dot notation is an easy way if you want to default to key strings
	
	# get a value from an existing dictionary
	var getValue = emptyDict[4] # returns an array [1,2,3,4] 
	var getAnotherValue = emptyDict["key"] # returns  string"value"
	
	# print to see what we are dictionary values are
	print("getValue: ", getValue)
	print("getAnotherValue: ", getAnotherValue)
	
	
	# create dictionaries for nested dictionary example
	var dict1 = {"key": [1, 2, 3, 4]} # Assigns an Array to a key string called "key".
	var dict2 = {"key": [1, 2, 3, 4]} # Assigns an Array to a key string called "key".
	var dict3 = {"key": dict2} # Assigns a dictionary to a key string called "key".
	# dict3["key"]["key"] # this is how to access a nested dictionary
	
	# see whats inside our nested dictionary
	print(dict3["key"]["key"])
	
	# compare dictionaries throguh hashes
	# dict1.hash() == dict2.hash()
	print(dict1 == dict2) # false
	print(dict1.hash() == dict2.hash()) # true
	
	# Clear an entire dictionary
	dict1.clear()
	
	#Remove a specific key from a dictionary
	dict3.erase("key")
