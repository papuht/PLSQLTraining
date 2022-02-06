CREATE OR REPLACE PROCEDURE AddSkill(
	InputId IN Skills.id%type,
	inputAttr_key IN Skills.attr_key%type,
	inputSkillName IN Skills.skillName%type,
	inputSkillDesc IN Skills.skillDesc%type
	)
AS
BEGIN
	INSERT INTO Skills (id, attr_key, skillName, skillDesc) VALUES (InputId, inputAttr_key, inputSkillName, inputSkillDesc);
END;
/