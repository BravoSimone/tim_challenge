class Quote < ApplicationRecord
  # WARNING! ATTENZIONE!
  # Don't change any number from the enum. Any new category must be appended at
  # the end with a new number. In case we want to change the numbers to sort
  # again the hash, we also need a migration in the database to update the
  # numbers accordingly
  enum :category,
       { age: 0, alone: 1, amazing: 2, anger: 3, architecture: 4, art: 5,
         attitude: 6, beauty: 7, best: 8, birthday: 9, business: 10,
         car: 11, change: 12, communication: 13, computers: 14, cool: 15,
         courage: 16, dad: 17, dating: 18, death: 19, design: 20,
         dreams: 21, education: 22, environmental: 23, equality: 24,
         experience: 25, failure: 26, faith: 27, family: 28, famous: 29,
         fear: 30, fitness: 31, food: 32, forgiveness: 33, freedom: 34,
         friendship: 35, funny: 36, future: 37, god: 38, good: 39,
         government: 40, graduation: 41, great: 42, happiness: 43,
         health: 44, history: 45, home: 46, hope: 47, humor: 48,
         imagination: 49, inspirational: 50, intelligence: 51, jealousy: 52,
         knowledge: 53, leadership: 54, learning: 55, legal: 56, life: 57,
         love: 58, marriage: 59, medical: 60, men: 61, mom: 62, money: 63,
         morning: 64, movies: 65, success: 66 }
end
