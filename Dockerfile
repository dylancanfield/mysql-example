From mysql:5.6
# This is just an exmaple of how you can use environment variables.
# the parent image uses this variable to set the root password
# In a non-example context, you would want a secure secrets management
# system to populate this variable
ENV MYSQL_ROOT_PASSWORD supersecret
# Just copy in the sql files relevant to this test
# the parent image uses the dest directory to pre-populate MySQL data before starting
# the container. Since no data is persistent, this loading will happen
# on every startup
COPY db-dump/test_db/employees.sql db-dump/test_db/load_departments.dump db-dump/test_db/load_employees.dump db-dump/test_db/load_dept_emp.dump db-dump/test_db/load_dept_manager.dump db-dump/test_db/load_titles.dump db-dump/test_db/load_salaries1.dump db-dump/test_db/load_salaries2.dump db-dump/test_db/load_salaries3.dump /db-dump/test_db/show_elapsed.sql docker-entrypoint-initdb.d/
