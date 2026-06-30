INSERT INTO routes (
  id, title, slug, subtitle, description, level, estimated_duration, status
) VALUES (
  'rut-panorama-visual',
  'Panorama Visual de la Biblia',
  'panorama-visual-de-la-biblia',
  'La historia de Dios desde la creación hasta la nueva creación.',
  'Una ruta guiada para entender la Biblia como una sola historia centrada en Dios, la redención y el cumplimiento en Jesús.',
  'Básico',
  '20 lecciones de 7 a 10 minutos',
  'Publicado básico'
);

INSERT INTO lessons (
  id, route_id, lesson_number, title, slug, eyebrow, main_idea, summary, explanation, remember, application, estimated_time, status
) VALUES (
  'lec-biblia-una-sola-historia',
  'rut-panorama-visual',
  1,
  'La Biblia como una sola historia',
  'la-biblia-como-una-sola-historia',
  'Lección 1 de 20 · 7–10 minutos',
  'La Biblia cuenta una sola historia unida por el plan de Dios: creación, caída, promesa, redención y nueva creación.',
  'La Biblia no es una colección de historias desconectadas. Es una gran historia acerca de Dios, la humanidad, el pecado, la redención y el cumplimiento en Jesús.',
  'La Biblia está formada por muchos libros escritos en distintos momentos, por diferentes autores humanos y en diversos contextos. Sin embargo, no debe estudiarse como si fuera una colección de historias aisladas. Desde Génesis hasta Apocalipsis hay un hilo principal: Dios está revelando su carácter, su voluntad y su plan para redimir a la humanidad. En el Nuevo Testamento, esa esperanza se cumple en Jesús. Él es el Mesías prometido, el Salvador, el Rey y el centro de toda la historia bíblica.',
  'Toda la Biblia apunta al plan de Dios cumplido en Jesús.',
  'Cuando entendemos que la Biblia tiene una sola historia, cada parte empieza a tener más sentido.',
  '7–10 minutos',
  'Publicado básico'
);

INSERT INTO lessons (id, route_id, lesson_number, title, slug, status) VALUES
('lec-dios-crea-todas-las-cosas', 'rut-panorama-visual', 2, 'Dios crea todas las cosas', 'dios-crea-todas-las-cosas', 'Borrador'),
('lec-caida-y-pecado', 'rut-panorama-visual', 3, 'La caída y el pecado', 'la-caida-y-el-pecado', 'Borrador'),
('lec-primera-promesa-redencion', 'rut-panorama-visual', 4, 'La primera promesa de redención', 'la-primera-promesa-de-redencion', 'Borrador'),
('lec-noe-juicio-misericordia', 'rut-panorama-visual', 5, 'Noé, el juicio y la misericordia', 'noe-el-juicio-y-la-misericordia', 'Borrador'),
('lec-babel-y-naciones', 'rut-panorama-visual', 6, 'Babel y las naciones', 'babel-y-las-naciones', 'Borrador'),
('lec-abraham-y-promesa', 'rut-panorama-visual', 7, 'Abraham y la promesa', 'abraham-y-la-promesa', 'Borrador'),
('lec-pacto-con-abraham', 'rut-panorama-visual', 8, 'El pacto con Abraham', 'el-pacto-con-abraham', 'Borrador'),
('lec-isaac-jacob-tribus', 'rut-panorama-visual', 9, 'Isaac, Jacob y las doce tribus', 'isaac-jacob-y-las-doce-tribus', 'Borrador'),
('lec-jose-y-egipto', 'rut-panorama-visual', 10, 'José y Egipto', 'jose-y-egipto', 'Borrador'),
('lec-moises-y-exodo', 'rut-panorama-visual', 11, 'Moisés y el Éxodo', 'moises-y-el-exodo', 'Borrador'),
('lec-ley-pacto-sinai', 'rut-panorama-visual', 12, 'La ley y el pacto en Sinaí', 'la-ley-y-el-pacto-en-sinai', 'Borrador'),
('lec-tabernaculo-presencia', 'rut-panorama-visual', 13, 'El tabernáculo y la presencia de Dios', 'el-tabernaculo-y-la-presencia-de-dios', 'Borrador'),
('lec-tierra-prometida', 'rut-panorama-visual', 14, 'La tierra prometida', 'la-tierra-prometida', 'Borrador'),
('lec-jueces-necesidad-rey', 'rut-panorama-visual', 15, 'Los jueces y la necesidad de un rey', 'los-jueces-y-la-necesidad-de-un-rey', 'Borrador'),
('lec-david-y-reino', 'rut-panorama-visual', 16, 'David y el reino', 'david-y-el-reino', 'Borrador'),
('lec-templo-y-adoracion', 'rut-panorama-visual', 17, 'El templo y la adoración', 'el-templo-y-la-adoracion', 'Borrador'),
('lec-profetas-exilio-esperanza', 'rut-panorama-visual', 18, 'Profetas, exilio y esperanza', 'profetas-exilio-y-esperanza', 'Borrador'),
('lec-jesus-mesias-prometido', 'rut-panorama-visual', 19, 'Jesús, el Mesías prometido', 'jesus-el-mesias-prometido', 'Borrador'),
('lec-cruz-resurreccion-iglesia-nueva-creacion', 'rut-panorama-visual', 20, 'Cruz, resurrección, iglesia y nueva creación', 'cruz-resurreccion-iglesia-y-nueva-creacion', 'Borrador');

