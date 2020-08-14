# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

airlines = Airline.create([
                            {
                              name: 'United Airlines',
                              image_url: 'https://open-flights.s3.amazonaws.com/United-Airlines.png'
                            },
                            {
                              name: 'Southwest',
                              image_url: 'https://cdn.travelpulse.com/images/99999999-9999-9999-9999-999999999999/af17386c-b7a5-285c-75e5-3ee7c2fb446f/630x355.jpg'
                            },
                            {
                              name: 'Delta',
                              image_url: 'https://open-flights.s3.amazonaws.com/Delta.png'
                            },
                            {
                              name: 'Alaska Airlines',
                              image_url: 'https://open-flights.s3.amazonaws.com/Alaska-Airlines.png'
                            },
                            {
                              name: 'JetBlue',
                              image_url: 'https://open-flights.s3.amazonaws.com/JetBlue.png'
                            },
                            {
                              name: 'American Airlines',
                              image_url: 'https://open-flights.s3.amazonaws.com/American-Airlines.png'
                            }
                          ])

reviews = Review.create([
                          {
                            title: 'Great Airline',
                            description: 'I had a lovely time',
                            score: 5,
                            airline: airlines.first
                          },
                          {
                            title: 'Bad Airline',
                            description: 'I had a bad time',
                            score: 1,
                            airline: airlines.first
                          }
                        ])
