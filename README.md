# Scottish Gems

\*Insert am I responsive image when ready

### Introduction

Scottish Gem is a site created as a place people can share their recommendations of places around Scotland which are not common knowledge. Places that brought happiness and amazement to those who shared.

The users this site is aimed at are as follows:

- People who are local to an area and have a day off.
- People who are visiting Scotland on holiday.
- The Local population who are looking to explore their own country more.

### Project Goals

The goals that I have set out for the site's functionality are:

- User authentication: Users would have the ability to create an account, sign in to their account.
- Adding places: Once a user had an account then permission would be granted for them to add in "Scottish Gems" that they have discovered.
- Commenting: Once a user had an account, then permission would be granted for them too add or remove comments to other "Gems" listed by other users.
- Favoriting: Once a user had an account, then permissions would be granted for them to add gems to their "favorites list".

### Agile Development

**User Stories**
A kanban board in Github Projects was used for the Agile development process - see the board [here]().
'Epics were broken down into 'user Stories', which were further broken down into 'Tasks'.

### User Experience (UX Design)

**Wireframes**

Balsamiq Wireframes were used to map out the design of the application.

** Insert Images Here **

**Navigation**

** Insert Navigation here**

**Data Schema**

** Insert Image Here**

** Google Maps API JavaScript Flow Diagrams**

One of the biggest challenges that was faced while building this site was the implementation of the Google Places API and also Google Places photos.

