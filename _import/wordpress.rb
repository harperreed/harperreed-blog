require 'rubygems'
require 'sequel'
require 'fileutils'
require 'yaml'

# NOTE: This converter requires Sequel and the MySQL gems.
# The MySQL gem can be difficult to install on OS X. Once you have MySQL
# installed, running the following commands should work:
# $ sudo gem install sequel
# $ sudo gem install mysql -- --with-mysql-config=/usr/local/mysql/bin/mysql_config

module Jekyll
  module WordPress

    # Reads a MySQL database via Sequel and creates a post file for each
    # post in wp_posts that has post_status = 'publish'.
    # This restriction is made because 'draft' posts are not guaranteed to
    # have valid dates.
    QUERY = "select post_title, post_name, post_date, post_content, post_excerpt, ID, guid from nata3_posts where post_status = 'publish' and post_type = 'post'"

    def self.process(dbname, user, pass, host = 'localhost')
      db = Sequel.mysql(dbname, :user => user, :password => pass, :host => host)

      FileUtils.mkdir_p "_posts"

      db[QUERY].each do |post|
        # Get required fields and construct Jekyll compatible name
        id = post[:ID]
        tag_q = "SELECT slug FROM nata3_posts, nata3_term_relationships, nata3_terms, nata3_term_taxonomy where nata3_posts.ID = nata3_term_relationships.object_ID and nata3_term_relationships.term_taxonomy_id = nata3_term_taxonomy.term_taxonomy_id and nata3_terms.term_id = nata3_term_taxonomy.term_id and nata3_posts.ID = '"+id.to_s()+"'"
        tags_ar = Array.new
        db[tag_q].each do |tag|
            tags_ar.push(tag[:slug])
        end
        tags = tags_ar * ", "
        title = post[:post_title]
        slug = post[:post_name].gsub(/\//,'_')
        date = post[:post_date]
        content = post[:post_content]
        name = "%02d-%02d-%02d-%s.markdown" % [date.year, date.month, date.day,
                                               slug]

        # Get the relevant fields as a hash, delete empty fields and convert
        # to YAML for the header
        data = {
           'layout' => 'post',
           'title' => title.to_s,
           'excerpt' => post[:post_excerpt].to_s,
           'wordpress_id' => post[:ID],
           'tags' => tags,
           'date' => date,
           'wordpress_url' => post[:guid]
         }.delete_if { |k,v| v.nil? || v == ''}.to_yaml

        # Write out the data and content to file
        File.open("_posts/#{name}", "w") do |f|
          f.puts data
          f.puts "---"
          f.puts content
        end
      end

    end
  end
end
