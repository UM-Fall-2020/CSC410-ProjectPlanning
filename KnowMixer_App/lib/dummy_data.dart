import 'package:flutter/material.dart';

import './models/category.dart';
import './models/item.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Famous U.S. Landmarks',
    color: Colors.green,
  ),
  Category(
    id: 'c2',
    title: 'Cool Places to Visit',
    color: Colors.orange,
  ),
  Category(
    id: 'c3',
    title: 'Norse Mythology',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c4',
    title: 'Movies',
    color: Colors.yellow,
  ),
];

const DUMMY_ITEMS = const [
  Item(
      id: 'i1',
      categories: [
        'c1',
        'c2',
      ],
      title: 'Statue of Liberty',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/a/ab/Statue_Of_Liberty_On_Ellis_Island.jpg',
      description: '''
    Statue of Liberty, formally known as Liberty Enligtening the Word, is a colossal statue on Liberty Island in the Upper New York Bay, U.S., commemorating the friendship of the peoples of the United States and France.
    Standing 305 feet (93 metres) high including its pedestal, it represents a woman holding a torch in her raised right hand and a tablet bearing the adoption date of the Declaration of Independence (July 4, 1776) in her left. 
    The torch, which measures 29 feet (8.8 metres) from the flame up to the bottom of the handle, is accessible via a 42-foot (12.8-metre) service ladder inside the arm (this ascent was open to the public from 1886 to 1916). 
    An elevator carries vistors to the observation deck in the pedestal, which may also be reached by stairway, and a spiral staircase leads to an observation platform in the figure's crown. 
    '''),
  Item(
      id: 'i2',
      categories: [
        'c1',
      ],
      title: 'Liberty Bell',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/0/08/Liberty_Bell_2008.jpg',
      description: '''
      Liberty Bell, large bell, is a traditional symbol of U.S. freedom, commissioned in 1751 by the Pennsylvania Provincial Assembly to hang in the new State House (renamed Independence Hall) in Philadelphia.
      It was cast in London by the Whitechapel Bell Foundry, purchased for about £100, and delivered in August 1752.
      It was cracked by a stroke of a the clapper while being tested and was twice recast in Philadelphia before being hung in the State House steeple in June 1753.
      It weighs about 2,080 punds (943 kg), is 12 feet (3.7 metres) in circumference around the lip, and measures 3 feet (1 metre) from lip to crown.
      It bears the motto, "Proclaim liberty throughout all the land unto all the inhabitants thereof" (Leviticus 25:10).
      '''),
  Item(
      id: 'i3',
      categories: [
        'c1',
        'c2',
      ],
      title: 'The Alamo',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/d/d9/The_Alamo_2019_v2.jpg',
      description: '''
      Alamo, (Spanish: "Cottonwood"), is an 18th century Franciscan mission in San Antonio, Texas, U.S., that was the site of a historic resistance effort by a small group of determined fighters for Texan Independence (1836) from Mexico.
      The building was originally the chapel of the Mission San Antonio de Valero. which had been founded between 1716 and 1718 by Franciscans. Before the end of the century, the mission had been abandoned and the buildings fell into partial ruin.
      After 1801 the chapel was occupied sporadically by Spanish troops. Apparently, it was during that period that the old chapel became popularly knonw as "the Alamo" because of the grove of cottonwood trees in which it stood. 
      '''),
  Item(
      id: 'i4',
      categories: [
        'c2',
      ],
      title: 'Golden Gate Bridge',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/d/d3/Golden_Gate_Bridge_at_sunset_1.jpg',
      description: '''
      Golden Gate Bridge, suspension bridge spanning the Golden Gate in California to link San Francisco with Marin county to the north.
      Upon its completion in 1937, it was the tallest and longest suspension bridge in the world.
      The Golden Gate Bridge came to be recognized as a symbol of power and progress of the United States, and it set a precedent for suspension-bridge design around the world. 
      Although other bridges have since surpassed it in size, it remains incomparable in the magnificence of its setting and is said to be the most photographed bridge in the world. 
      It carries both U.S. Route 101 and California State Route 1 (Pacific Coast Highway) across the strait and features a pedestrian walkway. 
      '''),
  Item(
      id: 'i5',
      categories: [
        'c3',
      ],
      title: 'Valhalla',
      imageUrl:
          'https://www.historicmysteries.com/wp-content/uploads/2017/07/valhalla2.jpg',
      description: '''
      Valhalla, Old Norse Valhöll, in Norse Mythology, is the hall of slain warriors, who live there blissfully under the leadership of the god Odin. 
      Valhalla is depicted as a splendid palace, roofed with shields, where the warriors feast on the flesh of a boar slaughtered daily and made whole again each evening. 
      They drink liquor that flows from the udders of a goat, and their sport is to fight one another every day. 
      Thus, they will live until Ragnarök (Doomsday), when they will march out the 540 doors of the palace to fight at the side of Odin against the giants. 
      When heroes fall in battle, it is said that Odin needs them to strengthen his forces for Ragnarök.
      '''),
  Item(
      id: 'i6',
      categories: [
        'c4',
      ],
      title: 'Motion Picture',
      imageUrl:
          'https://cdn.britannica.com/s:1500x700,q:85/16/28316-004-07C4A05B/Kinetoscope-Thomas-A-Edison-William-Dickson-1891.jpg',
      description: '''
      Motion picture, also called film or movie, is series of still photographs on film, projected in rapid succession onto a screen by means of light. 
      Because of the optical phenomenon known as persistence of vision, this gives the illusion of actual, smooth and continuous movement. 
      The motion picture is a remarkably effective medium in conveying drama and especially in the evocation of emotion. 
      The art of motion pictures is exceedingly complex, requiring contributions from nearly all the other arts as well as countless technical skills (for example, in sound recording, photography, and optics). 
      Emerging at the end of the 19th century, this new art form became one of the most popular influential media of the 20th century and beyond. 
      '''),
  Item(
      id: 'i7',
      categories: ['c4'],
      title: 'West Side Story',
      imageUrl: 'https://cdn.britannica.com/s:1500x700,q:85/78/47178-004-F40B4A30/Members-Sharks-street-gang-choreography-music-Jerome-1961.jpg',
      description:
      '''
      West Side Story, an American musical film, released in 1961, was inspired by Shakespeare's Romeo and Juliet.
      The movie, filled with exhilarating dance sequences choreographed by Jerome Robbins and memorable songs - including "Tonight", "Maria," and "Somewhere" - by Leonard Bernstein (music) and Stephen Sondheim (lyrics), won 10 of 11 Academy Awards for which it was nominated, including that for best picture. 
      It also won three Golden Globe Awards, including that for best musical. 
      '''
  ),
];
