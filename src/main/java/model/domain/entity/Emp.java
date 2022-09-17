package model.domain.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.springframework.lang.Nullable;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor

@Entity
public class Emp {

	@Id
	private int empno;
	
	@Column
	private String ename;
	
	@Column
	private String job;
	
	@Column
	private Long mgr;
	
	@Column
	private Date hiredate;
	
	@Column
	private Double sal;
	
	@Nullable
	@Column
	private Double comm;
	
	@ManyToOne
	@JoinColumn(name = "deptno")  
	private Dept deptno;  

	@Override
	public String toString() {
		return "Employee [사원 아이디 = " + empno + ", 사원명 = " + ename + ", 급여 = " + sal + ", 부서 = " + deptno.getDname() + "]";
	}
}