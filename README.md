# Ideas App

Finished app made by following http://guides.railsgirls.com/app

## Setup

First of all, make sure you have ruby and rails available. Check out [the
rails girls install guide][rg-install] for information on how to get set up.

[rg-install]: http://guides.railsgirls.com/install

### Forking the ideas app

Let's get you your very own copy of the project, so you can keep your changes
safe and stored somewhere.

If you're not already viewing this on the rails girls GitHub page, visit
https://github.com/railsgirlswgtn/ideas-app in your browser.

Up in the top right hand corner of the page, you'll see a "Fork" button - go
ahead and click that (you'll need to be signed in to GitHub).

After that's done its thing, you should have your very own copy of the ideas
app on your GitHub profile - yay open source 🎉

### Getting the code

Now that you've got your own copy, it's time to get it on to your computer.

We're going to do something called "cloning" - which means getting a copy of
the repository (this thing your forked is called a repository - a bucket into
which you can pour your beautiful code and internet schemes).

To clone the repository, in your terminal (Windows folks: use "git bash"), run
the following command (substituting in your github username):

    $ git clone https://github.com/\<github username\>/ideas-app

This is telling git, the thing which manages the repository, to go off and see
what's at that URL and if it looks about right then download it to your
machine.

If it does look right, it'll put it into a new folder with the same name as the
repository - in this case, it will be "ideas-app"

Once it's done, go ahead and cd (change directory) into the new folder with the
following command:

    $ cd ideas-app

> heads up and/or pro tip: if you ever want to figure out where on your
> computer you are when you're using this terminal, you can type `pwd` (print
> working directory) and it will tell you the path to the current directory.
> Then if you need to, you can find it with the visual file browser or some
> other program, like a text editor. Handy.

### Setting up the app

With ruby/rails installed, the code forked and cloned, it's time to start
turning things on.

If it's the first time you've run this app on your computer, it probably wont
have a database or any installed gems yet. That's cool - this is part of the
usual routine of setting up rails apps.

#### Installing the gems

First of all, let's make sure all of the gems are installed (gems are projects
that other people have written and uploaded to the ruby "app store" - rubygems)

    $ bundle install

> Note: if you run into an error here that says something like bundle isn't a
> command or it isn't available, try running `gem install bundler` and
> repeating the `bundle install` - sometimes bundler (the thing that helps us
> manage our gems) isn't installed with Ruby

> If you see a different error related to `pg`, grab a coach and they can help
> out. This is pretty common, but it's a lengthy explanation so it might take
> up the whole readme

#### Setting up the database

Once that has finished, we're going to run a few commands to set up the
database on your computer.

> Don't worry if that doesn't mean much right now - there'll be a workshop on
> it during the weekend (but by all means ask questions in the mean time if
> you're interested!)

We'll start by creating it. Run this in your terminal:

    $ bundle exec rails db:create

That should show you some output that looks a bit like this:

```
~/git/railsgirls/ideas-app >bundle exec rails db:create
Created database 'ideas_app_development'
Created database 'ideas_app_test'
```

> Notice that it created _two_ databases - what's going on here?
> When we write rails applications, we often write automated tests for them,
> and sometimes those tests involve manipulating data and the database needs to
> be wiped clean quite frequently. Rather than interfering with our development
> one, Rails supports having a database specifically for this test
> "environment" (the `test` part of `ideas_app_test`).

That's good, now that we have a place to store data, we need to give it some
information about how it's going to be storing it.

Run the following command:

    $ bundle exec rails db:schema:load

The application keeps track of how models and attributes are supposed to be
stored along the way in something called a schema file.

> There'll be a workshop on this during the weekend as well, but again - feel
> free to ask questions!

## Starting your app

Now that it's all set up, you can start the server:

    $ bundle exec rails server

and if all goes well, you should see some output like this:

```
~/git/railsgirls/ideas-app >bundle exec rails server
=> Booting Puma
=> Rails 5.1.4 application starting in development
=> Run `rails server -h` for more startup options
Puma starting in single mode...
* Version 3.10.0 (ruby 2.3.1-p112), codename: Russell's Teapot
* Min threads: 5, max threads: 5
* Environment: development
* Listening on tcp://0.0.0.0:3000
Use Ctrl-C to stop
```

Which means it started successfully! Now you can visit http://localhost:3000
and see your very own app running

#### Running tests

To run the suite of automated tests, run:

    $ bundle exec rspec

