require_relative 'request'

api = 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key='
key = '5WD4J4YMTZHPm4F48IPtd2EX9bqOfetqri2uvS5L'


def buid_web_page(hash)
    index = "
     <html>
     <head>
     </head>
     <body>
     <ul> "




     "</ul>
     </body>
     </html>"
    end
 
end     















File.write('./index.html', buid_web_page(data))

data = request(api,key)