INSERT INTO lesson_bible_refs (lesson_id, reference, note, position) VALUES
('lec-biblia-una-sola-historia', 'Lucas 24:27', 'Jesús explicó cómo las Escrituras apuntaban hacia Él.', 1),
('lec-biblia-una-sola-historia', 'Lucas 24:44', 'Jesús habló de lo escrito acerca de Él en la Ley, los Profetas y los Salmos.', 2),
('lec-biblia-una-sola-historia', 'Juan 5:39', 'Las Escrituras dan testimonio de Jesús.', 3),
('lec-biblia-una-sola-historia', '2 Timoteo 3:16-17', 'La Escritura es útil para enseñar, corregir e instruir.', 4);

INSERT INTO lesson_points (lesson_id, point_text, position) VALUES
('lec-biblia-una-sola-historia', 'La Biblia tiene muchos libros, pero una historia central.', 1),
('lec-biblia-una-sola-historia', 'Esa historia comienza con Dios como Creador.', 2),
('lec-biblia-una-sola-historia', 'El pecado rompe la relación entre Dios y la humanidad.', 3),
('lec-biblia-una-sola-historia', 'Dios promete redención y prepara el camino hacia Jesús.', 4),
('lec-biblia-una-sola-historia', 'Jesús es el centro y cumplimiento de la historia bíblica.', 5);

INSERT INTO lesson_questions (lesson_id, question_text, position) VALUES
('lec-biblia-una-sola-historia', '¿Quién es el protagonista principal de la Biblia?', 1),
('lec-biblia-una-sola-historia', '¿Por qué no debemos estudiar la Biblia como historias desconectadas?', 2),
('lec-biblia-una-sola-historia', '¿Por qué Jesús es el centro de la historia bíblica?', 3);

INSERT INTO topics (id, title, slug, definition, status) VALUES
('tem-redencion', 'Redención', 'redencion', 'Dios rescata y libera a su pueblo del pecado, la esclavitud y la muerte.', 'Publicado básico'),
('tem-mesias', 'Mesías', 'mesias', 'El Ungido prometido por Dios, cumplido en Jesús.', 'Publicado básico'),
('tem-evangelio', 'Evangelio', 'evangelio', 'La buena noticia de salvación en Jesús.', 'Publicado básico'),
('tem-creacion', 'Creación', 'creacion', 'Dios hizo todas las cosas con propósito.', 'Publicado básico'),
('tem-nueva-creacion', 'Nueva creación', 'nueva-creacion', 'La restauración final de todas las cosas por Dios.', 'Publicado básico');

