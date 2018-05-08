
create or replace function pretty(bit(64)) returns text as $$
    select              substring($1::text from  1 for 8) 
            || E'\n' || substring($1::text from  9 for 8) 
            || E'\n' || substring($1::text from 17 for 8) 
            || E'\n' || substring($1::text from 25 for 8) 
            || E'\n' || substring($1::text from 33 for 8) 
            || E'\n' || substring($1::text from 41 for 8) 
            || E'\n' || substring($1::text from 49 for 8) 
            || E'\n' || substring($1::text from 57 for 8) || E'\n'
$$ language sql;

drop table if exists bitboard;
create table bitboard
(   bitboardid      text primary key,
    board           bit(64) not null unique
);

insert into bitboard values('filea',
 ('10000000'
||'10000000'
||'10000000'
||'10000000'
||'10000000'
||'10000000'
||'10000000'
||'10000000')::bit(64));

insert into bitboard values('fileb',
 ('01000000'
||'01000000'
||'01000000'
||'01000000'
||'01000000'
||'01000000'
||'01000000'
||'01000000')::bit(64));

insert into bitboard values('filec',
 ('00100000'
||'00100000'
||'00100000'
||'00100000'
||'00100000'
||'00100000'
||'00100000'
||'00100000')::bit(64));

insert into bitboard values('filed',
 ('00010000'
||'00010000'
||'00010000'
||'00010000'
||'00010000'
||'00010000'
||'00010000'
||'00010000')::bit(64));

insert into bitboard values('filee',
 ('00001000'
||'00001000'
||'00001000'
||'00001000'
||'00001000'
||'00001000'
||'00001000'
||'00001000')::bit(64));

insert into bitboard values('filef',
 ('00000100'
||'00000100'
||'00000100'
||'00000100'
||'00000100'
||'00000100'
||'00000100'
||'00000100')::bit(64));

insert into bitboard values('fileg',
 ('00000010'
||'00000010'
||'00000010'
||'00000010'
||'00000010'
||'00000010'
||'00000010'
||'00000010')::bit(64));

insert into bitboard values('fileh',
 ('00000001'
||'00000001'
||'00000001'
||'00000001'
||'00000001'
||'00000001'
||'00000001'
||'00000001')::bit(64));

----------------------------------------------------

