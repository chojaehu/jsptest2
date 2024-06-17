package com.newjeans.infra.codegroup;

import java.util.List;

public interface CodeGroupDao {
	
	
	public List<CodeGroupDto> selectList();
	public CodeGroupDto selectOne(CodeGroupDto dto);
	public int insert(CodeGroupDto dto);
	public int update(CodeGroupDto dto); 
	public int updatedele(CodeGroupDto dto);

}
