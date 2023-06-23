USE CS348;

-- ===========================================================================
-- AUTHORS
-- ===========================================================================
INSERT INTO author VALUES (0, 'God Himself');
INSERT INTO author VALUES (1, 'Javin M');
INSERT INTO author VALUES (2, 'Rahul G');
INSERT INTO author VALUES (3, 'Rishabh R');
INSERT INTO author VALUES (4, 'Adeit D');
INSERT INTO author VALUES (5, "Ms. Lindsay Dach DVM"); 
INSERT INTO author VALUES (6, "Dr. Willow Thiel"); 
INSERT INTO author VALUES (7, "Aurelia Nicolas"); 
INSERT INTO author VALUES (8, "Hilma Klein Sr."); 
INSERT INTO author VALUES (9, "Mrs. Misty Jast Jr."); 
INSERT INTO author VALUES (10, "Mrs. Chyna Wilderman DVM"); 
INSERT INTO author VALUES (11, "Kurtis Marquardt"); 
INSERT INTO author VALUES (12, "Prof. Damien Ondricka"); 
INSERT INTO author VALUES (13, "Spencer Bauch Sr."); 
INSERT INTO author VALUES (14, "Tanner Nikolaus"); 

-- ===========================================================================
-- INSTITUTIONS 
-- ===========================================================================
INSERT INTO institution VALUES (1, "University of Waterloo");
INSERT INTO institution VALUES (2, "University of Western");
INSERT INTO institution VALUES (3, "MIT");
INSERT INTO institution VALUES (4, "Harvard");
INSERT INTO institution VALUES (5, "Google");
INSERT INTO institution VALUES (6, "Hospitals");
INSERT INTO institution VALUES (7, "Demon Corps");
INSERT INTO institution VALUES (8, "Heaven");
INSERT INTO institution VALUES (9, "Hell");

-- ===========================================================================
-- USER ASSOCIATIONS 
-- ===========================================================================
INSERT INTO affiliated VALUES (0, 1);
INSERT INTO affiliated VALUES (0, 2);
INSERT INTO affiliated VALUES (0, 3);
INSERT INTO affiliated VALUES (0, 4);
INSERT INTO affiliated VALUES (0, 5);
INSERT INTO affiliated VALUES (0, 6);
INSERT INTO affiliated VALUES (0, 7);
INSERT INTO affiliated VALUES (0, 8);
INSERT INTO affiliated VALUES (0, 9);

INSERT INTO affiliated VALUES (1, 1);
INSERT INTO affiliated VALUES (1, 3);

INSERT INTO affiliated VALUES (2, 1);

INSERT INTO affiliated VALUES (3, 1);

INSERT INTO affiliated VALUES (4, 1);
INSERT INTO affiliated VALUES (4, 2);

INSERT INTO affiliated VALUES (5, 9);
INSERT INTO affiliated VALUES (5, 8);
INSERT INTO affiliated VALUES (5, 3);

INSERT INTO affiliated VALUES (6, 2);
INSERT INTO affiliated VALUES (6, 7);

INSERT INTO affiliated VALUES (7, 5);
INSERT INTO affiliated VALUES (7, 4);

INSERT INTO affiliated VALUES (8, 6);

INSERT INTO affiliated VALUES (9, 3);

INSERT INTO affiliated VALUES (10, 4);

INSERT INTO affiliated VALUES (11, 9);

INSERT INTO affiliated VALUES (12, 8);
INSERT INTO affiliated VALUES (12, 7);

INSERT INTO affiliated VALUES (13, 6);

INSERT INTO affiliated VALUES (14, 3);

