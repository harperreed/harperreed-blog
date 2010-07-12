require 'tidy'

Tidy.path = '/usr/lib/libtidy.so' # or where ever your tidylib resides

xml = Tidy.open(:show_warnings=>true) do |tidy|

    tidy.options.tidy_mark = false 
    tidy.options.show_body_only= true
    tidy.options.wrap = 0

    outdir = "_badhtml/"
    indir = "_goodhtml/"
    contains = Dir.new(outdir).entries


    contains.each do |filename|
        if filename == ".." || filename == "."
        else
            puts outdir+filename
            f = File.open(outdir+filename, "r") 
            data = ''
            f.each_line do |line|
                data += line
            end
            jekyll_file = data.split('---')
            yaml_frontmatter= jekyll_file[1]
            html = jekyll_file[2]
            xml = tidy.clean(html)
            jekyll_file = "---"+yaml_frontmatter+"---\n"+xml
            output_file = File.new(indir+filename, "w")
            output_file.write(jekyll_file)
            output_file.close

        end
    end


end
#html = 'Body <li>asd</li>'


# remove excess newlines
#nice_html = nice_html.strip.gsub(/\n+/, "\n")
