import googlemaps
from datetime import datetime

gmaps = googlemaps.Client(key='AIzaSyDpfod5MHMyc6clNwLkzH6Wl4vfKvElvuw')

res = gmaps.place(place_id='ChIJ_UkqeR7-iEgRACUw_xpoDB0')

import json

# https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photo_reference=ATplDJZBxh4xjr1hd8Z6dX-etVejL4O-AeNkAwyHAmq0l4W6QTYh5crFHQMpYosE3lOu1UJunrvoC8T8_PBOIvCnmxt-cV4BGV4swq4kQIb_lQsFex0d0nlMCrJDN9HOr7YWITJgeFe3PokyrrhnoaF3VWLd4Jl0sQaZWZ2mAQaIbzL-PZkA&key=AIzaSyDpfod5MHMyc6clNwLkzH6Wl4vfKvElvuw

# Falkirk photo reference
# https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photo_reference=ATplDJaSpkspuYiaHRDzo7YeI5e_h_dE2t7NsTpSHYMiLbdcbEMVvsmrDzOJbHSDUUEiE-Ba9_dZiLCgDSQ2ift33fg3m82V3YMDV771y5dA8JkcobU-GCAKc6qD_UwxQKOIPxTQuwgBtVtbyfYo5AzOgZyLqu4VMQGLiyeTP6zy7IetZV96&key=AIzaSyDpfod5MHMyc6clNwLkzH6Wl4vfKvElvuw
# Falkirk new URL
# https://lh3.googleusercontent.com/places/ANXAkqHc-0DundUBFvhNQ8vCSIP4-FBUuXxUUnB8w21m67cPCM0R1N0aoo7btdwknu3kDhhtYtaVahMT2rDl0QL74jtjdCfNkF0wCGk=s1600-w400
# Falkirk old URL
# https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sATplDJa_4ku0wfdiWou10oVcT9psbi2XPJdMo2Fj3qMEKj77nPWpcnhvx1yyvuQF3QyHFjEBdiM6_v_TIEfB-DCcnjQjnKBZN0SmqWo-IjeJ9rQ5N-iUoVfWOCV5fcbuESHl96exRsLdrd7vmRwZqWroIXBXeGyQvkldSqsJotHEgni1J4pW&3u750&5m1&2e1&callback=none&r_url=https%3A%2F%2F8000-greenninjab-scottishgem-4u75wcjpqz6.ws-eu110.gitpod.io%2Fadd-gem%2F&key=AIzaSyDpfod5MHMyc6clNwLkzH6Wl4vfKvElvuw&token=54185


print(json.dumps(res, indent=4))

# # Geocoding an address
# geocode_result = gmaps.geocode('1600 Amphitheatre Parkway, Mountain View, CA')

# # Look up an address with reverse geocoding
# reverse_geocode_result = gmaps.reverse_geocode((40.714224, -73.961452))

# # Request directions via public transit
# now = datetime.now()
# directions_result = gmaps.directions("Sydney Town Hall",
#                                      "Parramatta, NSW",
#                                      mode="transit",
#                                      departure_time=now)

# # Validate an address with address validation
# addressvalidation_result =  gmaps.addressvalidation(['1600 Amphitheatre Pk'], 
#                                                     regionCode='US',
#                                                     locality='Mountain View', 
#                                                     enableUspsCass=True)

# print(addressvalidation_result)