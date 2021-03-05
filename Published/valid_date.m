function valid=valid_date(year,month,day)
  if ~isscalar(year)||~isscalar(month)||~isscalar(day)
       valid=false;
   else 
       valid=true;
   end
   
   if year < 1 || month < 1 || day < 1
       valid=false;
   else
       valid=true;
   end
   
   if year ~= fix(year) || month ~= fix(month) || day ~= fix(day)
       valid=false;
   else
       valid=true;
   end
   if month > 12 || day > 31
       valid=false;
   else
       valid=true;
   end
   
   if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) && day <= 31
       valid=true;
   elseif (month == 4 || month == 6 || month == 9 || month == 11) && day <= 30
       valid=true;
   elseif month == 2 && day <= 28 
       valid=true;
   else
       valid=false;
   end
   
   if (year/4 == fix(year/4)  && year/100 ~= fix(year/100) ) || year/400 == fix(year/400)       
       fprintf('%d is a leap year\n',year);
   else
       fprintf('%d is not a leap year\n',year);
   end
   
   if ((year/4 == fix(year/4)  && year/100 ~= fix(year/100) ) || year/400 == fix(year/400)) && month==2
       day<=29;
   end
end