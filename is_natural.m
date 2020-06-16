## Determine if a matrix contains only natural numbers
function [status] = is_natural(m)
 status = false;
 if imag(m(1, 1)) == 0
  if imag(m(2, 1)) == 0
   if imag(m(3, 1)) == 0
    status = true;
   endif
  endif
 endif
endfunction
