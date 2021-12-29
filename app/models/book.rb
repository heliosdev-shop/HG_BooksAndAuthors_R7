class Book < ApplicationRecord
  enum genres: {
    fiction: "Fiction",
    nonfiction: "Nonfiction",
    biography: "Biography",
    science_fiction: "Science fiction",
    mystery: "Mystery"
  }
  belongs_to :author
end