INSERT INTO events (id, title, slug, event_type, summary, description, biblical_period,
  approximate_date, chronological_order, temporal_certainty, geographical_certainty,
  appears_on_timeline, appears_on_map, status) VALUES
( 'eve-historia-biblica-general', 'Historia bíblica general', 'historia-biblica-general', 'Panorama', 'La gran historia de la Biblia desde la creación hasta la nueva creación.', 'Este evento panorámico resume el hilo principal de la Biblia: creación, caída, promesa, redención en Jesús, iglesia y nueva creación.', 'Panorama bíblico', 'Desde Génesis hasta Apocalipsis', 1, 'Conceptual', 'No aplica', 1, 0, 'Publicado básico'),
( 'eve-creacion', 'Creación',
  'creacion',
  'Creación',
  'Dios crea todas las cosas con propósito.',
  'La Biblia presenta a Dios como Creador de los cielos, la tierra y todo lo que existe.',
  'Orígenes',
  'Inicio de la historia bíblica',
  2,
  'Conceptual',
  'No aplica',
  1,
  0,
  'Publicado básico'
),
(
  'eve-caida',
  'La caída',
  'la-caida',
  'Pecado / rebelión',
  'El pecado entra en la historia humana y rompe la relación con Dios.',
  'La caída muestra la desobediencia humana y sus consecuencias sobre la humanidad y la creación.',
  'Orígenes',
  'Después de la creación',
  3,
  'Conceptual',
  'No aplica',
  1,
  0,
  'Publicado básico'
),
(
  'eve-promesa-redencion',
  'Primera promesa de redención',
  'primera-promesa-de-redencion',
  'Promesa',
  'Dios anuncia esperanza y victoria sobre el mal.',
  'Desde el inicio, Dios muestra que el pecado no tendrá la última palabra y anuncia una promesa de victoria.',
  'Orígenes',
  'Después de la caída',
  4,
  'Conceptual',
  'No aplica',
  1,
  0,
  'Publicado básico'
),
(
  'eve-venida-de-jesus',
  'Venida de Jesús',
  'venida-de-jesus',
  'Cumplimiento mesiánico',
  'Jesús viene como el Mesías prometido y centro de la historia bíblica.',
  'El Nuevo Testamento presenta a Jesús como el cumplimiento de las promesas, figuras y esperanzas del Antiguo Testamento.',
  'Nuevo Testamento',
  'Siglo I d.C.',
  19,
  'Alta',
  'Alta',
  1,
  1,
  'Publicado básico'
);

INSERT INTO people (id, name, slug, summary, status) VALUES
('per-jesus', 'Jesús', 'jesus', 'El Hijo de Dios, Mesías prometido y centro de la historia bíblica.', 'Publicado básico'),
('per-moises', 'Moisés', 'moises', 'Siervo de Dios usado para liberar a Israel y entregar la Ley.', 'Publicado básico'),
('per-profetas', 'Los profetas', 'profetas', 'Mensajeros de Dios que llamaron al arrepentimiento y anunciaron esperanza.', 'Publicado básico'),
('per-apostoles', 'Los apóstoles', 'apostoles', 'Testigos enviados para anunciar a Jesús y enseñar a la iglesia.', 'Publicado básico');

INSERT INTO places (
  id, name, slug, place_type, summary, latitude, longitude, map_zoom,
  geographical_certainty, status
) VALUES
(
  'lug-jerusalen',
  'Jerusalén',
  'jerusalen',
  'Ciudad',
  'Ciudad central en la historia bíblica, relacionada con el templo, Jesús y la iglesia primitiva.',
  31.7780,
  35.2354,
  10,
  'Alta',
  'Publicado básico'
),
(
  'lug-camino-emaus',
  'Camino a Emaús',
  'camino-a-emaus',
  'Ruta',
  'Lugar asociado con la explicación de Jesús sobre las Escrituras después de su resurrección. La ubicación exacta de Emaús es debatida.',
  31.8340,
  35.0300,
  10,
  'Debatida',
  'Publicado básico'
);

