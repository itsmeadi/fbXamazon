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
	try:
		hrf=ss.get('href')
		#print(hrf)
		page = urllib2.urlopen(hrf)
		soup1 = BeautifulSoup(page)

		name=soup1.h1.string
		imgs = soup1.findAll("img", {"class":"cloudzoom"})

		imgUrl = str(imgs[0]).split("src=")
		#print(imgUrl)
		#print(soup1.find("div",{"id":"bx-pager-left-image-panel"})) #    <div id="bx-pager-left-image-panel">

		im=re.findall(r'"([^"]*)"', imgUrl[1])
		name= name.lstrip()
		os.makedirs(name)
		#print("im=")
		#print(im[0])
		urllib.urlretrieve(im[0], os.path.join(name, os.path.basename(im[0])))
		#print("name="+name)
		price=soup1.find("span",{"class":"payBlkBig"}).string
		desc=soup1.find("div",{"class":"detailssubbox"}).string
		desc=desc.replace("\'","")
		desc=desc.strip();
		#print("price="+price)
		query="insert into products(name,price,desp) values('"+name+"','"+price+"','"+desc+"');"
		print(query)
		res=a.execute(query)
		imgs =soup1.find("div",{"id":"bx-pager-left-image-panel"})#bx-pager-left-image-panel a img
		#print(imgs)
		nam=0
		for imgs1 in imgs.findAll("a", {"class":"notVisible"}):
			nam=nam+1
			imgs2=imgs1.findAll("img",{"class":None})
			imgs3=str(imgs2[0]).split("src=")
			imurl=re.findall(r'"([^"]*)"', imgs3[1])
			print("..")
			#print(imurl[0])
			urllib.urlretrieve(imurl[0], os.path.join(name, str(nam)))
			
		
		
			
		print
		co+=1
	except Exception as e: 
		print str(e)
conn.commit()
a.close()
conn.close()
print(co)
imgs = soup.findAll("img", {"class":"cloudzoom"})
name = soup.findAll("h1", {"itemprop":"name"})
