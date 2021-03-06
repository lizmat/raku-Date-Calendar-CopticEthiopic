#
# Checking the getters (and also the C<locale> setter)
#
use v6.c;
use Test;
use Date::Calendar::Coptic;
use Date::Calendar::Ethiopic;

plan  3  # objects
   × 13; # accessors

my Date::Calendar::Coptic $dc .= new(year => 1736, month => 3, day => 10);

is($dc.month      ,     3);
is($dc.day        ,    10);
is($dc.year       ,  1736);
is($dc.day-of-year,    70);
is($dc.day-of-week,     4);
is($dc.week-number,    10);
is($dc.week-year  ,  1736);
is($dc.daycount   , 58807);
is($dc.gist       , "1736-03-10");
is($dc.month-name , 'Hathor');
is($dc.month-abbr , 'Hat');
is($dc.day-name   , 'Peftoou');
is($dc.day-abbr   , 'Pef');

$dc .= new(year => 1735, month => 13, day => 6);

is($dc.month      ,    13);
is($dc.day        ,     6);
is($dc.year       ,  1735);
is($dc.day-of-year,   366);
is($dc.day-of-week,     4);
is($dc.week-number,    53);
is($dc.week-year  ,  1735);
is($dc.daycount   , 58737);
is($dc.gist       , '1735-13-06');
is($dc.month-name , 'Pi Kogi Enavot');
is($dc.month-abbr , 'Kou');
is($dc.day-name   , 'Peftoou');
is($dc.day-abbr   , 'Pef');

my Date::Calendar::Ethiopic $de .= new(year => 2012, month => 3, day => 10);

is($de.month      ,     3);
is($de.day        ,    10);
is($de.year       ,  2012);
is($de.day-of-year,    70);
is($de.day-of-week,     4);
is($de.week-number,    10);
is($de.week-year  ,  2012);
is($de.daycount   , 58807);
is($de.gist       , "2012-03-10");
is($de.month-name , 'Ḫədar');
is($de.month-abbr , 'Hed');
is($de.day-name   , 'Hamus');
is($de.day-abbr   , 'Ham');


done-testing;
