---Process 1
process (en) is
  begin
    if en = '1' then
      out1 <= d;
    end if;
  end process;

-- Process 2
process(d,en) is
  begin
  if en = '1' and d = '0';
else
  out 2 <= '1';
end if;
end process;

--Process 3
process (en) is
begin
  out 3 <= d;
end if;
end process;

--Process 4
process (d) is
  begin
    if en = '1' then
    out4 <= d;
  end if;
end process;