I took Inspiration from another user project on this called [Magical Places](https://github.com/timgoalen/magical-places-london/tree/main) and looking at their documentation it was clear that the only way to achieve what I was aiming to do was design a JavaScript System that used Google place_id stored in the database to send a new PlaceDetails request every time the page is loaded to get the photos, and add them to the page for the user.

**Add a Gem functionality - 'add-gem-form.js**

The search field in the create_gem.html page uses the Google Autocomplete class and Place Details service.

**Add FlowChart here**

**Home page - 'script.js'**
The places objects are then sent to the HTML template as a JSON array of objects. JavaScript picks them up and uses the google_place_id to send to Google Places API for photos. It then re-attaches each newly fetched photo to the corresponding place object using the id as a reference.

**Insert the flowchart here**

**Color Scheme**

** Insert image here**
The color scheme was chosen to give the user a more authentic Scottish experience as these colors are generally associated with Scotland.

**Typography**
The typography used for the project was produced from google fonts and the chosen text was "Merriweather". Again this was used to give that more authentic Scottish look and feel to the user.

### Features

**Home Page**

The home page is presented to the user with posts already shown by other users and user can click on these posts to view it in more detail. If a user has not got a sign in then the only items available to them on the navbar are "home" "select by region" and the sign in button.

**Navigation Bar**

The navigation bar is comprised of two views. One view is displayed to a user who is either no to the site or has not yet signed in. The second view is for the users who have signed onto the page and is then presented with two options.

Navigation bar when user is not signed in:

![navigation bar pre user sign in](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/navbar-pre-sign-in.webp.png?raw=true)

Navigation bar when a user is signed in.

![](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/navbar-post-sign-in.webp.png?raw=true)

**Share Your Gem**
The original concept for this page was that a user could input their information into a form. However after a lot of trial and error it was decided that this would not be user friendly. And as previously mentioned inspiration came form another students similar project ([Magical Places](https://github.com/timgoalen/magical-places-london/tree/main)) and the can now add a place by simply searching for their gem in the search field which by powered by Google Places Autocomplete to suggest existing gems. Once the user clicks on a suggested place, the hidden form is automatically filled in by JavaScript, from the data provided by the Google Places API.

**Insert Image here**

notes:

- The ability for a user to edit or delete a Place that they have added wasn't implemented:
  - As the form data is not user-generated, and rather supplied by the Google Places API, there is a low chance or user error that would justify ‘edit’ functionality.
  - If the user had the ability to delete places that were already commented on, other users would lose their comments and lose access to the place if it was in their favorites list.

**Favorites**
The ability for a user has been split into two main parts. Users can see which posts they have selected as their favorites from the main landing page. Or the user can select the "favorites" tab within the navigation tab and they will be brought to a page where they are able to view posts that they have marked as their favorites. The user can decided to set a favorite post from the home page and unfavorite from either the home page or within their favorites page.

- Note: If a post is marked as a favorite and that posts creator decides to delete the post. Then unfortunately it will be removed from the users favorite list.
- This could be something to look at in future development so that the user can still access deleted posts within their favorites directory.

Posts on main home page is user has not selected it as a favorite.

<details>
<summary> Favorites section within navbar </summary>

![favorites section within navbar](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/favorites-section-navbar.webp.png?raw=true)

</details>
<details>
<summary> If post is not a favorite shown on homepage </summary>

![if a post is unfavored within the main page](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/un-foavorited-post.webp.png?raw=true)

</details>
<details>
<summary> If a post is a favorite shown on hompage </summary>

![if a post has been set as favorite.](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/favorited-post.webp.png?raw=true)

</details>
<details>
<summary> Users favorites shown on the "favorites.html page" </summary>

![favorites.html page](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/user-favorites-page.webp.png?raw=true)

</details>

**Select by Region**

The select by region function was put in place as this app was intended to cover the whole of Scotland. This would make it easier for the user to filter the Gem Posts in the home page to the region that they were interested in. This feature remains on the navigation bar for users who are and are not signed into the site.

<details>
<summary> Region selection from dropdown menu </summary>

![Region selection dropdown menu](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/region-selection-dropdown.webp.png?raw=true)

</details>

## Technologies Used

- Languages:
  - Python
  - JavaScript
  - HTML5
  - CSS3
- Framework:
  - Django
- Database:
  - PostgreSQL
- [GitPod](https://gitpod.io) - as the code editor.
- [Git](https://git-scm.com/) - for version control, using the Gitpod IDE.
- [GitHub](https://github.com/) - for storing the project.
- [CodeInstituteSQL]() - PostgreSQL as a service. (Note: This Replaced ElephantSQL)
- [Heroku](https://www.heroku.com/) - to deploy the application.
- [Chrome Developer Tools](https://developer.chrome.com/docs/devtools/) - to test responsiveness, edit CSS code, debug JavaScript and generate Lighthouse reports.
- [Google Fonts](https://fonts.google.com/) - to import the site font, ‘Oswald’.
- [Balsamiq](http://balsamiq.com/) - to create the wireframes.
- [Font Awesome](https://fontawesome.com/) - for all the site icons.
- [Coolers](https://coolers.co/) - for an overview of the chosen colour palette.
- [Am I Responsive](https://ui.dev/amiresponsive) - to create the responsive demo image at the top of the Readme.
- [Excalidraw](https://excalidraw.com/) - to create the navigation diagram.
- [Lucidchart](https://www.lucidchart.com/pages/) - to create the database schemas.
- [Quicktime](https://support.apple.com/en-gb/guide/quicktime-player/welcome/mac) - to record the screen capture for GIFs in the readme.
- [Ezgif](https://ezgif.com/) - to convert the Readme GIFs.
- [Quillbot](https://quillbot.com/) - for rephrasing demo comments.
- [WebAIM WAVE](https://wave.webaim.org/) - for automated testing of accessibility.
- [WebAIM Contrast Checker](https://webaim.org/resources/contrastchecker/) - to check colour contrast accessibility.
- [Eightshapes Contrast Grid](https://contrast-grid.eightshapes.com/) - to visualise the contrast accessibility of the whole site colour palette.
- [Code Institute’s Python Linter](https://pep8ci.herokuapp.com/) - for automated testing of the Python code.
- [JSHint](https://jshint.com/) - to test the JavaScript code.
- [W3C Markup Validator](https://validator.w3.org/) - to test the HTML code.
- [W3C CSS Validator](https://jigsaw.w3.org/css-validator) - to test the CSS code.

### APIs Used

- [Google Maps JavaScript API](https://developers.google.com/maps/documentation/javascript/overview) - to run the home page map.
- [Google Places API](https://developers.google.com/maps/documentation/places/web-service/overview) - to get details and photos from place searches.

### Python Packages Used

- [django-allauth](https://docs.allauth.org/en/latest/index.html) - for user authentication.
- [gunicorn](https://gunicorn.org/) - as the HTTP server that allows Django to run on Heroku.
- [psycopg2](https://pypi.org/project/psycopg2/) - as the PostgreSQL database adapter for Python.
- [dj_database_url](https://pypi.org/project/dj-database-url/) - to allow the use of the `DATABASE_URL` environment variable inside Django.
- [Coverage.py](http://coverage.py/) - to measure test coverage of the Python code.

# Testing

## Python

### Testing with Pep8

All python code was tested using Code Institutes [Python Linter Tester](https://pep8ci.herokuapp.com/#). You can see images of the results below

<details>
<summary>admin.py Pep8 results</summary>
	
![admin.py_Pep8 results](https://raw.githubusercontent.com/GreenNinjaBoy/Scottish-Gems-PP4/main/static/README_images/admin.py_test.webp)

</details>
<details>
<summary>app.py Pep8 results</summary>

![app.py test image](https://raw.githubusercontent.com/GreenNinjaBoy/Scottish-Gems-PP4/main/static/README_images/app.py_pep8_image.webp)

</details>
<details>
<summary>asgi.py Pep8 results</summary>

![ashi.py Pep8 image](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/asgi.py_test_image.png?raw=true)

</details>
<details>
<summary>forms.py Pep8 results</summary>

![forms.py Pep8 image](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/forms.py_pep8_image.webp?raw=true)

</details>
<details>
<summary>gem_place Pep8 results</summary>

![gem_place Pep8 image](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/gem_place_test_image.webp?raw=true)

</details>
<details>
<summary>models.py Pep8 results</summary>

![models.py Pep8 image](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/models.py_pep8_image.webp?raw=true)

</details>
<details>
<summary>settings.py Pep8 results</summary>

![settings.py Pep8 image](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/settings.py_test_image.png?raw=true)

</details>
<details>
<summary>urls.py Pep8 results</summary>

![urls.py Pep8 image](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/urls.py_pep8_image.webp?raw=true)

</details>
<details>
<summary>views.py Pep8 results</summary>

![views.py Pep8 image](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/views.py_test_image.webp?raw=true)

</details>

## JavaScript

### Testing with JsHint

All JavaScript files were ran through [JSHint](https://jshint.com/). The results can be seen below.

<details>
<summary>add-gem-form.js JSHint results</summary>

![add-gem-form.js test image](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/add-gem-form_jshint_image.webp?raw=true)

</details>
<details>
<summary>back-btn.js JSHint results</summary>

![back-btn.js test image](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/back-btn.js_jshint_test_image.png?raw=true)

</details>
<details>
<summary>comments.js JSHint results</summary>

![comments.js test image](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/comment.js_jshint_test_image.png?raw=true)

</details>
<details>
<summary>messages.js JSHint results</summary>

![messages.js test image](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/messages.js_jshint_image.png?raw=true)

</details>
<details>
<summary>script.js JSHint results</summary>

![script.js test image](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/script.js_jshint_test_image.png?raw=true)

</details>
## Credits

### Content

The original idea for this site was inspired by [Magical Gems](https://github.com/timgoalen/magical-places-london/tree/main) who created a similar project around the main London Area.

All photos come from the Google Places API.

### Code

The following docs and tutorials were consulted.

**Django**

General Django tutorials:

- [Django Girls Tutorial](https://tutorial.djangogirls.org/en/)
- [Django for Beginners](https://djangoforbeginners.com/) [book]

Django ‘favoriting’ functionality:

- [Codemy - Create Blog Like Button](https://www.youtube.com/watch?app=desktop&v=PXqRPqDjDgc)

Django messages:

- [Ordinary Coders](https://ordinarycoders.com/blog/article/django-messages-framework)
- [Simple Is Better Than Complex](https://simpleisbetterthancomplex.com/tips/2016/09/06/django-tip-14-messages-framework.html)

Getting data from a Django model into javascript:

- [Bugbytes](https://www.youtube.com/watch?v=h39eMGWmEV4&t=36s)
- [Official Django docs](https://docs.djangoproject.com/en/4.0/ref/templates/builtins/#json-script)
- [adamj.eu](https://adamj.eu/tech/2020/02/18/safely-including-data-for-javascript-in-a-django-template/)

**Google Maps API/JavaScript**

(Official Google)

- [Places Autocomplete](https://developers.google.com/maps/documentation/javascript/examples/places-autocomplete)
- [Retrieving response data](https://developers.google.com/maps/documentation/javascript/place-autocomplete)
- [Places photos](https://developers.google.com/maps/documentation/javascript/places#places_photos)

(3rd Party)

- W3 Schools - [Google Maps Intro](https://www.w3schools.com/graphics/google_maps_intro.asp)
- Stack Overflow - [close info window when user clicks anywhere on the map](https://stackoverflow.com/questions/10022873/closing-info-windows-in-google-maps-by-clicking-the-map)
