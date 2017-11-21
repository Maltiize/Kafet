Kafet
=====

A web application powered by Symfony Project
Kafet is a cafeteria's management tool


### How to install

First clone the git inside a folder of your web directory.
Then edit the **/app/config/parameter.yml** so it matchs your configuration.

After that you will have to import the sample of data inside your database. Every thing is inside the **kafet.sql file** located in the root folder.

The last step is to download the dependencies.

all you need to do is

`composer update`

Also make sure your **/var/log** and **/var/cache** are not in read only mode.

### Test the app

The default user/password is *po and po*
The administrator user is *lol and lol*

### Disclamer

Im a self learner of Symfony and I was blocked by the default templates in twig so I directly modified it inside the vendor directory. Unfortunately this folder contains way too many files for me to upload it on git. Because of that the design of my website might be a bit screwed on your computer. I might fix this issue in the future.

You can have a preview of the website inside the screenshoot that I took.
