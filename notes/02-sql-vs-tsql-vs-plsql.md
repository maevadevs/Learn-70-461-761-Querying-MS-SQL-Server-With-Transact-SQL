# SQL vs T-SQL vs PL-SQL

Here is a quick overview of the difference between SQL, T-SQL, and PL-SQL.

<table>
  <thead></thead>
    <th>SQL</th>
    <th>T-SQL/Transact-SQL</th>
    <th>PL-SQL</th>
  <tbody>
    <tr>
      <td>Structured Query Language</td>
      <td>Transact Structured Query Language</td>
      <td>Procedural Language for SQL</td>
    </tr>
    <tr>
      <td>For managing most RDBMS</td>
      <td>For managing MSSQL Server</td>
      <td>For managing Oracle DB Server</td>
    </tr>
    <tr>
      <td>ANSI/ISO Standard Database Language</td>
      <td>SQL implementation for MSSQL Server</td>
      <td>SQL implementation for Oracle DB Server</td>
    </tr>
    <tr>
      <td>CRUD Operations</td>
      <td>CRUD + Programming Operations</td>
      <td>CRUD + Programming Operations</td>
    </tr>
    <tr>
      <td>Mostly used for querying and reporting data</td>
      <td>Also used for back-end programming logic of the database</td>
      <td>Also used for back-end programming logic of the database</td>
    </tr>
    <tr>
      <td>Initially developed by IBM</td>
      <td>Developed by Microsoft for MSSQL</td>
      <td>Developed by Oracle for Oracle DB Server</td>
    </tr>
    <tr>
      <td>Data-oriented language</td>
      <td>Business-logic oriented</td>
      <td>Business-logic oriented</td>
    </tr>
    <tr>
      <td>Not Turing-complete language</td>
      <td>A Turing-complete language</td>
      <td>A Turing-complete language</td>
    </tr>
    <tr>
      <td>DDL/DML</td>
      <td>DDL/DML/Procedures/Views/Functions/Triggers</td>
      <td>DDL/DML/OOP</td>
    </tr>
    <tr>
      <td>Executed one statement at a time</td>
      <td>Set of different SQL statements one after another</td>
      <td>?</td>
    </tr>
    <tr>
      <td>Declarative Statements: What but not how</td>
      <td>Procedural Statements: What and how</td>
      <td>Procedural Statements: What and how</td>
    </tr>
    <tr>
      <td>Can be embedded in T-SQL and PL-SQL</td>
      <td>Cannot be embedded in SQL</td>
      <td>Cannot be embedded in SQL</td>
    </tr>
  </tbody>
</table>