-- ===========================================================================
-- users 
-- ===========================================================================
INSERT INTO user VALUES (0, 'rherzog@gmail.com', 'Test1');
INSERT INTO user VALUES (1, 'j23mheta@uwaterloo.ca', 'Password');
INSERT INTO user VALUES (2, 'rgudise@uwaterloo.ca', 'Password4');
INSERT INTO user VALUES (3, 'rsambare@uwaterloo.ca', 'Password3');
INSERT INTO user VALUES (4, 'a6dalal@uwaterloo.ca', 'Password2');
INSERT INTO user VALUES (5, 'lisette.langosh@gmail.com', 'Test1');
INSERT INTO user VALUES (6, 'erna.sipes@hotmail.com', 'Test1');
INSERT INTO user VALUES (9, 'murray.ian@hotmail.com', 'Test1');
INSERT INTO user VALUES (12, 'destin57@gmail.com', 'Test1');
INSERT INTO user VALUES (13, 'powlowski.maida@yahoo.com', 'Test1');


-- ===========================================================================
-- PAPERS
-- ===========================================================================
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
INSERT INTO paper VALUES (4, "Deep learning for image recognition: A comprehensive survey", 2023, "Machine Learning", 
	"2", NULL, NULL, NULL, 'EN', NULL, NULL, NULL, NULL, NULL, "https://www.google.ca/", 
	"This comprehensive survey paper explores the application of deep learning techniques in image recognition tasks. It provides an overview of different deep learning architectures and algorithms commonly used in this field. The survey examines various datasets, evaluation metrics, and benchmarking techniques employed for image recognition tasks. Additionally, it discusses the challenges and future directions of deep learning in advancing image recognition capabilities. This paper aims to serve as a valuable resource for researchers and practitioners interested in the field of computer vision and deep learning."
);
INSERT INTO paper VALUES (5, "The impact of climate change on global food security", 2023, "Environmental Science/Agriculture", 
	"2", NULL, NULL, NULL, 'EN', NULL, NULL, NULL, NULL, NULL, "https://www.google.ca/", 
	"Climate change poses a significant threat to global food security, impacting agricultural systems and food production worldwide. This paper investigates the implications of climate change on various aspects of food security, including crop yields, water availability, and distribution networks. It synthesizes current scientific literature and provides insights into potential adaptation strategies to mitigate the adverse effects of climate change on food security. The findings of this study contribute to the understanding of the complex relationship between climate change and global food systems, facilitating informed decision-making for sustainable agriculture."
);
INSERT INTO paper VALUES (6, "Quantum computing: An overview and future prospects", 2023, "Quantum Physics/Computer Science", 
	"2", NULL, NULL, NULL, 'EN', NULL, NULL, NULL, NULL, NULL, "https://www.google.ca/", 
	"Quantum computing represents a revolutionary paradigm that holds great promise for solving computationally intensive problems beyond the capabilities of classical computers. This paper presents an overview of the fundamental principles underlying quantum computing and highlights recent advancements in quantum algorithms and hardware implementations. It discusses the potential applications of quantum computing in various domains, such as cryptography, optimization, and simulation. By analyzing the current state of the field and future prospects, this paper aims to provide researchers and practitioners with a comprehensive understanding of the evolving field of quantum computing"
);
INSERT INTO paper VALUES (7, "The role of microbiota in human health and disease", 2023, "Microbiology/Health Sciences", 
	"2", NULL, NULL, NULL, 'EN', NULL, NULL, NULL, NULL, NULL, "https://www.google.ca/", 
	"The human microbiota, comprising trillions of microorganisms residing in and on the human body, plays a crucial role in maintaining human health and susceptibility to diseases. This paper reviews the current knowledge on the interactions between the microbiota and the human host, focusing on the impact of microbiota composition on disease development, immune function, and overall well-being. It discusses emerging research in the field, including the role of probiotics and fecal microbiota transplantation in restoring microbiota balance. The insights provided in this review contribute to advancing our understanding of the complex dynamics between the microbiota and human health."
);
INSERT INTO paper VALUES (8, "Exploring the potential of gene editing in treating genetic disorders", 2023, "Genetics/Biotechnology", 
	"2", NULL, NULL, NULL, 'EN', NULL, NULL, NULL, NULL, NULL, "https://www.google.ca/", 
	"Gene editing technologies, such as CRISPR-Cas9, have revolutionized the field of genetics by offering precise and efficient tools to modify the genetic code. This paper explores the potential of gene editing in treating genetic disorders, including monogenic diseases and complex disorders with a genetic component. It discusses the challenges and ethical considerations associated with gene editing and examines the current progress in clinical applications of this technology. The findings presented in this paper provide valuable insights into the prospects of gene editing as a transformative approach in the field of genetic medicine"
);
INSERT INTO paper VALUES (9, "The impact of social media on political discourse", 2023, "Communication Studies/Sociology", 
	"2", NULL, NULL, NULL, 'EN', NULL, NULL, NULL, NULL, NULL, "https://www.google.ca/", 
	"Social media platforms have become ubiquitous in today's society and have significantly influenced political discourse. This paper investigates the impact of social media on political communication, analyzing the ways in which platforms like Facebook, Twitter, and Instagram shape public opinion, political participation, and election outcomes. It examines the spread of misinformation and the role of algorithms in shaping content visibility and user engagement. By highlighting the opportunities and challenges associated with social media in political contexts, this paper contributes to a deeper understanding of the complex interplay between technology and democracy."
);
INSERT INTO paper VALUES (10, "Advancements in renewable energy technologies: A review", 2023, "Energy Engineering/Sustainable Development", 
	"2", NULL, NULL, NULL, 'EN', NULL, NULL, NULL, NULL, NULL, "https://www.google.ca/", 
	"The transition to renewable energy sources is crucial for mitigating climate change and achieving sustainable development goals. This paper provides a comprehensive review of advancements in renewable energy technologies, including solar, wind, hydro, and biomass energy. It examines the technical, economic, and environmental aspects of these technologies, highlighting their potential for widespread deployment and integration into existing energy systems. The review also discusses policy frameworks and market trends that facilitate the transition to renewable energy. The findings presented in this paper inform policymakers, researchers, and industry stakeholders on the latest developments and challenges in the field of renewable energy."
);
INSERT INTO paper VALUES (11, "Understanding the neural mechanisms of memory formation", 2023, "Neuroscience/Cognitive Psychology", 
	"2", NULL, NULL, NULL, 'EN', NULL, NULL, NULL, NULL, NULL, "https://www.google.ca/", 
	"Memory formation is a fundamental cognitive process that underlies learning and daily life experiences. This paper delves into the neural mechanisms underlying memory formation, focusing on synaptic plasticity, long-term potentiation, and memory consolidation. It discusses the role of different brain regions and neurotransmitter systems in memory processes. Furthermore, it explores the impact of age, stress, and neurological disorders on memory function. The insights provided in this paper contribute to the understanding of memory processes and may have implications for the development of therapeutic interventions for memory-related disorders."
);
INSERT INTO paper VALUES (12, "Cryptocurrency and blockchain technology: Challenges and opportunities", 2023, "Finance/Computer Science", 
	"2", NULL, NULL, NULL, 'EN', NULL, NULL, NULL, NULL, NULL, "https://www.google.ca/", 
	"Cryptocurrency and blockchain technology have gained significant attention in recent years, disrupting traditional financial systems and opening up new avenues for financial transactions and decentralized applications. This paper examines the challenges and opportunities associated with cryptocurrencies and blockchain technology. It discusses the technical underpinnings of blockchain, including consensus mechanisms, smart contracts, and privacy considerations. It also explores the potential impacts of cryptocurrencies on financial systems, regulatory frameworks, and societal aspects. This paper aims to provide a comprehensive overview of the emerging field of cryptocurrencies and blockchain technology."
);
INSERT INTO paper VALUES (13, "The effects of exercise on mental health and well-being", 2023, "Psychology/Physical Education", 
	"2", NULL, NULL, NULL, 'EN', NULL, NULL, NULL, NULL, NULL, "https://www.google.ca/", 
	"Regular exercise has been recognized as a crucial factor in promoting mental health and well-being. This paper reviews the existing literature on the effects of exercise on mental health outcomes, such as depression, anxiety, and cognitive function. It discusses the underlying physiological and psychological mechanisms through which exercise exerts its beneficial effects on mental well-being. Additionally, it explores the optimal exercise modalities, duration, and frequency for different populations and mental health conditions. The findings presented in this paper contribute to the understanding of the role of exercise in promoting mental health and inform evidence-based interventions."
);
INSERT INTO paper VALUES (14, "The role of artificial intelligence in autonomous vehicles", 2023, "Robotics/Transportation", 
	"2", NULL, NULL, NULL, 'EN', NULL, NULL, NULL, NULL, NULL, "https://www.google.ca/", 
	"Autonomous vehicles have emerged as a transformative technology in the transportation sector, offering potential benefits such as enhanced safety, reduced congestion, and increased mobility. This paper examines the role of artificial intelligence in autonomous vehicles, including perception, decision-making, and control systems. It discusses the challenges and opportunities associated with autonomous vehicle deployment, such as legal and ethical considerations, infrastructure requirements, and societal acceptance. By addressing the key technological and societal aspects, this paper provides insights into the development and future implications of autonomous vehicles."
);
INSERT INTO paper VALUES (15, "Exploring the potential of gene therapy in cancer treatment", 2023, "Oncology/Molecular Biology", 
	"2", NULL, NULL, NULL, 'EN', NULL, NULL, NULL, NULL, NULL, "https://www.google.ca/", 
	"Gene therapy holds great promise for the treatment of various genetic disorders, including cancer. This paper explores the potential of gene therapy as a targeted and personalized approach to cancer treatment. It discusses different gene therapy strategies, such as gene delivery systems, immunotherapy-based approaches, and gene editing technologies. It also examines the challenges and limitations of gene therapy, including off-target effects and immune responses. The insights presented in this paper contribute to advancing our understanding of the potential applications of gene therapy in the field of oncology."
);
INSERT INTO paper VALUES (16, "The impact of urbanization on biodiversity conservation", 2023, "Ecology/Urban Planning", 
	"2", NULL, NULL, NULL, 'EN', NULL, NULL, NULL, NULL, NULL, "https://www.google.ca/", 
	"Rapid urbanization has significant implications for biodiversity conservation, as it leads to habitat fragmentation, loss of natural ecosystems, and disruption of ecological processes. This paper investigates the impact of urbanization on biodiversity and explores conservation strategies to mitigate the negative effects. It examines the role of urban planning, green infrastructure, and protected areas in preserving biodiversity in urban environments. Additionally, it discusses the importance of public awareness and engagement in urban conservation initiatives. The findings presented in this paper provide insights into the challenges and opportunities associated with maintaining biodiversity in urban landscapes."
);
INSERT INTO paper VALUES (17, "The influence of cultural factors on consumer behavior", 2023, "Society", 
	"2", NULL, NULL, NULL, 'EN', NULL, NULL, NULL, NULL, NULL, "https://www.google.ca/", 
	"Cultural factors play a significant role in shaping consumer behavior, influencing attitudes, preferences, and purchasing decisions. This paper examines the impact of cultural values, beliefs, and norms on consumer behavior across different societies and demographic segments. It explores the influence of cultural factors on product perception, advertising effectiveness, and brand loyalty. Additionally, it discusses the implications of cultural diversity for global marketing strategies and cross-cultural communication. The insights presented in this paper contribute to a deeper understanding of the interplay between culture and consumer behavior, aiding marketers in developing culturally sensitive approaches."
);
INSERT INTO paper VALUES (18, "The role of mindfulness meditation in stress reduction", 2023, "Mind-Body Medicine/Psychiatry", 
	"2", NULL, NULL, NULL, 'EN', NULL, NULL, NULL, NULL, NULL, "https://www.google.ca/", 
	"Mindfulness meditation has gained popularity as a practice that promotes relaxation, stress reduction, and overall well-being. This paper explores the effects of mindfulness meditation on stress reduction, emotional regulation, and cognitive functioning. It discusses the underlying mechanisms of mindfulness, such as attentional control, non-judgmental awareness, and self-compassion. Furthermore, it examines the potential applications of mindfulness meditation in therapeutic interventions for various mental health conditions. The findings presented in this paper contribute to the understanding of the benefits of mindfulness meditation and its potential as an adjunctive treatment in mental health care."
);

