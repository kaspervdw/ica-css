grammar ICSS;

stylesheet: property+;

property: selectors '{' assignment* '}';

selectors: (id | class | selector);

id: HASHTAG selector;

class: DOT selector;

selector: VARCHAR;

assignment: attribute COLON value SEMICOLON;

attribute: (attributepart HYPHEN attribute) | attributepart;

attributepart: VARCHAR;

value: hexcode | dimension;

hexcode: HEXCODE;

dimension: DIMENSION;

fragment
HEX: [a-fA-F0-9];

fragment
DIGIT: [0-9];

NUMBER: DIGIT+;

VARCHAR: [a-zA-Z0-9]+;

DIMENSION: NUMBER 'px';

HEXCODE: HASHTAG HEX HEX HEX HEX HEX HEX;

HASHTAG: '#';

DOT: '.';

COLON: ':';

SEMICOLON: ';';

HYPHEN: '-';

UNDERSCORE: '_';

PERCENT: '%';

WS: [ \t\r\n]+ -> skip;
