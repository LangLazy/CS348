USE citationmonkeydb;
INSERT INTO author VALUES (1, 'Javin M');
INSERT INTO author VALUES (2, 'Rahul G');
INSERT INTO author VALUES (3, 'Rishabh R');
INSERT INTO author VALUES (4, 'Adeit D');

INSERT INTO institution VALUES (1, "University of Waterloo");
INSERT INTO institution VALUES (2, "University of Western");
INSERT INTO institution VALUES (3, "MIT");

INSERT INTO affiliated VALUES (1, 1);
INSERT INTO affiliated VALUES (2, 1);
INSERT INTO affiliated VALUES (3, 1);
INSERT INTO affiliated VALUES (4, 1);
INSERT INTO affiliated VALUES (4, 2);
INSERT INTO affiliated VALUES (1, 3);

INSERT INTO user VALUES (1, 'j23mheta@uwaterloo.ca', 'Password');
INSERT INTO user VALUES (2, 'rgudise@uwaterloo.ca', 'Password4');
INSERT INTO user VALUES (3, 'rsambare@uwaterloo.ca', 'Password3');
INSERT INTO user VALUES (4, 'a6dalal@uwaterloo.ca', 'Password2');

INSERT INTO paper VALUES (1, "480 ways to introduce ml", 2023, "Machine Learning", 
	"2", NULL, NULL, NULL, 'EN', NULL, NULL, NULL, NULL, NULL, "https://www.google.ca/", 
	"ml very nice yes, i proved halting problem"
);
INSERT INTO paper VALUES (2, "i prove hypothesis", 2010, "Math", 
	"1", NULL, NULL, NULL, 'FR', NULL, NULL, NULL, NULL, NULL, "https://www.google.ca/", 
	"n = 1, p = np proved"
);
INSERT INTO paper VALUES (3, "i bet u its done 350 times", 2223, "Society", 
	"5", NULL, NULL, NULL, 'US', NULL, NULL, NULL, NULL, NULL, "https://www.google.ca/", 
	"social good, i good"
);

INSERT INTO wrote VALUES (1, 1);
INSERT INTO wrote VALUES (2, 1);
INSERT INTO wrote VALUES (3, 1);
INSERT INTO wrote VALUES (4, 1);
INSERT INTO wrote VALUES (2, 2);
INSERT INTO wrote VALUES (3, 2);
INSERT INTO wrote VALUES (4, 2);
INSERT INTO wrote VALUES (4, 3);

INSERT INTO keywords VALUES (1, 'SVM');
INSERT INTO keywords VALUES (1, 'HVM');
INSERT INTO keywords VALUES (1, 'Perceptron');
INSERT INTO keywords VALUES (1, 'NN');
INSERT INTO keywords VALUES (1, 'Fully Connected Neural Network');
INSERT INTO keywords VALUES (1, 'MLP');
INSERT INTO keywords VALUES (1, 'Lagragraian Duel');
INSERT INTO keywords VALUES (1, 'ABCD');
INSERT INTO keywords VALUES (1, 'TEST');
INSERT INTO keywords VALUES (1, 'Calc');
INSERT INTO keywords VALUES (1, '480');
INSERT INTO keywords VALUES (1, 'Yimu');
INSERT INTO keywords VALUES (1, 'Hongyang');

INSERT INTO keywords VALUES (2, 'Calc');
INSERT INTO keywords VALUES (2, 'Math');
INSERT INTO keywords VALUES (2, 'Lagragraian Duel');
INSERT INTO keywords VALUES (2, 'TEST');

INSERT INTO keywords VALUES (3, 'Business');
INSERT INTO keywords VALUES (3, 'Finance');
INSERT INTO keywords VALUES (3, 'People');
INSERT INTO keywords VALUES (3, 'Social');
INSERT INTO keywords VALUES (3, '350');