INSERT INTO glossary_terms (id, term, slug, definition, status) VALUES
('glo-biblia', 'Biblia', 'biblia', 'Conjunto de escritos inspirados que revelan quién es Dios, su voluntad y su plan de redención.', 'Publicado básico'),
('glo-redencion', 'Redención', 'redencion', 'Rescate o liberación realizada por Dios.', 'Publicado básico'),
('glo-mesias', 'Mesías', 'mesias', 'El Ungido prometido por Dios.', 'Publicado básico'),
('glo-evangelio', 'Evangelio', 'evangelio', 'La buena noticia de salvación en Jesús.', 'Publicado básico');

INSERT INTO visual_resources (id, title, slug, resource_type, description, alt_text, url, status) VALUES
('vis-biblia-en-una-linea', 'La Biblia en una línea', 'la-biblia-en-una-linea', 'Infografía', 'Secuencia visual de la historia bíblica: creación, caída, promesa, Israel, Jesús, iglesia y nueva creación.', 'Infografía con las grandes etapas de la historia bíblica.', NULL, 'Idea');

INSERT INTO lesson_topics (lesson_id, topic_id) VALUES
('lec-biblia-una-sola-historia', 'tem-redencion'),
('lec-biblia-una-sola-historia', 'tem-mesias'),
('lec-biblia-una-sola-historia', 'tem-evangelio'),
('lec-biblia-una-sola-historia', 'tem-creacion'),
('lec-biblia-una-sola-historia', 'tem-nueva-creacion');

INSERT INTO event_topics (event_id, topic_id) VALUES
('eve-historia-biblica-general', 'tem-redencion'),
('eve-historia-biblica-general', 'tem-mesias'),
('eve-historia-biblica-general', 'tem-evangelio'),
('eve-creacion', 'tem-creacion'),
('eve-promesa-redencion', 'tem-redencion'),
('eve-promesa-redencion', 'tem-mesias'),
('eve-venida-de-jesus', 'tem-mesias'),
('eve-venida-de-jesus', 'tem-evangelio'),
('eve-venida-de-jesus', 'tem-redencion');

INSERT INTO lesson_events (lesson_id, event_id) VALUES
('lec-biblia-una-sola-historia', 'eve-historia-biblica-general'),
('lec-biblia-una-sola-historia', 'eve-creacion'),
('lec-biblia-una-sola-historia', 'eve-caida'),
('lec-biblia-una-sola-historia', 'eve-promesa-redencion'),
('lec-biblia-una-sola-historia', 'eve-venida-de-jesus');

INSERT INTO lesson_people (lesson_id, person_id) VALUES
('lec-biblia-una-sola-historia', 'per-jesus'),
('lec-biblia-una-sola-historia', 'per-moises'),
('lec-biblia-una-sola-historia', 'per-profetas'),
('lec-biblia-una-sola-historia', 'per-apostoles');

INSERT INTO event_people (event_id, person_id) VALUES
('eve-historia-biblica-general', 'per-jesus'),
('eve-historia-biblica-general', 'per-moises'),
('eve-historia-biblica-general', 'per-profetas'),
('eve-historia-biblica-general', 'per-apostoles'),
('eve-venida-de-jesus', 'per-jesus');

INSERT INTO lesson_places (lesson_id, place_id) VALUES
('lec-biblia-una-sola-historia', 'lug-jerusalen'),
('lec-biblia-una-sola-historia', 'lug-camino-emaus');

INSERT INTO event_places (event_id, place_id) VALUES
('eve-historia-biblica-general', 'lug-jerusalen'),
('eve-venida-de-jesus', 'lug-jerusalen');

INSERT INTO lesson_glossary (lesson_id, glossary_id) VALUES
('lec-biblia-una-sola-historia', 'glo-biblia'),
('lec-biblia-una-sola-historia', 'glo-redencion'),
('lec-biblia-una-sola-historia', 'glo-mesias'),
('lec-biblia-una-sola-historia', 'glo-evangelio');

INSERT INTO lesson_visual_resources (lesson_id, visual_resource_id) VALUES
('lec-biblia-una-sola-historia', 'vis-biblia-en-una-linea');