#!/usr/bin/python3
# bym

#import urllib
#import warning
#import urllib.request
#import urllib2
#import urllib.error
#import socket
#import ssl
import requests

ip='10.10.61.118'
port='12012'
#testFormB='FB-000000000003005'
testFormB='TEST-FB-kd3ao4-2904000001111'
#testFSRAR_ID='030000199965'
testFSRAR_ID='010000001234'
filename='shablo.xml'
#uRl='http://10.10.61.118:12012/wb'
uRl='http://localhost:8070/wb'


######

#def http_post(str_url,dict_params,dict_headers,float_timeout):
#    querry=urllib2.urlencode(dict_params)

#querrrry=urllib.request.urlopen(http...)

#def sendCommand(self, url, dataForPost=None):

#def sendCommand(url, dataForPost):
#    req = urllib.request.urlopen(url, dataForPost)
#    #jar = cookielib.CookieJar()
#    #opener = urllib2.ild_opener(urllib2.HTTPCookieProcessor(jar))
#    content = opener.open(req)
#    response = content.read()
#    return response

######


def SendFile(url,dataForPost):
    print(dataForPost,'nu ept')
    #r=requests.get(url) #,dataForPost
    #r=requests.post(url,data=dataForPost,headers={'Connection':'close'})

    with requests.post(url,data=dataForPost) as r:
        print(r.status_code,'AAA111')
        r.close()
        print(r.headers,'BBB222')
        print(r.text,'CCC333')
        print(r,'EEE444')
#    r =requests.post(url=url, data=body, headers={'Connection':'close'})




def redactFile(filename,testFormB,testFSRAR_ID):
    lines=[]
    a=testFormB
    b=testFSRAR_ID
    with open(filename,'r+') as text:
        for line in text:
            if ('$FSRAR_ID' in line):
                print("Nashel blea")
                line=line.replace('$FSRAR_ID',b)
                #print(line,b)
            elif ('$FormB' in line):
                line=line.replace('$FormB',a)
            lines.append(line)
    #print('Forma: ',a,'fsrarafasdfasda: ',b)
    return lines

def printLines(liness):
    with open('tmpfile','w') as tmptext:
        for linez in liness:
            print(linez,end='')
            tmptext.write(linez)


#CODDEE
print('------------------')
amm=redactFile(filename,testFormB,testFSRAR_ID)
print('++++++++++++++++++')
printLines(amm)
print('==================')
strinn=''

with open('tmpfile','r') as ff:
    for lone in ff:
        strinn+=str(lone)
    #strinn=strinnn.encode('utf-8')
    print(strinn)




#sendCommand(uRl,strinn)
SendFile(uRl,strinn)