-- ===========================================================================
-- AUTHORS WHO WROTE PAPERS
-- ===========================================================================
INSERT INTO wrote VALUES (0, 1);
INSERT INTO wrote VALUES (1, 1);
INSERT INTO wrote VALUES (2, 1);
INSERT INTO wrote VALUES (3, 1);
INSERT INTO wrote VALUES (4, 1);

INSERT INTO wrote VALUES (0, 2);
INSERT INTO wrote VALUES (2, 2);
INSERT INTO wrote VALUES (3, 2);
INSERT INTO wrote VALUES (4, 2);

INSERT INTO wrote VALUES (0, 3);
INSERT INTO wrote VALUES (4, 3);
INSERT INTO wrote VALUES (5, 3);

INSERT INTO wrote VALUES (0, 4);
INSERT INTO wrote VALUES (6, 4);
INSERT INTO wrote VALUES (7, 4);

INSERT INTO wrote VALUES (0, 5);
INSERT INTO wrote VALUES (8, 5);
INSERT INTO wrote VALUES (9, 5);

INSERT INTO wrote VALUES (0, 6);
INSERT INTO wrote VALUES (10, 6);
INSERT INTO wrote VALUES (11, 6);

INSERT INTO wrote VALUES (0, 7);
INSERT INTO wrote VALUES (12, 7);
INSERT INTO wrote VALUES (13, 7);

