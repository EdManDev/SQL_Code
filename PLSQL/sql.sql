CREATE TABLE your_table(
    person_id NUMBER GENERATED BY DEFAULT AS IDENTITY,
    name VARCHAR2(255),
    isadmin  NUMBER(1),
    sales NUMBER(1),
    dates date,
    PRIMARY KEY(person_id)
);

CREATE TABLE user_table(
    user_id NUMBER GENERATED BY DEFAULT AS IDENTITY,
    email VARCHAR2(255),
    password VARCHAR2(255),
    isadmin NUMBER,
    token VARCHAR2(255),
    PRIMARY KEY(user_id)
);