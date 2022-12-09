require 'csv'

class Create
    def create_questions(html)
        questions = []
        doc = Nokogiri::HTML(html)
            doc.css(".question.question-hot").each do |question|
                name = question.css('h2 > .question-link').map { |name| name.text.strip }
                tags = question.css('.post-tag').map{ |tag| tag.text.strip }
                owner = question.css('.metaInfo > .owner > a').map { |owner| owner.text.strip }
                host = question.css('.metaInfo > .question-host').map { |host| host.text.strip }
                questions.push(
                    name: name.first,
                    tags: tags,
                    owner: owner.first,
                    host: host.first
                )
        end
        return questions
    end
end