INSERT INTO wrote VALUES (0, 8);
INSERT INTO wrote VALUES (14, 8);

INSERT INTO wrote VALUES (0, 9);
INSERT INTO wrote VALUES (1, 9);
INSERT INTO wrote VALUES (2, 9);

INSERT INTO wrote VALUES (0, 10);
INSERT INTO wrote VALUES (3, 10);
INSERT INTO wrote VALUES (4, 10);

INSERT INTO wrote VALUES (0, 11);
INSERT INTO wrote VALUES (5, 11);
INSERT INTO wrote VALUES (6, 11);

INSERT INTO wrote VALUES (0, 12);
INSERT INTO wrote VALUES (7, 12);
INSERT INTO wrote VALUES (8, 12);

INSERT INTO wrote VALUES (0, 13);
INSERT INTO wrote VALUES (9, 13);
INSERT INTO wrote VALUES (10, 13);

INSERT INTO wrote VALUES (0, 14);
INSERT INTO wrote VALUES (11, 14);
INSERT INTO wrote VALUES (12, 14);

INSERT INTO wrote VALUES (0, 15);
INSERT INTO wrote VALUES (13, 15);
INSERT INTO wrote VALUES (14, 15);

INSERT INTO wrote VALUES (0, 16);
INSERT INTO wrote VALUES (1, 16);

