<div align="center">
# Scottish Gems
## Created By Jamie Connell
### Student Of Code Institute 2024
</div>

\*Insert am I responsive image when ready

### Introduction

Scottish Gem is a site created as a place people can share their recommendations of places around Scotland which are not common knowledge. Places that brought happiness and amazement to those who shared.

The users this site is aimed at are as follows:

- People who are local to an area and have a day off.
- People who are visiting Scotland on holiday.
- The Local population who are looking to explore their own country more.

## Table of contents

- [Project Goals](#Project-Goals)
- [Agile Development](#Agile-Development)
 	- [User Stories](#User-Stories)
- [User Experience](#user-experience-ux-design)
 	- [Wireframes](#Wireframes)
 	- [Navigation](#Navigation)
 	- [Data Schema](#Data-Schema)
 	- [Color Scheme](#Color-Scheme)
 	- [Google API](#Sharing-Gem-With-aid-from-google-API)
 	- [Color Scheme](#Color-Scheme)
 	- [Typography](#Typography)
- [Features](#Features)
 	- [Homepage](#Home-Page)
  
</details>


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
Plaese see below a Navigational Flow Chart showing what was aimed for when creating the website.

<details>
<summary> Flow Chart Diagram </summary>

![Flow chat diagram](https://raw.githubusercontent.com/GreenNinjaBoy/Scottish-Gems-PP4/main/static/README_images/flow_chart.webp)

</details>

**Data Schema**

** Insert Image Here**

**Sharing Gem With aid from google API**

When a user is looking to share a "Gem" that they have discovered they can do so with the aid of Google's Plcae API and autocomplete features.
When a use begins to input a place that they have discovered google will begin to display suggestions to the user and when the user clicks on the place that
they have discovered. Then with the aid of google autocomplete feature the full address and post/zip code is automatically filled in leaving with the user to upload their own images and which region they were in when they discovered the gem.

** insert GIF here when function is fully working **
** insert flow of when is being done**


**Color Scheme**

The color palette below was generated with the help of [Coolors](https://coolors.co)

![Color Palette Image](https://raw.githubusercontent.com/GreenNinjaBoy/Scottish-Gems-PP4/main/static/README_images/color-palette.webp)

The color scheme was chosen to give the user a more authentic Scottish experience as these colors are generally associated with Scotland.

**Typography**
The typography used for the project was produced from google fonts and the chosen text was "Merriweather". Again this was used to give that more authentic Scottish look and feel to the user.

![Google fonts image](https://raw.githubusercontent.com/GreenNinjaBoy/Scottish-Gems-PP4/main/static/README_images/google_fonts_image.webp)

## Features

#### **Home Page**

The home page is presented to the user with posts already shown by other users and user can click on these posts to view it in more detail. If a user has not got a sign in then the only items available to them on the navbar are "home" "select by region" and the sign in button.

**Navigation Bar**

The navigation bar is comprised of two views. One view is displayed to a user who is either no to the site or has not yet signed in. The second view is for the users who have signed onto the page and is then presented with two options.

Navigation bar when user is not signed in:

![navigation bar pre user sign in](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/navbar-pre-sign-in.webp.png?raw=true)

Navigation bar when a user is signed in.

![](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/navbar-post-sign-in.webp.png?raw=true)

**Login**
When a user decides to log in they are presented with the following screen.

<details>
<summary> Login Display </summary>

![Log in display](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/login_view.webp.png?raw=true)

</details>

**Signup**
If a user does not already have an account they can create one by clicking the link shown in the previous image which will bring them to the following page.

<details>
<summary> SignUp Display </summary>

![Signup Display](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/signup_view.webp.png?raw=true)

</details>

**Log Out**
When a user decides to Log Out they can click the "signout" button on the navigation bar and is then presented with the following screen

<details>
<summary> Log Out Display </summary>

![Log Out Display](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/logout_view.webp.png?raw=true)

- Please note that the Log Out display has has slight style changes since this photo was uploaded.

</details>

**User Messages**

When ever a user completes a task they are met with a brief message. These Messages can be seen down below:

<details>
<summary> Successful Login / Signup </summary>

![Successful Login](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/successful_login.webp.png?raw=true)

</details>
<details>

<summary> Successful Log Out </summary>

![Successful Log Out](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/successful_signout.webp.png?raw=true)

</details>
<details>

<summary> Successful Share Gem </summary>

![Successful add Gem](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/successful_add_gem.webp.png?raw=true)

</details>
<details>

<summary> Successful Delete Gem </summary>

![uccessful Delete Gem](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/successful_delete_gem.webp.png?raw=true)

</details>
<details>

<summary> Successful add to favorites </summary>

![Successful add favorites](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/successful_add_favorite.webp.png?raw=true)

</details>
<details>

<summary> Successful remove from favorites</summary>

![Successful Remove From Favorites](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/successful_remove_favorite.png?raw=true)

</details>
<details>

<summary> Successful add comment</summary>

![Successful add comment](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/successful_add_comment.webp.png?raw=true)

</details>
<details>

<summary> Successful edit comment</summary>

![Succseeful Edit Comment](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/successful_edit_comment.webp.png?raw=true)

</details>
<details>

<summary> Successful delete comment</summary>

![Successful Delete Comment](https://github.com/GreenNinjaBoy/Scottish-Gems-PP4/blob/main/static/README_images/successful_delete_comment.webp.png?raw=true)

</details>

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

# Known Bugs

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
- [Eightshapes Contrast Grid](https://contrast-grid.eightshapes.com/) - to visualise the contrast accessibility of the whole site colour palette.
- [Code Institute’s Python Linter](https://pep8ci.herokuapp.com/) - for automated testing of the Python code.
- [JSHint](https://jshint.com/) - to test the JavaScript code.
- [W3C Markup Validator](https://validator.w3.org/) - to test the HTML code.
- [W3C CSS Validator](https://jigsaw.w3.org/css-validator) - to test the CSS code.

### APIs Used

- [Google Places API](https://developers.google.com/maps/documentation/places/web-service/overview) - to get details and photos from place searches.

### Python Packages Used

- [django-allauth](https://docs.allauth.org/en/latest/index.html) - for user authentication.
- [gunicorn](https://gunicorn.org/) - as the HTTP server that allows Django to run on Heroku.
- [psycopg2](https://pypi.org/project/psycopg2/) - as the PostgreSQL database adapter for Python.
- [dj_database_url](https://pypi.org/project/dj-database-url/) - to allow the use of the `DATABASE_URL` environment variable inside Django.
- [Coverage.py](http://coverage.py/) - to measure test coverage of the Python code.

# Testing

## Code Valitdation

### HTML

The HTML for the Scottish Gems Project was put through the [W3C Markup Validation Servie](https://validator.w3.org/) and the results can be seen below.

<details>
<summary>W3C Validator Results</summary>

![HTML Validator Results](https://raw.githubusercontent.com/GreenNinjaBoy/Scottish-Gems-PP4/main/static/README_images/html-validator-checker.png)

</details>

### CSS

The CSS for the Scottish Gems Project was put through the []() and the results can be seen below.

<details>
<summary>W3C CSS Validator Results</summary>

![HTML Validator Results](https://raw.githubusercontent.com/GreenNinjaBoy/Scottish-Gems-PP4/main/static/README_images/w3c_css_validator_results.png)
</details>

## Python

### Unit testing

Unit testing was created and carried out based on the following: forms.py, models.py and views.py.
Each test is stored within a directory within this scottish_gems app entitled "tests" and imageas of these results can be seen below.

<details>
<summary>terminal command to run test: python3 manage.py test scottish_gems.tests.test_forms</summary>

![forms.py unit test reults](https://raw.githubusercontent.com/GreenNinjaBoy/Scottish-Gems-PP4/main/static/README_images/forms.py_unit_test.png)

</details>
<details>
<summary>terminal command to run test: python3 manage.py test scottish_gems.tests.test_models</summary>

![models.py unit test reults](https://raw.githubusercontent.com/GreenNinjaBoy/Scottish-Gems-PP4/main/static/README_images/models.py_unit_test.png)

</details>
<details>
<summary>terminal command to run test: python3 manage.py test scottish_gems.tests.test_views</summary>

![views.py unit test reults](https://raw.githubusercontent.com/GreenNinjaBoy/Scottish-Gems-PP4/main/static/README_images/views.py_unit_test.png)

</details>

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

## Manual Testing

Manual Testing was done to test that each feature/function worked as it should and also to ensure that only 
the user who was the 'Author' of either a gem being shared or a comment who could either have the ability to delete or edit what they have shared.
The results of this can be seen below.

## Nav Bar Testing
<details>
<summary>Manual Testing of Nav Bar Features</summary>
	
| Feature  |Desired Outcome  |Actual Outcome | Test Done to achieve Actual Outcome
|--|--|--|--|
| Nav Bar (when user not signed in)  | Only The home button, select a region button and log in button are displayed.  | The Actual outcome is the same as the Desired Outcome.  | Ensured no users were signed in and checked nav bar for display.
|Nav Bar (when User is singed in)| New options are presented to user to view posts they have marked as their favorites and also to share their own gems they have discovered.|The Actual outcome for this is the same as the desired outcome. |Signed in as a user and checked the nav bar display to ensure additional options were visible.
|Log In Button on navbar| When clicked the user is the redirected to the desired "login" html page. | When the user click this button they are redirected to the "login html page.| Ensured no user was logged in and clicked the login button on navbar.
</details>

# Deployment

**Creating The Repository**

The repository was created using Github. as a student this was done using a template provided by Code Institute.
To do this the following steps were taken:

- On the browser head over to the [Code Institute Template](https://github.com/Code-Institute-Org/p3-template).
- Click on the green "Use this template button".
- Click on "create a new repository".
  ![Create from template](https://github.com/GreenNinjaBoy/Story-Time-Adventures-PP3/blob/main/assets/readme-images/pp3-create-repository-image-1.png?raw=true)
- The user will be taken to a new page to create the repository.
- In the box titled "repository name" enter an appropriate name (for this project Scottish-gems-PP4 was used).
- There is an optional description box if you wish to give a bit more detail to your repository.
- Then Click on the green "create repository" and Github will create the new repository.
  ![create from template 2](https://github.com/GreenNinjaBoy/Story-Time-Adventures-PP3/blob/main/assets/readme-images/pp3-create-repository-image-2.png?raw=true)

**Cloning the Repository**

- Github can also be used to clone a repository so that the code can be altered and pushed back to the main repository using a different IDE.
  - This can be done by using the following steps.

1.  In the " Scottig-Gems-PP4" repository, select the green "code" tab.
2.  Select HTTPS in the dropdown menu.
3.  Copy the URL under HTTPS.

![clone repository 1](https://github.com/GreenNinjaBoy/Story-Time-Adventures-PP3/blob/main/assets/readme-images/pp3-clone-repository-image-1.png?raw=true)

4. Open the IDE that you are working from for example [CodeAnywhere](https://app.codeanywhere.com/).
5. Sign in using your Github details.

![codeanywhere sign in](https://github.com/GreenNinjaBoy/Story-Time-Adventures-PP3/blob/main/assets/readme-images/cloning-repository-image-2.png?raw=true)

6. Click on the create new workspace button.

![create workspace image](https://github.com/GreenNinjaBoy/Story-Time-Adventures-PP3/blob/main/assets/readme-images/cloning-repository-image-3.png?raw=true) 7. Paste copied HTTPS and click create (Codeanywhere will now generate the virtual IDE).
![create workspace image 2](https://github.com/GreenNinjaBoy/Story-Time-Adventures-PP3/blob/main/assets/readme-images/pp3-clone-repository-image-4.png?raw=true)

8.  Once IDE has Loaded create inital index.html page and add test text.
9.  Once test text is added press `Ctrl + S` to save.
10. Click terminal tab at top of screen and click new terminal.
11. Once new terminal has opened test that content is being pushed back to github.
12. In the terminal type `git add .` and press enter (this will add all new content).
13. Then type `git commit -m "add test text"` and press enter (this lets anyone seeing your commits know what you have done).
14. Once you have done that type `git push` and press enter (this will push all changes made to the github repository).
15. Navigate to github.
16. Choose the repository you were working on.
17. Check the changes have been successfully pushed.

- **Note**
  - If for what ever reason you find yourself switching between IDE's please make sure that the first command in your terminal is **"git pull"** as this will pull
    any changes that you have made using other IDE's.

**Forking The Repository**

- Github can also be used to fork a repository. - This can create a copy of the repository which can be edited without effecting the main repository branch. - The steps to fork the repository can be done as follows: - When in the " Story-Time-Adventures-PP3" repository click on the "Fork" tab located at the top right hand corner. - Click on "create a new fork" - You will be sent to another page to name your forked repository. - Once Named click create fork and you will have a copy of the repository that you can now access and change without affecting the original main repository.
<details>
<summary> Fork Image 1 </Summary>

![Fork Image 1](https://github.com/GreenNinjaBoy/Star-Wars-Trivia-PP2/blob/main/assets/readme-images/fork-image-1.png?raw=true)

</details>
<details>
<summary>Fork Image 2 </summary>

![Fork Image 2](https://github.com/GreenNinjaBoy/Star-Wars-Trivia-PP2/blob/main/assets/readme-images/fork-image-2.png?raw=true)
\*Please note that the images taken were from a friends Github repository who consented to the use of these images for educational purposes.

</details>

## Setup Google Maps/Places API

To set up the Google Maps API
follow the steps outlined in the Google documentation, to:

1. Create a Google Cloud account
2. Create a project
3. Get a Google Maps API key
4. Enable the Maps API and Places API

## CodeInstituteSQL

- Use the following [link]() to access code institutes SQL page.
- Enter you email addrexx.
- You will then be emailed a link which when opened will give you all your details to set up you r database

## **Deploying Using Heroku**

The Scottish-Gems-PP4 repository was deployed using [Heroku.](https://id.heroku.com/login)

The following steps were used:

- Login or create an account with [Heroku](https://id.heroku.com/login)
- On the dashboard click on the "Create new app."
- Write a name for the app being deployed and choose your region and click "Create App".
- Add build pack scripts, the one used for this project was:
  - Python
- Connect your Heroku with your GitHub account and select the repository you are working on.
- In the ‘Settings’ tab, click on 'Reveal Config Vars’.
- Enter the details for these Variables (for this particular projectneed these variables in the ‘env.py’ file for local use):
- CLOUDINARY_URL
- DATABASE_URL (from [Code Institute]())
- GOOGLE_MAPS_API_KEY (to ensure the add gem funtionallity works correctly)
- SECRET_KEY (from Django)
- Then at the bottom of the deployed tab, you can either choose to deploy your repository manually or have the system do it for you automatically.

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

## Acknowledgements

This was my third project that was created and developed for portfolio as a student of [Code Institute](https://codeinstitute.net/) currently undertaking their course in Full Stack Software Development.

I would like to thank the following for all of the support throughout the development phase.

- The Code Institute community, including fellow students and staff.
- My family, My friends and peers who have helped during the testing phase and provided valuable feedback.
- My Mentor lauren-nicole Popich for her continuing advice and support during the development process. I can honestly say without her knowledge and guidence I would not be at the stage I am at now

Jamie Connell Code Institute Student 2023
