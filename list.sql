CREATE TEMP TABLE chars (
  c text
);
\copy chars from 'chars'
\copy (SELECT c1.c||c2.c||c3.c FROM chars c1 CROSS JOIN chars c2 CROSS JOIN chars c3) to 'list'
