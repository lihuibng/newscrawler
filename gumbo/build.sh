#/bin/bash
gcc -std=c99 -fpic parser.c parser.h insertion_mode.h gumbo.h attribute.h error.h tokenizer.h tokenizer_states.h utf8.h util.h vector.h -c
gcc -std=c99 -fpic util.c util.h gumbo.h parser.h -c 
gcc -std=c99 -fpic attribute.c attribute.h gumbo.h util.h -c 
gcc -std=c99 -fpic error.c error.h gumbo.h parser.h string_buffer.h util.h vector.h -c 
gcc -std=c99 -fpic string_piece.c string_piece.h util.h -c 

gcc  -std=c99 -fpic char_ref.c char_ref.h  error.h utf8.h util.h string_piece.h -c 
gcc -std=c99 -fpic string_buffer.c string_buffer.h gumbo.h string_piece.h -c 
gcc  -std=c99 -fpic  gumbo.h  tag.c -c 
gcc -std=c99 -fpic tokenizer.c tokenizer.h tokenizer_states.h token_type.h gumbo.h attribute.h char_ref.h error.h  parser.h string_buffer.h  string_piece.h utf8.h util.h vector.h -c 
gcc -std=c99 -fpic utf8.c utf8.h gumbo.h error.h parser.h util.h vector.h  -c 
gcc -std=c99 -fpic vector.c vector.h util.h -c 
gcc -fpic -shared *.o -o libgumbo.so
