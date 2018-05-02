---
layout: post

title: "Map your Office 365 folder as a network drive under Windows 7"
---
1. Go to https://onedrive.live.com/about/fr-fr/.
2. Click on the *Connexion* button (Top Right) and login.
3. The Url displayed in the address bar is like: `https://onedrive.live.com/?id=root&cid=C42BF8F19V4120D9`
4. Open Computer or Windows Explorer (Windows key + E).
5. Click on the *Map network drive* button.
6. Past the address, but change `https://onedrive.live.com/?id=root&cid=` to `https://d.docs.live.net/`.
In this example, you will get : `https://d.docs.live.net/C42BF8F19V4120D9`
7. Select the letter drive you want, check *Reconnect at logon* and *Connect using different credentials*.
8. Click *Finish*.

In the pop-up, use you onedrive credentials (email address and password), check *Remember my credentials* and click *Ok*.

Of course, you can rename drive in your Windows Explorer by selecting the drive and pressing *F2*.

You’ll get all drives like that:

![A Wonderfull mapped drive !](/assets/images/onedrive.png)
