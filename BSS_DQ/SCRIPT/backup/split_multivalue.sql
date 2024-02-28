select 
id,
chrg_code,
chrg_amount,
chrg_claim_date,
x.token,
x.nr
--row_number() over(partition by id)
from landing.bss_ld, unnest(string_to_array(chrg_code,']')) with ordinality as x(token,nr) --on true
--where id in ('LD1531001818','LD1823342555','LD1613050005','LD2308880832')
--where id in ('LD2308880832')
--where chrg_code like '%]%'
--where id in (
--'LD2226650015',
--'LD2110964697',
--'LD2112450001',
--'LD2112619052',
--'LD2112650000'
--)