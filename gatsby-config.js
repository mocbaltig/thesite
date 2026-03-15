/**
 * @type {import('gatsby').GatsbyConfig}
 */
module.exports = {
  siteMetadata: {
    title: `thesite`,
    siteUrl: `https://www.yourdomain.tld`,
  },
  pathPrefix: "/thesite",
  plugins: ["gatsby-plugin-image", "gatsby-plugin-sharp"],
};
