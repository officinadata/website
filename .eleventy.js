const syntaxHighlight = require("@11ty/eleventy-plugin-syntaxhighlight");

module.exports = function(eleventyConfig) {
  // Enable syntax highlighting
  eleventyConfig.addPlugin(syntaxHighlight);

  eleventyConfig.addPassthroughCopy("content/images");
  eleventyConfig.addPassthroughCopy("content/assets");

  // Manually enable collection to aggregate all author profiles in one template
  eleventyConfig.addCollection("authors", (collection) => {
    return collection.getFilteredByGlob("content/authors/*.md");
  });

  // eleventyConfig.addFilter('markdown', function(value) {
  //     let markdown = require('markdown-it')({
  //         html: true
  //     });
  //     return markdown.render(value);
  // });
  //

  eleventyConfig.addLayoutAlias("authors", "authors.html");
  eleventyConfig.addLayoutAlias("article", "article.html");
  eleventyConfig.addLayoutAlias("articles", "articles.html");
  eleventyConfig.addLayoutAlias("page", "page.html");

  return {
    dir: {
      input: "content",
      output: "web",
      includes: "templates",
      layouts: "templates",
      data: "settings"
    },
    htmlTemplateEngine: "liquid"
  }
};
