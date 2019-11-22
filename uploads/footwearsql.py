import os
import urllib
import re
import urllib2
from BeautifulSoup import BeautifulSoup
import pymysql

conn= pymysql.connect(host='localhost',user='root',password='aditya',db='project',charset='utf8mb4',cursorclass=pymysql.cursors.DictCursor)
a=conn.cursor()

ur="https://www.snapdeal.com/products/mens-footwear-casual-shoes"
page = urllib2.urlopen(ur)
soup = BeautifulSoup(page)

co=0
for ss in soup("a",{"class":"dp-widget-link"}):
	hrf=ss.get('href')
	#print(hrf)
	page = urllib2.urlopen(hrf)
	soup1 = BeautifulSoup(page)
	name=soup1.h1.string
	imgs = soup1.findAll("img", {"class":"cloudzoom"})
	imgUrl = str(imgs[0]).split("src=")
	print(imgUrl)
	im=re.findall(r'"([^"]*)"', imgUrl[1])
	urllib.urlretrieve(im[0], os.path.basename(im[0]))
	name= name.lstrip()
	print("name="+name)
	price=soup1.find("span",{"class":"payBlkBig"}).string
	print("price="+price)
	query="insert into product(name,price,image) values('"+name+"','"+price+"','"+os.path.basename(im[0])+"');"
	res=a.execute(query)
	
	print
	co+=1
conn.commit()
print(co)
imgs = soup.findAll("img", {"class":"cloudzoom"})
name = soup.findAll("h1", {"itemprop":"name"})
