# Officina Data website

Official name TBD

This contains the articles, content assets, author profiles and source code for the Officina Data website, a research group and practicing data science community at UC.

## Getting Started

To run the website locally, you will need `node` and `npm` to be installed and accessible in your CLI/shell environment.

To set it all up, clone the git repo to your local computer then run `npm install` to download the required dependencies for the site generator. Once that’s done, run `npm start` to spin up a local web server with hot reloading (when you edit content in local files, any open web pages should refresh automatically in your browser).

```
git clone git@github.com:officinadata/website
npm install
npm start
```

## Editing Content

You don’t need a copy of the website running locally to contribute. To publish a new article, make sure you have an author profile present in the `authors` content directory.

Create a new Markdown file in the `articles` directory. Give it a `title`, `summary`, link to your `author` ID and go from there. Add any required images and media files to the `assets` directory before linking to them in your text.

Do all your `git add` and `git commit` stuff with an appropriate commit message describing your changes. Once you’re happy with the state of your work, it’s time to publish.

## Publishing Content

TBD whether to use pull requests or not for review. Anything pushed to the `main` branch on GitHub will automatically build on Netlify. You can either carefully handle editing and polishing presentation in a branch of the site running locally or else play whack-a-mole with pushing to `main` and rebuilding on Netlify for each edit. Either will work fine, just depends on how patient you are and what your preferred editing approach is.

## Templates and Site Metadata

Coming soon.

## Styleguide and Additional Resources

Coming soon.
