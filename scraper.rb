# This is a template for a Ruby scraper on morph.io (https://morph.io)
# including some code snippets below that you should find helpful

 require 'scraperwiki'
 require 'mechanize'
#
 agent = Mechanize.new
#
# # Read in a page
 page = agent.get("https://www.multisportaustralia.com.au/m3/event?c=1&r=6335&e=1")
#
# # Find somehing on the page using css selectors
 p page.at('/html/body/section[2]/div/div[3]/div')
#
# # Write out to the sqlite database using scraperwiki library
 ScraperWiki.save_sqlite(["name"], {"name" => "yann", "occupation" => "software developer"})
#
# # An arbitrary query against the database
# ScraperWiki.select("* from data where 'name'='peter'")

# You don't have to do things with the Mechanize or ScraperWiki libraries.
# You can use whatever gems you want: https://morph.io/documentation/ruby
# All that matters is that your final data is written to an SQLite database
# called "data.sqlite" in the current working directory which has at least a table
# called "data".
