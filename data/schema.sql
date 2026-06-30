PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS event_topics;
DROP TABLE IF EXISTS event_places;
DROP TABLE IF EXISTS event_people;
DROP TABLE IF EXISTS lesson_events;
DROP TABLE IF EXISTS lesson_visual_resources;
DROP TABLE IF EXISTS lesson_glossary;
DROP TABLE IF EXISTS lesson_places;
DROP TABLE IF EXISTS lesson_people;
DROP TABLE IF EXISTS lesson_topics;
DROP TABLE IF EXISTS lesson_questions;
DROP TABLE IF EXISTS lesson_points;
DROP TABLE IF EXISTS lesson_bible_refs;
DROP TABLE IF EXISTS visual_resources;
DROP TABLE IF EXISTS glossary_terms;
DROP TABLE IF EXISTS places;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS topics;
DROP TABLE IF EXISTS events;
DROP TABLE IF EXISTS lessons;
DROP TABLE IF EXISTS routes;

CREATE TABLE routes (
  id TEXT PRIMARY KEY,
  title TEXT NOT NULL,
  slug TEXT NOT NULL UNIQUE,
  subtitle TEXT,
  description TEXT,
  level TEXT,
  estimated_duration TEXT,
  status TEXT NOT NULL DEFAULT 'Borrador'
);

CREATE TABLE lessons (
  id TEXT PRIMARY KEY,
  route_id TEXT NOT NULL,
  lesson_number INTEGER NOT NULL,
  title TEXT NOT NULL,
  slug TEXT NOT NULL UNIQUE,
  eyebrow TEXT,
  main_idea TEXT,
  summary TEXT,
  explanation TEXT,
  remember TEXT,
  application TEXT,
  estimated_time TEXT,
  status TEXT NOT NULL DEFAULT 'Borrador',
  FOREIGN KEY (route_id) REFERENCES routes(id)
);

CREATE TABLE lesson_bible_refs (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  lesson_id TEXT NOT NULL,
  reference TEXT NOT NULL,
  note TEXT,
  position INTEGER NOT NULL DEFAULT 1,
  FOREIGN KEY (lesson_id) REFERENCES lessons(id)
);

CREATE TABLE lesson_points (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  lesson_id TEXT NOT NULL,
  point_text TEXT NOT NULL,
  position INTEGER NOT NULL DEFAULT 1,
  FOREIGN KEY (lesson_id) REFERENCES lessons(id)
);

CREATE TABLE lesson_questions (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  lesson_id TEXT NOT NULL,
  question_text TEXT NOT NULL,
  position INTEGER NOT NULL DEFAULT 1,
  FOREIGN KEY (lesson_id) REFERENCES lessons(id)
);

CREATE TABLE topics (
  id TEXT PRIMARY KEY,
  title TEXT NOT NULL,
  slug TEXT NOT NULL UNIQUE,
  definition TEXT,
  status TEXT NOT NULL DEFAULT 'Borrador'
);

CREATE TABLE events (
  id TEXT PRIMARY KEY,
  title TEXT NOT NULL,
  slug TEXT NOT NULL UNIQUE,
  event_type TEXT,
  summary TEXT,
  description TEXT,
  biblical_period TEXT,
  approximate_date TEXT,
  chronological_order INTEGER,
  temporal_certainty TEXT,
  geographical_certainty TEXT,
  appears_on_timeline INTEGER NOT NULL DEFAULT 1,
  appears_on_map INTEGER NOT NULL DEFAULT 0,
  status TEXT NOT NULL DEFAULT 'Borrador'
);

CREATE TABLE people (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  slug TEXT NOT NULL UNIQUE,
  summary TEXT,
  status TEXT NOT NULL DEFAULT 'Borrador'
);

CREATE TABLE places (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  slug TEXT NOT NULL UNIQUE,
  place_type TEXT,
  summary TEXT,
  status TEXT NOT NULL DEFAULT 'Borrador'
);

CREATE TABLE glossary_terms (
  id TEXT PRIMARY KEY,
  term TEXT NOT NULL,
  slug TEXT NOT NULL UNIQUE,
  definition TEXT,
  status TEXT NOT NULL DEFAULT 'Borrador'
);

CREATE TABLE visual_resources (
  id TEXT PRIMARY KEY,
  title TEXT NOT NULL,
  slug TEXT NOT NULL UNIQUE,
  resource_type TEXT NOT NULL,
  description TEXT,
  alt_text TEXT,
  url TEXT,
  status TEXT NOT NULL DEFAULT 'Idea'
);

CREATE TABLE lesson_topics (
  lesson_id TEXT NOT NULL,
  topic_id TEXT NOT NULL,
  PRIMARY KEY (lesson_id, topic_id),
  FOREIGN KEY (lesson_id) REFERENCES lessons(id),
  FOREIGN KEY (topic_id) REFERENCES topics(id)
);

CREATE TABLE lesson_events (
  lesson_id TEXT NOT NULL,
  event_id TEXT NOT NULL,
  PRIMARY KEY (lesson_id, event_id),
  FOREIGN KEY (lesson_id) REFERENCES lessons(id),
  FOREIGN KEY (event_id) REFERENCES events(id)
);

CREATE TABLE lesson_people (
  lesson_id TEXT NOT NULL,
  person_id TEXT NOT NULL,
  PRIMARY KEY (lesson_id, person_id),
  FOREIGN KEY (lesson_id) REFERENCES lessons(id),
  FOREIGN KEY (person_id) REFERENCES people(id)
);

CREATE TABLE lesson_places (
  lesson_id TEXT NOT NULL,
  place_id TEXT NOT NULL,
  PRIMARY KEY (lesson_id, place_id),
  FOREIGN KEY (lesson_id) REFERENCES lessons(id),
  FOREIGN KEY (place_id) REFERENCES places(id)
);

CREATE TABLE lesson_glossary (
  lesson_id TEXT NOT NULL,
  glossary_id TEXT NOT NULL,
  PRIMARY KEY (lesson_id, glossary_id),
  FOREIGN KEY (lesson_id) REFERENCES lessons(id),
  FOREIGN KEY (glossary_id) REFERENCES glossary_terms(id)
);

CREATE TABLE lesson_visual_resources (
  lesson_id TEXT NOT NULL,
  visual_resource_id TEXT NOT NULL,
  PRIMARY KEY (lesson_id, visual_resource_id),
  FOREIGN KEY (lesson_id) REFERENCES lessons(id),
  FOREIGN KEY (visual_resource_id) REFERENCES visual_resources(id)
);

CREATE TABLE event_people (
  event_id TEXT NOT NULL,
  person_id TEXT NOT NULL,
  PRIMARY KEY (event_id, person_id),
  FOREIGN KEY (event_id) REFERENCES events(id),
  FOREIGN KEY (person_id) REFERENCES people(id)
);

CREATE TABLE event_places (
  event_id TEXT NOT NULL,
  place_id TEXT NOT NULL,
  PRIMARY KEY (event_id, place_id),
  FOREIGN KEY (event_id) REFERENCES events(id),
  FOREIGN KEY (place_id) REFERENCES places(id)
);

CREATE TABLE event_topics (
  event_id TEXT NOT NULL,
  topic_id TEXT NOT NULL,
  PRIMARY KEY (event_id, topic_id),
  FOREIGN KEY (event_id) REFERENCES events(id),
  FOREIGN KEY (topic_id) REFERENCES topics(id)
);