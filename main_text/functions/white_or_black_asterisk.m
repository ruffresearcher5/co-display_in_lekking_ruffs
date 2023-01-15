function text_color = white_or_black_asterisk( L,response_matrix )
%allows for independent selection of a color for astrisks in the final
%plots based on maximum values
[ cops_in_lek] = max(response_matrix);
[cops] = Find_max_per_lek(L, response_matrix);

if max(cops_in_lek)==cops
    text_color='white';
else
    text_color='black';
end

