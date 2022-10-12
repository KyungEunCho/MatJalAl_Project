package com.example.demo.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class LoginAspect {

	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	// pointCut : 적용할 지점 또는 범위
	@Pointcut("execution(* com.example.demo..*Controller.*(..))"
			+ "&&!execution(* com.example.demo..*Controller.*login*(..))" )
	public void testAOP() {}


	// Advice : 실제 부가기능 구현부
	@Around("testAOP()")
	public Object testAOP(ProceedingJoinPoint pjp) throws Throwable {

		//before method
		logger.info("AOP test : before logic");

		// 비지니스 로직(메인 로직)
		Object result = pjp.proceed();

		//after method
		logger.info("AOP test : after logic");

		return result;

	}

}

