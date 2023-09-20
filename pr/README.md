## Notes

# Current setup
- Due to breaking changes to styleguide components as part of the sho.com refresh, we're moving this project to 'frozen' state. This means that instead of loading the css and js bundle from the project folder (which can be recompiled at will), it will load the frozen aka last-stable  version of the css and js served statically from s3. Should a situation arise where you need to edit the css or js, you can of course change things back to how they were, and triage the fallout from the refreshed component styles tainting the pr site look and feel, but we're optimistic that won't be neccesary.

# Previous stable setup
- Because of the difficulty of testing on localhost:3333, that webpack dev server environment is currently not advised for use. However it is not fully deprecated, the code is still there, so see Previous Setup below for details if needed.
- At this time, it is best to view/work on the screening rooms at localhost:8080, and to manually run `npm run build` to generate new files after making code changes.

# Previous experimental setup

- Type "npm start" in the terminal in the /www/pr directory to start the PR dev environment.
- The dev server is running at localhost:3333; the browser will not auto-open this page, so you will have to navigate there yourself at this time.
- At localhost:3333 there is currently an index file with links to the three different asset collection sites and a version of the "single page" view.
- These are development versions running on webpack-dev-server, so everything is rendering in the browser; there are no JS files being written to the file system during development. An exception is styles.css which is written into the /dist folder during development (while npm start is running and changes are being made) so that it may be used outside the app, in the authentication JSP flow.
- Running "npm run build" will write JS files into the /dist folder for production. These are the files that the app JSP (views/index.jsp) is linking to. Do not commit changes without running a build - localhost:8080, dev, qa, prod...all of these use the /dist files created by running a build.
- Source maps are currently broken for CSS; sorry.
- The "production" environments can be visited by going to localhost:8080/pr/showtime/app and /pr/fyc/app.


