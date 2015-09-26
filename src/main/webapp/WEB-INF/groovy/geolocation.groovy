def api_key = 'AIzaSyBwGDozCsY1vb2DR8cHxYsWgty7mb_5LKs'
def google_api_url = 'https://maps.googleapis.com/maps/api/geocode/xml'

def address = java.net.URLEncoder.encode(params.address,'UTF-8')
def response = "$google_api_url?address=$address&$api_key".toURL().text
response = new XmlSlurper().parseText(response)
println "Formatted address: $response.result.formatted_address"
println "Latitude: $response.result.geometry.location.lat"
println "Longitude: $response.result.geometry.location.lng"