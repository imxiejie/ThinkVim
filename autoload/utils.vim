"1~9:tab 1~9 or buffer 1~9
function! utils#tab_buf_switch(num) abort
		execute 'normal '."\<Plug>AirlineSelectTab".a:num
endfunction