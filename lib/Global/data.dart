import 'package:flutter/material.dart';

List<Map<String, dynamic>> dataBase = [
  {
    "category": "Sport test",
    "color": Colors.green,
    "data": [
      {
        "question":
            "Who is considered one of the greatest soccer players of all time?",
        "answers": [
          {"ans": "Lionel Messi", "score": 1},
          {"ans": "Cristiano Ronaldo", "score": 0},
          {"ans": "Karim Benzema", "score": 0},
          {"ans": "Luka Modric", "score": 0},
          {"ans": "Diego Maradona", "score": 0}
        ]
      },
      {
        "question": "In which sport is the Super Bowl the championship game?",
        "answers": [
          {"ans": "American football", "score": 1},
          {"ans": "Baseball", "score": 0},
          {"ans": "Basketball", "score": 0},
          {"ans": "Soccer", "score": 0},
          {"ans": "Tennis", "score": 0}
        ]
      },
      {
        "question":
            "Which country has won the most Olympic gold medals in the history of the Summer Olympics?",
        "answers": [
          {"ans": "United States", "score": 1},
          {"ans": "China", "score": 0},
          {"ans": "Russia", "score": 0},
          {"ans": "Germany", "score": 0},
          {"ans": "Great Britain", "score": 0}
        ]
      },
      {
        "question":
            "Who holds the record for the most home runs in Major League Baseball?",
        "answers": [
          {"ans": "Barry Bonds", "score": 1},
          {"ans": "Babe Ruth", "score": 0},
          {"ans": "Hank Aaron", "score": 0},
          {"ans": "Alex Rodriguez", "score": 0},
          {"ans": "Sammy Sosa", "score": 0}
        ]
      },
      {
        "question":
            "Which country has won the most FIFA World Cup titles in soccer?",
        "answers": [
          {"ans": "Brazil", "score": 0},
          {"ans": "Germany", "score": 0},
          {"ans": "Italy", "score": 0},
          {"ans": "Argentina", "score": 0},
          {"ans": "France", "score": 0}
        ]
      },
      {
        "question":
            "Who is the most decorated Olympian of all time, with the most total medals?",
        "answers": [
          {"ans": "Michael Phelps", "score": 0},
          {"ans": "Usain Bolt", "score": 0},
          {"ans": "Simone Biles", "score": 0},
          {"ans": "Carl Lewis", "score": 0},
          {"ans": "Larisa Latynina", "score": 0}
        ]
      },
      {
        "question":
            "Which tennis player has won the most Grand Slam singles titles in history?",
        "answers": [
          {"ans": "Roger Federer", "score": 0},
          {"ans": "Rafael Nadal", "score": 0},
          {"ans": "Novak Djokovic", "score": 0},
          {"ans": "Serena Williams", "score": 0},
          {"ans": "Margaret Court", "score": 0}
        ]
      },
      {
        "question":
            "In which sport is the Stanley Cup awarded to the champion team?",
        "answers": [
          {"ans": "Ice hockey", "score": 0},
          {"ans": "Golf", "score": 0},
          {"ans": "Cricket", "score": 0},
          {"ans": "Rugby", "score": 0},
          {"ans": "Formula 1", "score": 0}
        ]
      },
      {
        "question":
            "Who is considered one of the greatest soccer players of all time?",
        "answers": [
          {"ans": "Messi", "score": 0},
          {"ans": "Cristiano Ronaldo", "score": 0},
          {"ans": "Karim Benzema", "score": 0},
          {"ans": "Luka Modric", "score": 0},
          {"ans": "Maradona", "score": 0}
        ]
      },
      {
        "question": "In which sport is the Super Bowl the championship game?",
        "answers": [
          {"ans": "American football", "score": 0},
          {"ans": "Baseball", "score": 0},
          {"ans": "Basketball", "score": 0},
          {"ans": "Soccer", "score": 0},
          {"ans": "Tennis", "score": 0}
        ]
      },
      {
        "question":
            "Which country has won the most Olympic gold medals in the history of the Summer Olympics?",
        "answers": [
          {"ans": "United States", "score": 0},
          {"ans": "China", "score": 0},
          {"ans": "Russia", "score": 0},
          {"ans": "Germany", "score": 0},
          {"ans": "Great Britain", "score": 0}
        ]
      },
      {
        "question":
            "Who holds the record for the most home runs in Major League Baseball?",
        "answers": [
          {"ans": "Barry Bonds", "score": 0},
          {"ans": "Babe Ruth", "score": 0},
          {"ans": "Hank Aaron", "score": 0},
          {"ans": "Alex Rodriguez", "score": 0},
          {"ans": "Sammy Sosa", "score": 0}
        ]
      },
      {
        "question":
            "Which country has won the most FIFA World Cup titles in soccer?",
        "answers": [
          {"ans": "Brazil", "score": 0},
          {"ans": "Germany", "score": 0},
          {"ans": "Italy", "score": 0},
          {"ans": "Argentina", "score": 0},
          {"ans": "France", "score": 0}
        ]
      },
    ]
  },
  {
    "category": "History test",
    "color": Colors.yellow,
    "data": [
      {
        "question": "Who was the first President of the United States?",
        "answers": [
          {"ans": "George Washington", "score": 0},
          {"ans": "Thomas Jefferson", "score": 0},
          {"ans": "Abraham Lincoln", "score": 0},
          {"ans": "John F. Kennedy", "score": 0},
          {"ans": "Barack Obama", "score": 0}
        ]
      },
      {
        "question":
            "Which war was fought between the North and South regions of the United States?",
        "answers": [
          {"ans": "American Civil War", "score": 0},
          {"ans": "World War I", "score": 0},
          {"ans": "World War II", "score": 0},
          {"ans": "Vietnam War", "score": 0},
          {"ans": "Korean War", "score": 0}
        ]
      },
      {
        "question":
            "Who was the leader of the Soviet Union during World War II?",
        "answers": [
          {"ans": "Joseph Stalin", "score": 0},
          {"ans": "Vladimir Lenin", "score": 0},
          {"ans": "Mikhail Gorbachev", "score": 0},
          {"ans": "Nikita Khrushchev", "score": 0},
          {"ans": "Boris Yeltsin", "score": 0}
        ]
      },
      {
        "question": "Which city was the capital of the Roman Empire?",
        "answers": [
          {"ans": "Rome", "score": 0},
          {"ans": "Athens", "score": 0},
          {"ans": "Alexandria", "score": 0},
          {"ans": "Constantinople", "score": 0},
          {"ans": "Cairo", "score": 0}
        ]
      },
      {
        "question": "Who was the first explorer to sail around the world?",
        "answers": [
          {"ans": "Ferdinand Magellan", "score": 0},
          {"ans": "Christopher Columbus", "score": 0},
          {"ans": "James Cook", "score": 0},
          {"ans": "Vasco da Gama", "score": 0},
          {"ans": "Marco Polo", "score": 0}
        ]
      }
    ]
  },
  {
    "category": "General test",
    "color": Colors.blue,
    "data": [
      {
        "question": "What is the capital of France?",
        "answers": [
          {"ans": "Paris", "score": 0},
          {"ans": "London", "score": 0},
          {"ans": "Berlin", "score": 0},
          {"ans": "Rome", "score": 0},
          {"ans": "Madrid", "score": 0}
        ]
      },
      {
        "question": "Which planet is known as the 'Red Planet'?",
        "answers": [
          {"ans": "Mars", "score": 0},
          {"ans": "Mercury", "score": 0},
          {"ans": "Venus", "score": 0},
          {"ans": "Jupiter", "score": 0},
          {"ans": "Saturn", "score": 0}
        ]
      },
      {
        "question": "What is the chemical symbol for gold?",
        "answers": [
          {"ans": "Au", "score": 0},
          {"ans": "Ag", "score": 0},
          {"ans": "Fe", "score": 0},
          {"ans": "Cu", "score": 0},
          {"ans": "Pb", "score": 0}
        ]
      },
      {
        "question":
            "Which famous scientist developed the theory of relativity?",
        "answers": [
          {"ans": "Albert Einstein", "score": 0},
          {"ans": "Isaac Newton", "score": 0},
          {"ans": "Galileo Galilei", "score": 0},
          {"ans": "Marie Curie", "score": 0},
          {"ans": "Charles Darwin", "score": 0}
        ]
      },
      {
        "question": "Who painted the Mona Lisa?",
        "answers": [
          {"ans": "Leonardo da Vinci", "score": 0},
          {"ans": "Pablo Picasso", "score": 0},
          {"ans": "Vincent van Gogh", "score": 0},
          {"ans": "Michelangelo", "score": 0},
          {"ans": "Claude Monet", "score": 0}
        ]
      },
      {
        "question": "What is the largest ocean in the world?",
        "answers": [
          {"ans": "Pacific Ocean", "score": 0},
          {"ans": "Atlantic Ocean", "score": 0},
          {"ans": "Indian Ocean", "score": 0},
          {"ans": "Arctic Ocean", "score": 0},
          {"ans": "Southern Ocean", "score": 0}
        ]
      },
      {
        "question": "Who wrote the play 'Romeo and Juliet'?",
        "answers": [
          {"ans": "William Shakespeare", "score": 0},
          {"ans": "Jane Austen", "score": 0},
          {"ans": "Mark Twain", "score": 0},
          {"ans": "Charles Dickens", "score": 0},
          {"ans": "Emily Brontë", "score": 0}
        ]
      },
    ]
  },
  {
    "category": "Math test",
    "color": const Color.fromARGB(255, 177, 137, 16),
    "data": [
      {
        "question": "What is the square root of 16?",
        "answers": [
          {"ans": "4", "score": 1},
          {"ans": "9", "score": 0},
          {"ans": "16", "score": 0},
          {"ans": "25", "score": 0},
          {"ans": "36", "score": 0}
        ]
      },
      {
        "question": "What is the sum of the first 100 positive integers?",
        "answers": [
          {"ans": "5000", "score": 0},
          {"ans": "5050", "score": 1},
          {"ans": "4950", "score": 0},
          {"ans": "5100", "score": 0},
          {"ans": "5200", "score": 0}
        ]
      },
      {
        "question":
            "What is the next number in the sequence 1, 2, 4, 8, 16, 32, 64?",
        "answers": [
          {"ans": "128", "score": 1},
          {"ans": "256", "score": 0},
          {"ans": "512", "score": 0},
          {"ans": "1024", "score": 0},
          {"ans": "2048", "score": 0}
        ]
      },
      {
        "question": "What is the value of pi to three decimal places?",
        "answers": [
          {"ans": "3.14", "score": 1},
          {"ans": "3.141", "score": 0},
          {"ans": "3.142", "score": 0},
          {"ans": "3.15", "score": 0},
          {"ans": " 3.16", "score": 0}
        ]
      },
      {
        "question": "What is the slope of the line y = x?",
        "answers": [
          {"ans": "1", "score": 1},
          {"ans": "0", "score": 0},
          {"ans": " -1", "score": 0},
          {"ans": "2", "score": 0},
          {"ans": "3", "score": 0}
        ]
      }
    ]
  },
  {
    "category": "Computer sciense test",
    "color": const Color.fromARGB(255, 51, 6, 155),
    "data": [
      {
        "question":
            "What is the name of the programming language that is used to create websites?",
        "answers": [
          {"ans": "HTML", "score": 0},
          {"ans": "CSS", "score": 0},
          {"ans": "JavaScript", "score": 1},
          {"ans": "Python", "score": 0},
          {"ans": "Java", "score": 0}
        ]
      },
      {
        "question":
            "What is the name of the operating system that is used by most personal computers?",
        "answers": [
          {"ans": "Windows", "score": 1},
          {"ans": "Linux", "score": 0},
          {"ans": "macOS", "score": 0},
          {"ans": "Android", "score": 0},
          {"ans": "iOS", "score": 0}
        ]
      },
      {
        "question":
            "What is the name of the data structure that stores data in a linked list?",
        "answers": [
          {"ans": "Array", "score": 0},
          {"ans": "Stack", "score": 0},
          {"ans": "Queue", "score": 0},
          {"ans": "Linked list", "score": 1},
          {"ans": "Hash table", "score": 0}
        ]
      },
      {
        "question":
            "What is the name of the algorithm that sorts data by comparing adjacent elements?",
        "answers": [
          {"ans": "Bubble sort", "score": 1},
          {"ans": "Selection sort", "score": 0},
          {"ans": "Insertion sort", "score": 0},
          {"ans": "Merge sort", "score": 0},
          {"ans": "Quick sort", "score": 0}
        ]
      },
      {
        "question":
            "What is the name of the programming language that is used to create artificial intelligence programs?",
        "answers": [
          {"ans": "Python", "score": 1},
          {"ans": "Java", "score": 0},
          {"ans": "C++", "score": 0},
          {"ans": "R", "score": 0},
          {"ans": "JavaScript", "score": 0}
        ]
      }
    ]
  },
  {
    "category": "Problem solving",
    "color": const Color.fromARGB(255, 184, 4, 34),
    "data": [
      {
        "question": "What is the first step in problem solving?",
        "answers": [
          {"ans": "Define the problem", "score": 1},
          {"ans": "Brainstorm solutions", "score": 0},
          {"ans": "Implement the solution", "score": 0},
          {"ans": "Evaluate the solution", "score": 0},
          {"ans": "Communicate the solution", "score": 0}
        ]
      },
      {
        "question": "What is the most important skill for problem solving?",
        "answers": [
          {"ans": "Critical thinking", "score": 1},
          {"ans": "Creativity", "score": 0},
          {"ans": "Communication", "score": 0},
          {"ans": "Organization", "score": 0},
          {"ans": "Persistence", "score": 0}
        ]
      },
      {
        "question": "What is the best way to solve a difficult problem?",
        "answers": [
          {"ans": "Break it down into smaller problems", "score": 1},
          {
            "ans": "Try different solutions until you find one that works",
            "score": 0
          },
          {"ans": "Give up and ask for help", "score": 0},
          {"ans": "Wait for inspiration to strike", "score": 0},
          {"ans": "Don't worry, it will eventually solve itself", "score": 0}
        ]
      },
      {
        "question":
            "What is the most common mistake people make when solving problems?",
        "answers": [
          {"ans": "They give up too easily", "score": 1},
          {"ans": "They don't think creatively", "score": 0},
          {"ans": "They don't ask for help", "score": 0},
          {"ans": "They don't break the problem down", "score": 0},
          {"ans": "They don't evaluate their solutions", "score": 0}
        ]
      },
      {
        "question": "What is the best way to learn problem solving skills?",
        "answers": [
          {"ans": "Practice solving problems", "score": 1},
          {"ans": "Read books about problem solving", "score": 0},
          {"ans": "Take a class on problem solving", "score": 0},
          {"ans": "Watch videos about problem solving", "score": 0},
          {"ans": "Talk to people who are good at problem solving", "score": 0}
        ]
      }
    ]
  }
];
TextEditingController userName = TextEditingController();
