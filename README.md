# terraform_vpc

-- install terraform.
-- add access_key and secret_access_key to provider.tf file.
-- run "terraform init"
-- run "terraform apply"

Question Answers about project:

2.What type of database solution would be feasible for the application ?
-- Mixed type DB - Both rdms (Amazon RDS Postgrsql) and no-sql with Replica Option along with Redis and Kafka.So the main db will be redis for faster response.and fallback db will be postgresql.In this project i provide sample of mysql.

3.What if the solution is a hybrid architecture where some country enforces that their user data has to be stored in a local database ?
-- In this case DB instance will remain on premises and need to ensure DB high availability and backup solution, replication and calculate concurrent DB Usages.

4.If hybrid then what would be the connection medium between cloud and on-prem?
-- This problem statement can be solved either store database in local prmises and attach a public ip to it so that application can reach to it or 
create a VPN tunneling from aws to local database host.

5.How will fault tolerance and global scalability be made sure?
-- Although application is build on monolithic architecture we need to configure multiple applications stack in different zone with a frontend load balance. Auto scale is built in feature of cloud

6.Discuss about the application/infrastructure security measures and cost optimization strategies.
-- As this application is hosted in private vpc and cloudflare can attach infront as a waf security concern can be handled and as if we store database in local database host which is most likely secure if we use vpn tunneling.

further most costly service in aws is rds we can eliminate db transaction from rds to local db for cost optimization.
