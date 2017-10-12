grammar ICSS;

stylesheet: WS EOF;
WS: [ \t\r\n]+ -> skip;
