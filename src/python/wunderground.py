"""
A weather forecast retrieval utility.
"""

import urllib2
import json

config_file =open('./config/wunderground.json')
config = json.load(config_file)
config_file.close()

f = urllib2.urlopen('http://api.wunderground.com/api/%s/geolookup/conditions/q/IA/Cedar_Rapids.json' % config['key'])
json_string = f.read()
parsed_json = json.loads(json_string)
location = parsed_json['location']['city']
temp_f = parsed_json['current_observation']['temp_f']
print "Current temperature in %s is: %s" % (location, temp_f)
f.close()