INSERT INTO wrote VALUES (0, 17);
INSERT INTO wrote VALUES (2, 17);
INSERT INTO wrote VALUES (3, 17);

INSERT INTO wrote VALUES (0, 18);
INSERT INTO wrote VALUES (4, 18);
INSERT INTO wrote VALUES (5, 18);


-- ===========================================================================
-- CITATIONS
-- ===========================================================================
INSERT INTO citations values(1, 8);
INSERT INTO citations values(1, 11);
INSERT INTO citations values(1, 14);

INSERT INTO citations values(2, 3);
INSERT INTO citations values(2, 14);
INSERT INTO citations values(2, 10);

INSERT INTO citations values(3, 11);
INSERT INTO citations values(3, 13);
INSERT INTO citations values(3, 15);
INSERT INTO citations values(3, 14);

INSERT INTO citations values(4, 7);
INSERT INTO citations values(4, 9);
INSERT INTO citations values(4, 10);

INSERT INTO citations values(5, 8);

INSERT INTO citations values(6, 11);
INSERT INTO citations values(6, 8);
INSERT INTO citations values(6, 10);
INSERT INTO citations values(6, 7);

INSERT INTO citations values(7, 16);

INSERT INTO citations values(8, 15);

INSERT INTO citations values(9, 16);

