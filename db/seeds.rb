if Rails.env.development?
  poll = Poll.create!(question: "What topic would you like to see next at ReactU")
  poll.choices.create!(text: "Validating component props using PropTypes")
  poll.choices.create!(text: "Understanding component props and state")
  poll.choices.create!(text: "A deep-dive into event handlers and unidirectional communication")
  poll.choices.create!(text: "Creating example components: A Vertical Dropdown")
  poll.choices.create!(text: "Creating example components: A Horizontal Dropdown")
  poll.choices.create!(text: "Creating example components: A Poll like this one")
end