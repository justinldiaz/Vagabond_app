# Vagablog - a travel log that spans the globe
Vagablog is a site for posting travel logs about any city in world!  Everyone is allowed to contribute.  

**a project for General Assembly and Lord Delmer Reed**
by *Linda Gausman, Justin Diaz, Jeremy Brenner, David Deuber, and Jared Smith*

#####Project Scope
Anyone should be able to navigate to Vagablog and see the latest fascinating travel log posts from all across the world! Look up specific cities, or certain users that catch your eye, and relive their tales of daring, adventure, and conspicuous consumption in far away lands!

Want to level up your storytelling abilities? Sign up as an official Vagablog user<sup>[blood samples may be required]</sup> and regale anonymous people on the internet with your enthralling bursts of inanity.  

#####Workflow
 We are using two branches, dev, and master. All work is being done on dev, and moved over to master via pull requests on a daily basis, post testing. 

Remember to reset the database after pulling if things don't work
```
rake db:reset
```

#####Some useful git commands
wipeout all non committed changes in your workspace
```
git checkout .
```

delete 2nd to last commit if it hasn't been pushed, the 1 stands for go back 1 step from HEAD.
```
git reset --hard HEAD~1
``` 
