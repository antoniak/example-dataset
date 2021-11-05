SELECT count(*) FROM R,S,T WHERE 
((R.A_s >= S.A_s AND R.A_s <= S.A_e) OR (S.A_s >= R.A_s AND S.A_s <= R.A_e))
AND
((R.B_s >= S.B_s AND R.B_s <= S.B_e) OR (S.B_s >= R.B_s AND S.B_s <= R.B_e))
AND
((R.C_s >= S.C_s AND R.C_s <= S.C_e AND R.C_s >= T.C_s AND R.C_s <= T.C_e) OR (S.C_s >= R.C_s AND S.C_s <= R.C_e AND S.C_s >= T.C_s AND S.C_s <= T.C_e) OR (T.C_s >= R.C_s AND T.C_s <= R.C_e AND T.C_s >= S.C_s AND T.C_s <= S.C_e));