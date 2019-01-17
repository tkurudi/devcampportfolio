3.times do |topic|
Topic.create!(
    title: "Topic #{topic}"
)
end
puts "3 Topics created"


10.times do |i|
Blog.create!(
    title: "My Blog Post #{i+1}",
    body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.
     Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
     when an unknown printer took a galley of type and scrambled it to make a type specimen book.
         It has survived not only five centuries, but also the leap into electronic typesetting,
          remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset 
          sheets containing Lorem Ipsum passages, and more recently with desktop publishing software
           like Aldus PageMaker including versions of Lorem Ipsum.",
           topic_id: Topic.last.id
)
end
puts "10 log posts created"

5.times do |i|
    Skill.create!(
        title: "Rails #{i+1}",
        percent_utilized: 15
    )
    end

    puts "5 skills created"

8.times do |i|
    PortfolioItem.create!(
        title: "Portfolio title: #{i+1}",
        subtitle: "Ruby on Rails",
        body: "It has survived not only five centuries, but also the leap into electronic typesetting,
        remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset 
        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software
         like Aldus PageMaker including versions of Lorem Ipsum",
        main_image:"http://placehold.it/600x400",
        thumb_image: "http://placehold.it/350x200"
    )
    end

    1.times do |i|
        PortfolioItem.create!(
            title: "Portfolio title: #{i+1}",
            subtitle: "JavaScript",
            body: "It has survived not only five centuries, but also the leap into electronic typesetting,
            remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset 
            sheets containing Lorem Ipsum passages, and more recently with desktop publishing software
             like Aldus PageMaker including versions of Lorem Ipsum",
            main_image:"http://placehold.it/600x400",
            thumb_image: "http://placehold.it/350x200"
        )
        end

    puts "9 portfolio items created"

    3.times do |technology|
        PortfolioItem.last.technologies.create!(
    name: "Technology #{technology}"
)
    end

    puts "3 technology items created"