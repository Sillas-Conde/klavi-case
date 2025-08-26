SELECT * FROM KLAVI.USER_DEFINE;

SELECT * FROM KLAVI.ROLE_DEFINE;

SELECT * FROM KLAVI.ACTION_DEFINE;

SELECT * FROM KLAVI.USER_ROLE_RELA;

SELECT * FROM KLAVI.ROLE_ACTION_RELA;

SELECT 
	UD.name,
    RD.label,
    AD.description
FROM KLAVI.USER_ROLE_RELA UR
LEFT JOIN KLAVI.ROLE_ACTION_RELA RA ON 
	UR.role_id = RA.role_id
LEFT JOIN KLAVI.ACTION_DEFINE AD ON 
	RA.action_id = AD.id
LEFT JOIN KLAVI.role_define RD ON 
	RA.role_id = RD.id
LEFT JOIN KLAVI.USER_DEFINE UD ON 
	UR.user_id = UD.id
WHERE UD.name = 'Taylor';


# Answer
# role_id = 3 -> actions 2 e 6 (Create and Delete)
# role_id = 4 -> modify only
UPDATE 
	KLAVI.USER_ROLE_RELA 
SET role_id = 4 
WHERE id = 3;


