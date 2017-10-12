grammar ICSS;

stylesheet: property+;

property: selectors '{' assignment* '}';

selectors: (id | class | selector);

id: HASHTAG selector;

class: DOT selector;

selector: VARCHAR+;

assignment: attribute COLON value;

attribute: VARCHAR+;

value: (HASH VARCHAR) | VARCHAR;



VARCHAR: [a-zA-Z0-9]+;

HASHTAG: '#';

DOT: '.';

COLON: ':';

HYPHEN: '-';

WS: [ \t\r\n]+ -> skip;
