This app is intended as both a blog and working lab.

170412

blog parts:
=================================================================
blog.md:    markdown file, in the repo, named "blog.md", copy in app/assets/blogs
snippets:   github gists || ```formated markdown text``` || screenshot image
images:     linked to 'blog.md' residing in cloudinary folder named: post.title
videos:     linked to 'blog.md' residing in swt youtube channel named: post.title-video(#)

columns in Post model: 

repo:       url of github repo, named: post.title
date:       date
title:      lower cased sluggified "this-is-a-title", first thing in blog.md
outline:    should be a standard section at top of blog.md
body:       text or markdown file, in ~assets/blogs/~
sections:(has_many) snippet, image, video, link, gist
summary:    short paragraph to sum it up
tweet:      140 character version of summary to tweet
refs:       relevant links

=================================================================
170411

Blog
I want to be able to start little research efforts and save them consistently, return to enhance, and eventually publish.
Need basic post parts in databse, which I have in the posts and post_sections models.

Need a system for naming, dating, placeholder within blogs views
Public/private setting, so that I can control what is publically viewable, set still navigate quickly to ongoing projects.

As my understanding increases, I will return to stalled projects to push them further towards publishing.

I have all the parts
I have post_section
I could use a type of post_section to create rendered code snippet
=================================================================
The blog index would have:
date
    title
        summary

blog category index would show (grouped by tags):
    by technology, tool, tips, language, framework

=================================================================
blog show page has:
    all blog parts
    conventional format to follow, unless the subject requires deviation
    title
    outline
    post_bodies
    summary
    comments with self rating (visitor identifies as new, conversant, experienced or pro)
=================================================================

new blog post
form saves:
    title
    outline
    summary
form has link, to "Add a post_section" form.
new post_section form:
    has all fields
    choose format
        if code, trigger 'prettify' method
        if video, trigger method to embed url in iframe
        if formatted text, trigger markdown formatting process
    on save, redirect_to @post
then, 
you 'edit' the post again, to either update title, outline or summary
or, you 'add post section'

post_tag
comment_tag







170410

            | about    | services  | projects  | blog     | wiki      | future    | ask       |
| ----------|---------:| ---------:| ---------:|---------:| ---------:| ---------:| ---------:|
| static    |---------:| ---------:| ---------:| --------:| ---------:| ---------:| ---------:|
| rails     |---------:| ---------:| ---------:| -x------:| ---------:| ---------:| ---------:|

about: identity & gist of what we do, link to about brad smith, link to resume
services: top level links to core services, break out as needed
    web development
    data management
    point of sale data integration
    content management
    data mashup and analysis

projects: top level links to current top projects, break out as needed
    diet-planner-v6
    job-crm-v1
    bradsmithtrio.com
    smithpiano.com
    zoning data
    cambridge crash data
    goal manager: goals, projects, milestones, tasks===decide, act, record, analyze
    wiki app: all bookmarks end up here; all new functionality lands here

blog: technical blog
    piano-search cli
    sinatra piano student app
    rails diet planner app
    links to new functionality in wiki app


    db: title; outline; body1-?; image1-?; video1-?; snippet1-?; summary;
        form has: 
            title, outline, summary
            buttons to add multiple body, image, video, snippet

wiki: knowledge base
    book
    bookmark
    mentor
    learnpath


170409
things to include: 

Bootstrap style
responsive design
search 

Flash messages
Navbars
partials with convention
nested forms
multi-part forms, doc upload
access google drive, see BattleDecks app videos
ajax query callback 
lodash templates
handlebars templates
javascript
react
JSON data
api data
testing / rspec for all controllers, models, views and features
seed file

store, retrieve and read PDFs
store, retrieve and read Word, Excel, PowerPoint
store, retrieve and view image, video, YouTube playlist, SCRIBD collection
email with mailgun
oauth
devise
cancan
pundit
home made auth

integration of external API data, to produce new insights on summaries of native app data
live on Heroku
well documented
blogs on key points