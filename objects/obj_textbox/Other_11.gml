
name = names[page];
voice = voices[page];
portrait_index = portraits[page];

if(!is_array(text[page])){
	text_wrapped = string_wrap(text[page], text_max_width);
	str_len = string_length(text_wrapped);
} else {
	text_array = text[page];	
	text_array_len = array_length_1d(text_array);
}

counter = 0; 