insert into bitboard values('rank1',
 ('00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'11111111')::bit(64));

insert into bitboard values('rank2',
 ('00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'11111111'
||'00000000')::bit(64));

insert into bitboard values('rank3',
 ('00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'11111111'
||'00000000'
||'00000000')::bit(64));

insert into bitboard values('rank4',
 ('00000000'
||'00000000'
||'00000000'
||'00000000'
||'11111111'
||'00000000'
||'00000000'
||'00000000')::bit(64));

insert into bitboard values('rank5',
 ('00000000'
||'00000000'
||'00000000'
||'11111111'
||'00000000'
||'00000000'
||'00000000'
||'00000000')::bit(64));

insert into bitboard values('rank6',
 ('00000000'
||'00000000'
||'11111111'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000')::bit(64));

insert into bitboard values('rank7',
 ('00000000'
||'11111111'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000')::bit(64));

insert into bitboard values('rank8',
 ('11111111'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000')::bit(64));

insert into bitboard values('diag1',
 ('00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'10000000')::bit(64));

insert into bitboard values('diag2',
 ('00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'10000000'
||'01000000')::bit(64));

insert into bitboard values('diag3',
 ('00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'10000000'
||'01000000'
||'00100000')::bit(64));

insert into bitboard values('diag4',
 ('00000000'
||'00000000'
||'00000000'
||'00000000'
||'10000000'
||'01000000'
||'00100000'
||'00010000')::bit(64));

insert into bitboard values('diag5',
 ('00000000'
||'00000000'
||'00000000'
||'10000000'
||'01000000'
||'00100000'
||'00010000'
||'00001000')::bit(64));

insert into bitboard values('diag6',
 ('00000000'
||'00000000'
||'10000000'
||'01000000'
||'00100000'
||'00010000'
||'00001000'
||'00000100')::bit(64));

insert into bitboard values('diag7',
 ('00000000'
||'10000000'
||'01000000'
||'00100000'
||'00010000'
||'00001000'
||'00000100'
||'00000010')::bit(64));

insert into bitboard values('diag8',
 ('10000000'
||'01000000'
||'00100000'
||'00010000'
||'00001000'
||'00000100'
||'00000010'
||'00000001')::bit(64));

insert into bitboard values('diag9',
 ('01000000'
||'00100000'
||'00010000'
||'00001000'
||'00000100'
||'00000010'
||'00000001'
||'00000000')::bit(64));

insert into bitboard values('diag10',
 ('00100000'
||'00010000'
||'00001000'
||'00000100'
||'00000010'
||'00000001'
||'00000000'
||'00000000')::bit(64));

insert into bitboard values('diag11',
 ('00010000'
||'00001000'
||'00000100'
||'00000010'
||'00000001'
||'00000000'
||'00000000'
||'00000000')::bit(64));

insert into bitboard values('diag12',
 ('00001000'
||'00000100'
||'00000010'
||'00000001'
||'00000000'
||'00000000'
||'00000000'
||'00000000')::bit(64));

insert into bitboard values('diag13',
 ('00000100'
||'00000010'
||'00000001'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000')::bit(64));

insert into bitboard values('diag14',
 ('00000010'
||'00000001'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000')::bit(64));

insert into bitboard values('diag15',
 ('00000001'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000')::bit(64));

----------------------------------------------------

insert into bitboard values('adiag1',
 ('10000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000')::bit(64));

insert into bitboard values('adiag2',
 ('01000000'
||'10000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000')::bit(64));

insert into bitboard values('adiag3',
 ('00100000'
||'01000000'
||'10000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000')::bit(64));

insert into bitboard values('adiag4',
 ('00010000'
||'00100000'
||'01000000'
||'10000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000')::bit(64));

insert into bitboard values('adiag5',
 ('00001000'
||'00010000'
||'00100000'
||'01000000'
||'10000000'
||'00000000'
||'00000000'
||'00000000')::bit(64));

insert into bitboard values('adiag6',
 ('00000100'
||'00001000'
||'00010000'
||'00100000'
||'01000000'
||'10000000'
||'00000000'
||'00000000')::bit(64));

insert into bitboard values('adiag7',
 ('00000010'
||'00000100'
||'00001000'
||'00010000'
||'00100000'
||'01000000'
||'10000000'
||'00000000')::bit(64));

insert into bitboard values('adiag8',
 ('00000001'
||'00000010'
||'00000100'
||'00001000'
||'00010000'
||'00100000'
||'01000000'
||'10000000')::bit(64));

insert into bitboard values('adiag9',
 ('00000000'
||'00000001'
||'00000010'
||'00000100'
||'00001000'
||'00010000'
||'00100000'
||'01000000')::bit(64));

insert into bitboard values('adiag10',
 ('00000000'
||'00000000'
||'00000001'
||'00000010'
||'00000100'
||'00001000'
||'00010000'
||'00100000')::bit(64));

insert into bitboard values('adiag11',
 ('00000000'
||'00000000'
||'00000000'
||'00000001'
||'00000010'
||'00000100'
||'00001000'
||'00010000')::bit(64));

insert into bitboard values('adiag12',
 ('00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000001'
||'00000010'
||'00000100'
||'00001000')::bit(64));

insert into bitboard values('adiag13',
 ('00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000001'
||'00000010'
||'00000100')::bit(64));

insert into bitboard values('adiag14',
 ('00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000001'
||'00000010')::bit(64));

insert into bitboard values('adiag15',
 ('00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000001')::bit(64));

----------------------------------------------------

insert into bitboard values('knight1',
 ('00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'01000000'
||'00100000'
||'00000000')::bit(64));

insert into bitboard values('knight2',
 ('00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'10100000'
||'00010000'
||'00000000')::bit(64));

insert into bitboard values('knight3',
 ('00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'01010000'
||'10001000'
||'00000000')::bit(64));

insert into bitboard values('knight4',
 ('00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00101000'
||'01000100'
||'00000000')::bit(64));

insert into bitboard values('knight5',
 ('00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00010100'
||'00100010'
||'00000000')::bit(64));

insert into bitboard values('knight6',
 ('00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00001010'
||'00010001'
||'00000000')::bit(64));

insert into bitboard values('knight7',
 ('00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000101'
||'00001000'
||'00000000')::bit(64));

insert into bitboard values('knight8',
 ('00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000010'
||'00000100'
||'00000000')::bit(64));

insert into bitboard values('knight9',
 ('00000000'
||'00000000'
||'00000000'
||'00000000'
||'01000000'
||'00100000'
||'00000000'
||'00100000')::bit(64));

insert into bitboard values('knight10',
 ('00000000'
||'00000000'
||'00000000'
||'00000000'
||'10100000'
||'00010000'
||'00000000'
||'00010000')::bit(64));

insert into bitboard values('knight11',
 ('00000000'
||'00000000'
||'00000000'
||'00000000'
||'01010000'
||'10001000'
||'00000000'
||'10001000')::bit(64));

insert into bitboard values('knight12',
 ('00000000'
||'00000000'
||'00000000'
||'00000000'
||'00101000'
||'01000100'
||'00000000'
||'01000100')::bit(64));

insert into bitboard values('knight13',
 ('00000000'
||'00000000'
||'00000000'
||'00000000'
||'00010100'
||'00100010'
||'00000000'
||'00100010')::bit(64));

insert into bitboard values('knight14',
 ('00000000'
||'00000000'
||'00000000'
||'00000000'
||'00001010'
||'00010001'
||'00000000'
||'00010001')::bit(64));

insert into bitboard values('knight15',
 ('00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000101'
||'00001000'
||'00000000'
||'00001001')::bit(64));

insert into bitboard values('knight16',
 ('00000000'
||'00000000'
||'00000000'
||'00000000'
||'00000010'
||'00000100'
||'00000000'
||'00000100')::bit(64));

insert into bitboard values('knight17',
 ('00000000'
||'00000000'
||'00000000'
||'01000000'
||'00100000'
||'00000000'
||'00100000'
||'01000000'
)::bit(64));

insert into bitboard values('knight18',
 ('00000000'
||'00000000'
||'00000000'
||'10100000'
||'00010000'
||'00000000'
||'00010000'
||'00100000'
)::bit(64));

insert into bitboard values('knight19',
 ('00000000'
||'00000000'
||'00000000'
||'01010000'
||'10001000'
||'00000000'
||'10001000'
||'01010000'
)::bit(64));

insert into bitboard values('knight20',
 ('00000000'
||'00000000'
||'00000000'
||'00101000'
||'01000100'
||'00000000'
||'01000100'
||'00101000'
)::bit(64));

insert into bitboard values('knight21',
 ('00000000'
||'00000000'
||'00000000'
||'00010100'
||'00100010'
||'00000000'
||'00100010'
||'00010100'
)::bit(64));

insert into bitboard values('knight22',
 ('00000000'
||'00000000'
||'00000000'
||'00001010'
||'00010001'
||'00000000'
||'00010001'
||'00001010'
)::bit(64));

insert into bitboard values('knight23',
 ('00000000'
||'00000000'
||'00000000'
||'00000101'
||'00000000'
||'00000000'
||'00001000'
||'00000101'
)::bit(64));

insert into bitboard values('knight24',
 ('00000000'
||'00000000'
||'00000000'
||'00000010'
||'00000100'
||'00000000'
||'00000100'
||'00000010'
)::bit(64));

insert into bitboard values('knight25',
 ('00000000'
||'00000000'
||'01000000'
||'00100000'
||'00000000'
||'00100000'
||'01000000'
||'00000000'
)::bit(64));

insert into bitboard values('knight26',
 ('00000000'
||'00000000'
||'10100000'
||'00010000'
||'00000000'
||'00010000'
||'00100000'
||'00000000'
)::bit(64));

insert into bitboard values('knight27',
 ('00000000'
||'00000000'
||'01010000'
||'10001000'
||'00000000'
||'10001000'
||'01010000'
||'00000000'
)::bit(64));

insert into bitboard values('knight28',
 ('00000000'
||'00000000'
||'00101000'
||'01000100'
||'00000000'
||'01000100'
||'00101000'
||'00000000'
)::bit(64));

insert into bitboard values('knight29',
 ('00000000'
||'00000000'
||'00010100'
||'00100010'
||'00000000'
||'00100010'
||'00010100'
||'00000000'
)::bit(64));

insert into bitboard values('knight30',
 ('00000000'
||'00000000'
||'00001010'
||'00010001'
||'00000000'
||'00010001'
||'00001010'
||'00000000'
)::bit(64));

insert into bitboard values('knight31',
 ('00000000'
||'00000000'
||'00000101'
||'00001000'
||'00000000'
||'00001001'
||'00000000'
||'00000000'
)::bit(64));

insert into bitboard values('knight32',
 ('00000000'
||'00000010'
||'00000100'
||'00000000'
||'00000100'
||'00000010'
||'00000000'
||'00000000'
)::bit(64));


select * from bitboard;
