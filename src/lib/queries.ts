import { db } from "./db";

export type Route = {
  id: string;
  title: string;
  slug: string;
  subtitle: string | null;
  description: string | null;
  level: string | null;
  estimated_duration: string | null;
  status: string;
};

export type Lesson = {
  id: string;
  route_id: string;
  lesson_number: number;
  title: string;
  slug: string;
  eyebrow: string | null;
  main_idea: string | null;
  summary: string | null;
  explanation: string | null;
  remember: string | null;
  application: string | null;
  estimated_time: string | null;
  status: string;
};

export type LessonBibleRef = {
  reference: string;
  note: string | null;
  position: number;
};

export type LessonPoint = {
  point_text: string;
  position: number;
};

export type LessonQuestion = {
  question_text: string;
  position: number;
};

export type RelatedItem = {
  title: string;
  slug: string;
  definition?: string | null;
  summary?: string | null;
};

export function getRouteBySlug(slug: string): Route | undefined {
  return db
    .prepare("SELECT * FROM routes WHERE slug = ?")
    .get(slug) as Route | undefined;
}

export function getLessonsByRouteId(routeId: string): Lesson[] {
  return db
    .prepare(
      `
      SELECT *
      FROM lessons
      WHERE route_id = ?
      ORDER BY lesson_number ASC
      `
    )
    .all(routeId) as Lesson[];
}

export function getLessonBySlug(slug: string): Lesson | undefined {
  return db
    .prepare("SELECT * FROM lessons WHERE slug = ?")
    .get(slug) as Lesson | undefined;
}

export function getBibleRefsByLessonId(lessonId: string): LessonBibleRef[] {
  return db
    .prepare(
      `
      SELECT reference, note, position
      FROM lesson_bible_refs
      WHERE lesson_id = ?
      ORDER BY position ASC
      `
    )
    .all(lessonId) as LessonBibleRef[];
}

export function getPointsByLessonId(lessonId: string): LessonPoint[] {
  return db
    .prepare(
      `
      SELECT point_text, position
      FROM lesson_points
      WHERE lesson_id = ?
      ORDER BY position ASC
      `
    )
    .all(lessonId) as LessonPoint[];
}

export function getQuestionsByLessonId(lessonId: string): LessonQuestion[] {
  return db
    .prepare(
      `
      SELECT question_text, position
      FROM lesson_questions
      WHERE lesson_id = ?
      ORDER BY position ASC
      `
    )
    .all(lessonId) as LessonQuestion[];
}

export function getTopicsByLessonId(lessonId: string): RelatedItem[] {
  return db
    .prepare(
      `
      SELECT topics.title, topics.slug, topics.definition
      FROM lesson_topics
      JOIN topics ON topics.id = lesson_topics.topic_id
      WHERE lesson_topics.lesson_id = ?
      ORDER BY topics.title ASC
      `
    )
    .all(lessonId) as RelatedItem[];
}

export function getPeopleByLessonId(lessonId: string): RelatedItem[] {
  return db
    .prepare(
      `
      SELECT people.name AS title, people.slug, people.summary
      FROM lesson_people
      JOIN people ON people.id = lesson_people.person_id
      WHERE lesson_people.lesson_id = ?
      ORDER BY people.name ASC
      `
    )
    .all(lessonId) as RelatedItem[];
}

export function getPlacesByLessonId(lessonId: string): RelatedItem[] {
  return db
    .prepare(
      `
      SELECT places.name AS title, places.slug, places.summary
      FROM lesson_places
      JOIN places ON places.id = lesson_places.place_id
      WHERE lesson_places.lesson_id = ?
      ORDER BY places.name ASC
      `
    )
    .all(lessonId) as RelatedItem[];
}

export function getGlossaryByLessonId(lessonId: string): RelatedItem[] {
  return db
    .prepare(
      `
      SELECT glossary_terms.term AS title, glossary_terms.slug, glossary_terms.definition
      FROM lesson_glossary
      JOIN glossary_terms ON glossary_terms.id = lesson_glossary.glossary_id
      WHERE lesson_glossary.lesson_id = ?
      ORDER BY glossary_terms.term ASC
      `
    )
    .all(lessonId) as RelatedItem[];
}

export function getAllRoutes(): Route[] {
  return db
    .prepare(
      `
      SELECT *
      FROM routes
      ORDER BY title ASC
      `
    )
    .all() as Route[];
}

export function getAllLessons(): Lesson[] {
  return db
    .prepare(
      `
      SELECT *
      FROM lessons
      ORDER BY lesson_number ASC
      `
    )
    .all() as Lesson[];
}

export type Topic = {
  id: string;
  title: string;
  slug: string;
  definition: string | null;
  status: string;
};

export type Person = {
  id: string;
  name: string;
  slug: string;
  summary: string | null;
  status: string;
};

export type Place = {
  id: string;
  name: string;
  slug: string;
  place_type: string | null;
  summary: string | null;
  status: string;
};

export type GlossaryTerm = {
  id: string;
  term: string;
  slug: string;
  definition: string | null;
  status: string;
};

export function getAllTopics(): Topic[] {
  return db
    .prepare(
      `
      SELECT *
      FROM topics
      ORDER BY title ASC
      `
    )
    .all() as Topic[];
}

export function getTopicBySlug(slug: string): Topic | undefined {
  return db
    .prepare("SELECT * FROM topics WHERE slug = ?")
    .get(slug) as Topic | undefined;
}

export function getAllPeople(): Person[] {
  return db
    .prepare(
      `
      SELECT *
      FROM people
      ORDER BY name ASC
      `
    )
    .all() as Person[];
}

export function getPersonBySlug(slug: string): Person | undefined {
  return db
    .prepare("SELECT * FROM people WHERE slug = ?")
    .get(slug) as Person | undefined;
}

export function getAllPlaces(): Place[] {
  return db
    .prepare(
      `
      SELECT *
      FROM places
      ORDER BY name ASC
      `
    )
    .all() as Place[];
}

export function getPlaceBySlug(slug: string): Place | undefined {
  return db
    .prepare("SELECT * FROM places WHERE slug = ?")
    .get(slug) as Place | undefined;
}

export function getAllGlossaryTerms(): GlossaryTerm[] {
  return db
    .prepare(
      `
      SELECT *
      FROM glossary_terms
      ORDER BY term ASC
      `
    )
    .all() as GlossaryTerm[];
}

export function getGlossaryTermBySlug(slug: string): GlossaryTerm | undefined {
  return db
    .prepare("SELECT * FROM glossary_terms WHERE slug = ?")
    .get(slug) as GlossaryTerm | undefined;
}

export type Event = {
  id: string;
  title: string;
  slug: string;
  event_type: string | null;
  summary: string | null;
  description: string | null;
  biblical_period: string | null;
  approximate_date: string | null;
  chronological_order: number | null;
  temporal_certainty: string | null;
  geographical_certainty: string | null;
  appears_on_timeline: number;
  appears_on_map: number;
  status: string;
};

export function getAllEvents(): Event[] {
  return db
    .prepare(
      `
      SELECT *
      FROM events
      ORDER BY chronological_order ASC, title ASC
      `
    )
    .all() as Event[];
}

export function getEventsByLessonId(lessonId: string): Event[] {
  return db
    .prepare(
      `
      SELECT events.*
      FROM lesson_events
      JOIN events ON events.id = lesson_events.event_id
      WHERE lesson_events.lesson_id = ?
      ORDER BY events.chronological_order ASC, events.title ASC
      `
    )
    .all(lessonId) as Event[];
}