(* vars *)

  var
  err : Text; (*Probably external*)


procedure abort; external; (* External Functions *)

(* The numbers are important.... *)

procedure func_00431800(var arg0: integer);
begin
  if arg0 <> 16#6C6D5E2C then
  begin (*This is string is too long*)
    writeln(err,  "                                                                                 ");
    writeln(err, "                               ", 16#6C6D5E2C:1:16, "      ", arg0:1:16);
    flush(err);
    abort();
  end;
end;
