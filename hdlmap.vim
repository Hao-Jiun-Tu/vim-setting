"Mapping @ insert mode
"Verilog Coding Environment
inoremap if( if()<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i
inoremap " ""<Esc>i

"breakline
inoremap /// //-------------------------------------------------------------------------------------------------------<Esc>ji
"signal commands
inoremap //-- //-----  -----<Esc>5hi
"block commands
inoremap //== //=======================================================================================================<CR><CR>=======================================================================================================<Esc>ki<Right><Space>

"always block
inoremap begin<CR> begin<CR><CR>end<Esc>ki<Tab>
inoremap case( case()<CR>endcase<Esc>ko<Tab>default: ;<Esc><Home>kwwa
inoremap @(p @(posedge clk or negedge rstn) begin<CR><CR>end<Esc><Home>2k3wha
inoremap @(n @(negedge ) begin<CR><CR>end<Esc>2k<End>6hi
inoremap <=<Space> <= #1 <Esc>i
inoremap @(* @(*) begin<CR>end<Esc>ko<Tab>
inoremap task<Space> task<Space>;<CR>begin<CR><CR>end<CR>endtask<Esc><Home>4kwi
inoremap initial<Space> initial<Space>begin<CR><CR>end<Esc>ki<Tab>
inoremap module<Space> module<Space>(<CR><CR>);<CR><CR>endmodule<Esc>5kwwi
inoremap for( for(; ;) begin<CR><CR>end<Esc>kk<Home>wa
inoremap repeat( repeat()<Esc>i
inoremap while( while(){<CR><CR>}<Esc>2kwa
inoremap $dis $display("");<Esc>2hi
inoremap fopen fopen("");<Esc>2hi
inoremap fclose fclose();<Esc>hi
inoremap fdis fdisplay(, "");<Esc>5hi
"I/O port connections
inoremap <C-p> <Esc>i<Tab>.<Tab><Tab>(),<Esc>ji
    

"Command shortcuts @ normal mode
"make serial numbers    "has been store @reg_a(+) reg_b(-)
nnoremap <F4> yyp<C-a>
"add define
nnoremap <C-i> i`include ""<Esc>i
nnoremap <C-d> i`define 
nnoremap <C-RightMouse> i`ifdef<CR><CR>`endif<Esc>ki<Tab>

