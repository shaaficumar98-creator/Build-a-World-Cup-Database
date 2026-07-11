camper@codespaces-cf51a2:/workspace/project$ psql --username=freecodecamp --dbname=postgres
psql (12.22 (Ubuntu 12.22-0ubuntu0.20.04.4))
Type "help" for help.

postgres=> CREATE DATABASE worldcup;
CREATE DATABASE
postgres=> \c worldcup
You are now connected to database "worldcup" as user "freecodecamp".
worldcup=> CREATE TABLE teams(
worldcup(>    team_id SERIAL PRIMARY KEY,
worldcup(>    name VARCHAR(30) UNIQUE NOT NULL
worldcup(> );
CREATE TABLE
worldcup=> CREATE TABLE games(
worldcup(>    game_id SERIAL PRIMARY KEY,
worldcup(>    year INT NOT NULL,
worldcup(>    round VARCHAR(30) NOT NULL,
worldcup(>    winner_id INT NOT NULL REFERENCES teams(team_id),
worldcup(>    opponent_id INT NOT NULL REFERENCES teams(team_id),
worldcup(>    winner_goals INT NOT NULL,
worldcup(>    opponent_goals INT NOT NULL
worldcup(> );
CREATE TABLE
worldcup=> \d
                  List of relations
 Schema |       Name        |   Type   |    Owner     
--------+-------------------+----------+--------------
 public | games             | table    | freecodecamp
 public | games_game_id_seq | sequence | freecodecamp
 public | teams             | table    | freecodecamp
 public | teams_team_id_seq | sequence | freecodecamp
(4 rows)

worldcup=> chmod +x insert_data.sh
worldcup-> ^C




camper: /project$ 
camper: /project$ chmod +x insert_data.sh
camper: /project$ ./insert_data.sh
TRUNCATE TABLE
Inserted team: France
Inserted team: Croatia
Inserted game: 2018 Final -> France vs Croatia
Inserted team: Belgium
Inserted team: England
Inserted game: 2018 Third Place -> Belgium vs England
Inserted game: 2018 Semi-Final -> Croatia vs England
Inserted game: 2018 Semi-Final -> France vs Belgium
Inserted team: Russia
Inserted game: 2018 Quarter-Final -> Croatia vs Russia
Inserted team: Sweden
Inserted game: 2018 Quarter-Final -> England vs Sweden
Inserted team: Brazil
Inserted game: 2018 Quarter-Final -> Belgium vs Brazil
Inserted team: Uruguay
Inserted game: 2018 Quarter-Final -> France vs Uruguay
Inserted team: Colombia
Inserted game: 2018 Eighth-Final -> England vs Colombia
Inserted team: Switzerland
Inserted game: 2018 Eighth-Final -> Sweden vs Switzerland
Inserted team: Japan
Inserted game: 2018 Eighth-Final -> Belgium vs Japan
Inserted team: Mexico
Inserted game: 2018 Eighth-Final -> Brazil vs Mexico
Inserted team: Denmark
Inserted game: 2018 Eighth-Final -> Croatia vs Denmark
Inserted team: Spain
Inserted game: 2018 Eighth-Final -> Russia vs Spain
Inserted team: Portugal
Inserted game: 2018 Eighth-Final -> Uruguay vs Portugal
Inserted team: Argentina
Inserted game: 2018 Eighth-Final -> France vs Argentina
Inserted team: Germany
Inserted game: 2014 Final -> Germany vs Argentina
Inserted team: Netherlands
Inserted game: 2014 Third Place -> Netherlands vs Brazil
Inserted game: 2014 Semi-Final -> Argentina vs Netherlands
Inserted game: 2014 Semi-Final -> Germany vs Brazil
Inserted team: Costa Rica
Inserted game: 2014 Quarter-Final -> Netherlands vs Costa Rica
Inserted game: 2014 Quarter-Final -> Argentina vs Belgium
Inserted game: 2014 Quarter-Final -> Brazil vs Colombia
Inserted game: 2014 Quarter-Final -> Germany vs France
Inserted team: Chile
Inserted game: 2014 Eighth-Final -> Brazil vs Chile
Inserted game: 2014 Eighth-Final -> Colombia vs Uruguay
Inserted team: Nigeria
Inserted game: 2014 Eighth-Final -> France vs Nigeria
Inserted team: Algeria
Inserted game: 2014 Eighth-Final -> Germany vs Algeria
Inserted game: 2014 Eighth-Final -> Netherlands vs Mexico
Inserted team: Greece
Inserted game: 2014 Eighth-Final -> Costa Rica vs Greece
Inserted game: 2014 Eighth-Final -> Argentina vs Switzerland
Inserted team: United States
Inserted game: 2014 Eighth-Final -> Belgium vs United States
camper: /project$ SELECT COUNT(*) FROM teams;
bash: syntax error near unexpected token `('
camper: /project$ SELECT COUNT * FROM teams;
bash: SELECT: command not found
camper: /project$ SELECT COUNT(*) FROM games;
bash: syntax error near unexpected token `('
camper: /project$ $ chmod +x queries.sh
bash: $: command not found
camper: /project$ ./queries.sh
bash: ./queries.sh: Permission denied
camper: /project$ chmod +x script1.sh script2.sh
chmod: cannot access 'script1.sh': No such file or directory
chmod: cannot access 'script2.sh': No such file or directory
camper: /project$ chmod +x *.sh
camper: /project$ ls -l
total 16
-r--r--r-- 1 camper camper 1040 Jul 11 07:47 expected_output.txt
-r--r--r-- 1 camper camper 1280 Jul 11 07:47 games.csv
-rwxr-xr-x 1 camper camper 1925 Jul 11 07:50 insert_data.sh
-rwxr-xr-x 1 camper camper 1925 Jul 11 07:50 queries.sh
camper: /project$ git add script1.sh script2.sh
fatal: pathspec 'script1.sh' did not match any files
camper: /project$ git commit -m "Make shell scripts executable"
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   .freeCodeCamp/package-lock.json
        modified:   .freeCodeCamp/test/.cwd
        modified:   .freeCodeCamp/test/.next_command
        modified:   insert_data.sh
        modified:   queries.sh

no changes added to commit (use "git add" and/or "git commit -a")
camper: /project$ # Find all customers
camper: /project$ echo ""

camper: /project$ 
camper: /project$ # Count the number of products
camper: /project$ echo ""

camper: /project$ echo "SELECT * FROM customers;"
SELECT * FROM customers;
camper: /project$ 
camper: /project$ echo "SELECT COUNT(*) FROM products;"
SELECT COUNT(*) FROM products;
