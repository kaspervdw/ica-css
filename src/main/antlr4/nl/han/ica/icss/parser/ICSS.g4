grammar ICSS;

stylesheet: property+;

property: selectors '{' assignment* '}';

selectors: (id | class | selector);

id: HASHTAG selector;

class: DOT selector;

selector: VARCHAR+;

assignment: attribute COLON value SEMICOLON;

attribute: (attributepart HYPHEN attribute) | attributepart;

attributepart: VARCHAR+;

value: (HASHTAG VARCHAR+) | VARCHAR+;



VARCHAR: [a-zA-Z0-9];

HASHTAG: '#';

DOT: '.';

COLON: ':';

SEMICOLON: ';';

HYPHEN: '-';

WS: [ \t\r\n]+ -> skip;
