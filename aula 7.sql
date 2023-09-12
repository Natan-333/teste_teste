--Cursores - Vetores

--Matriz=Tabela
--Cursors=Vetor

CREATE TABLE FUNCIONARIO
(
CD_FUN NUMBER(2) CONSTRAINT CD_FUN_PK PRIMARY KEY,
NM_FUN VARCHAR2(20) CONSTRAINT NM_FUN NOT NULL,
SALARIO NUMBER(10,2)CONSTRAINT SAL_NUM NOT NULL,
DT_ADM DATE
);


INSERT INTO funcionario (cd_fun, nm_fun, salario, dt_adm) VALUES (1, 'Marcel', 10000, '17-APR-23');
INSERT INTO funcionario (cd_fun, nm_fun, salario, dt_adm) VALUES (2, 'Claudia', 10000, '17-APR-23');
INSERT INTO funcionario (cd_fun, nm_fun, salario, dt_adm) VALUES (3, 'Joaquim', 10000, '17-APR-23');
INSERT INTO funcionario (cd_fun, nm_fun, salario, dt_adm) VALUES (4, 'Valéria', 10000, '17-APR-23');

Drop table funcionario cascade constraints

Declare 
    V_cd number(20): =cd_fun;
    V_nome number(10,2);
    V_sal number(10,2);
Begin
    SELECT CD_FUN , salario into v_nome, v_sal from funcionario
    where cd_fun = v_cd;
    dbms_output.put_line(v_nome ||'-'|| v_sal);
end;


-- exemplo 1
Declare
    cursor c_exive is select nm_fun, salario from funcinario;
    v_exibe c_exibe%rowtype;
Begin
    open c_exibe;
    loop
        fetch c_exibe into v_exibe;
    exit when c_exibe%notfound;
    dbms_output.put_line('nome: '||exibe.nm_fun||' - salário '||v_exibe.salario);
    end loop;
    close c_exibe;
end;
  
--exemplo 2        
DECLARE
    CURSOR C_exibe is select nm_fun, salario from funcionario;
begin
    FOR V_exibe in C_exibe loop
     DBMS_OUTPUT.PUT_LINE('NOME: ' || V_EXIBE.nm_fun ||  ' - Salário: ' || V_EXIBE.salario);
     end loop;
end;

