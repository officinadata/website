const webFeed = require("@11ty/eleventy-plugin-rss");
const syntaxHighlight = require("@11ty/eleventy-plugin-syntaxhighlight");

module.exports = function(eleventyConfig) {
  // Enable Atom web feed with the RSS plugin
  eleventyConfig.addPlugin(webFeed);

  // Enable syntax highlighting
  eleventyConfig.addPlugin(syntaxHighlight);

  // Static media directories get directly copied to output
  eleventyConfig.addPassthroughCopy("content/images");
  eleventyConfig.addPassthroughCopy("content/assets");

  // Treat Eleventy content like a database and collect byline for an article
  eleventyConfig.addLiquidFilter("withAuthors", (bylines, authors) => {
    const authorsInByline = [];

    if (bylines) {
      const bylineList = Array.isArray(bylines) ? bylines : [bylines];

      for (authorId of bylineList) {
        const author = authors.find(candidate => candidate.data.id == authorId);

        if (author) authorsInByline.push(author.data.name);
      }
    }

    return authorsInByline;
  });

  // In case Markdown is needed from other places than .md files
  // This adds it as a template filter which can be used to transform any string
  // eleventyConfig.addFilter('markdown', function(value) {
  //     let markdown = require('markdown-it')({
  //         html: true
  //     });
  //     return markdown.render(value);
  // });

  console.log(webFeed.dateToRfc3339(new Date()))

  // Make feed formatting helpers available in template
  eleventyConfig.addLiquidFilter("atomDateFormat", webFeed.dateToRfc3339);
  //eleventyConfig.addLiquidFilter("absoluteUrl", webFeed.absoluteUrl);
  eleventyConfig.addLiquidFilter("getNewestCollectionItemDate", webFeed.getNewestCollectionItemDate);

  // Set Liquid template engine options.
  // - extname (the file extension for templates)
  eleventyConfig.setLiquidOptions({
    extname: ".html"
  });

  // Bind layout templates to clean naming convention
  eleventyConfig.addLayoutAlias("authors", "authors.html");
  eleventyConfig.addLayoutAlias("article", "article.html");
  eleventyConfig.addLayoutAlias("articles", "articles.html");
  eleventyConfig.addLayoutAlias("page", "page.html");

  // Runs after the build ends
  eleventyConfig.on('afterBuild', () => {
    // Event handling,
  });

  // Finally, return the main config settings
  return {
    dir: {
      input: "content",
      output: "web",
      includes: "templates/partials",
      layouts: "templates",
      data: "settings"
    },
    htmlTemplateEngine: "liquid"
  }
};