INSERT INTO citations values(10, 12);
INSERT INTO citations values(10, 15);

INSERT INTO citations values(11, 15);

INSERT INTO citations values(12, 18);

INSERT INTO citations values(15, 18);

INSERT INTO citations values(16, 18);

INSERT INTO citations values(17, 1);
INSERT INTO citations values(17, 2);
INSERT INTO citations values(17, 4);
INSERT INTO citations values(17, 6);

-- ===========================================================================
-- PAPER KEY WORDS
-- ===========================================================================
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
INSERT INTO keywords VALUES (1, "Computer Science");


INSERT INTO keywords VALUES (2, 'Calc');
INSERT INTO keywords VALUES (2, 'Math');
INSERT INTO keywords VALUES (2, 'Lagragraian Duel');
INSERT INTO keywords VALUES (2, "Computer Science");
INSERT INTO keywords VALUES (2, 'TEST');

INSERT INTO keywords VALUES (3, 'Business');
INSERT INTO keywords VALUES (3, 'Finance');
INSERT INTO keywords VALUES (3, 'People');
INSERT INTO keywords VALUES (3, 'Social');
INSERT INTO keywords VALUES (3, '350');

INSERT INTO keywords VALUES (4, "Computer Science");
INSERT INTO keywords VALUES (4, "Deep learning");
INSERT INTO keywords VALUES (4, "image recognition");
INSERT INTO keywords VALUES (4, "comprehensive survey");

INSERT INTO keywords VALUES (5, "global food security");
INSERT INTO keywords VALUES (5, "Climate change");

INSERT INTO keywords VALUES (6, "Computer Science");
INSERT INTO keywords VALUES (6, "Quantum computing");
INSERT INTO keywords VALUES (6, "future prospects");

INSERT INTO keywords VALUES (7, "Microbiota");
INSERT INTO keywords VALUES (7, "human health");
INSERT INTO keywords VALUES (7, "disease");

INSERT INTO keywords VALUES (8, "Gene editing");
INSERT INTO keywords VALUES (8, "genetic disorders");

INSERT INTO keywords VALUES (9, "Social media");
INSERT INTO keywords VALUES (9, "political discourse");

INSERT INTO keywords VALUES (10, "Renewable energy technologies");
INSERT INTO keywords VALUES (10, "review");

INSERT INTO keywords VALUES (11, "Neural mechanisms");
INSERT INTO keywords VALUES (11, "memory formation");

INSERT INTO keywords VALUES (12, "Cryptocurrency");
INSERT INTO keywords VALUES (12, "blockchain technology");
INSERT INTO keywords VALUES (12, "challenges");
INSERT INTO keywords VALUES (12, "opportunities");

INSERT INTO keywords VALUES (13, "Exercise");
INSERT INTO keywords VALUES (13, "mental health");
INSERT INTO keywords VALUES (13, "well-being");

INSERT INTO keywords VALUES (14, "Artificial intelligence");
INSERT INTO keywords VALUES (14, "autonomous vehicles");

INSERT INTO keywords VALUES (15, "Gene therapy");
INSERT INTO keywords VALUES (15, "cancer treatment");

INSERT INTO keywords VALUES (16, "Urbanization");
INSERT INTO keywords VALUES (16, "biodiversity conservation");

INSERT INTO keywords VALUES (17, "Cultural factors");
INSERT INTO keywords VALUES (17, "consumer behavior");

INSERT INTO keywords VALUES (18, " meditation");
INSERT INTO keywords VALUES (18, "stress reduction");