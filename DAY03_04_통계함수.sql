/*
    통계 함수(집계 함수)
    1. 합계   : SUM(EXPR)
    2. 평균   : AVG(EXPR)
    3. 최대값 : MAX(EXPR)
    4. 최소값 : MIN(EXPR)
    5. 개수   : COUNT(EXPR)
*/

-- EMPLOYEE_T 테이블

-- 1. 전체 사원의 기본급 합계 조회하기
SELECT SUM(SALARY)
  FROM EMPLOYEE_T;

-- 2. 전체 사원의 기본급 평균 조회하기
SELECT AVG(SALARY)
  FROM EMPLOYEE_T;

-- 3. 전체 사원의 기본급 최대값 조회하기
SELECT MAX(SALARY)
  FROM EMPLOYEE_T;

-- 4. 전체 사원의 기본급 최소값 조회하기
SELECT MIN(SALARY)
  FROM EMPLOYEE_T;
  

-- 5. 전체 사원 수 조회하기
SELECT COUNT(EMP_NO) -- 사원번호의 개수
  FROM EMPLOYEE_T;
SELECT COUNT(NAME)   -- 이름의 개수
  FROM EMPLOYEE_T;
SELECT COUNT(*)      -- 모든 칼럼을 참조해서 개수(사원 수 구하는 용도로 추천)
  FROM EMPLOYEE_T;


-- SAMPLE_T 테이블

-- 1. 국어 점수 합계
SELECT SUM(KOR)
  FROM SAMPLE_T;

-- 2. 국어 점수 평균
SELECT AVG(KOR)
  FROM SAMPLE_T;

-- 3. 국어 점수 최대
SELECT MAX(KOR)
  FROM SAMPLE_T;

-- 4. 국어 점수 최소
SELECT MIN(KOR)
  FROM SAMPLE_T;

-- 5. 전체 학생 수
SELECT COUNT(*)
  FROM SAMPLE_T;


-- HR 계정으로 접속

-- 1. 전체 연봉 합계
SELECT SUM(SALARY)
  FROM EMPLOYEES;


-- 2. 커미션 평균 (커미션 = COMMISSION_PCT * SALARY) -- (A, B, C) 여러개가 들어갈 수 없고, 계산식은 들어갈 수 있음.

-- 커미션을 받는 사람들'만'
SELECT COMMISSION_PCT * SALARY          -- NULL과 커미션 조합
  FROM EMPLOYEES;

SELECT AVG(COMMISSION_PCT * SALARY)     -- NULL과 커미션 조합의 평균 (NULL은 무시)
  FROM EMPLOYEES;

-- 커미션을 받지 않는 사람들까지 포함
SELECT NVL(COMMISSION_PCT, 0) * SALARY -- 0과 커미션 조합
  FROM EMPLOYEES;

SELECT AVG(NVL(COMMISSION_PCT, 0) * SALARY) -- 0과 커미션 조합의 평균(NULL 값을 0으로 대입해서 계산)
  FROM EMPLOYEES;


-- 3. 가장 먼저 입사한 사원이 입사한 날짜
SELECT MIN(HIRE_DATE)
  FROM EMPLOYEES;


-- 4. 가장 늦게 입사한 사원이 입사한 날짜
SELECT MAX(HIRE_DATE)
  FROM EMPLOYEES;


-- 5. 사원들이 근무하고 있는 부서의 개수
SELECT COUNT(DISTINCT DEPARTMENT_ID) -- 칼럼 앞에 DISTINCT 추가해야함!!!!! (COUNT 앞에 적은 실수.. 그렇게 적으면 중복 제거 되지않음.)
  FROM EMPLOYEES;






