--
-- PostgreSQL database dump
--

\restrict BddcaYljtHPfS9B18rNENmgcGt6BBgMdUaJDdJIOYXzWCNWvu5FSK4uLEyuXgEA

-- Dumped from database version 14.24 (Homebrew)
-- Dumped by pg_dump version 14.24 (Homebrew)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: car; Type: TABLE; Schema: public; Owner: annah
--

CREATE TABLE public.car (
    car_uid uuid NOT NULL,
    make character varying(50) NOT NULL,
    model character varying(50) NOT NULL,
    price numeric(19,2) NOT NULL,
    CONSTRAINT car_price_check CHECK ((price > (0)::numeric))
);


ALTER TABLE public.car OWNER TO annah;

--
-- Name: mock_data; Type: TABLE; Schema: public; Owner: annah
--

CREATE TABLE public.mock_data (
    id bigint NOT NULL,
    make character varying(50) NOT NULL,
    model character varying(50) NOT NULL,
    price character varying(50) NOT NULL
);


ALTER TABLE public.mock_data OWNER TO annah;

--
-- Name: mock_data_id_seq; Type: SEQUENCE; Schema: public; Owner: annah
--

CREATE SEQUENCE public.mock_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mock_data_id_seq OWNER TO annah;

--
-- Name: mock_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annah
--

ALTER SEQUENCE public.mock_data_id_seq OWNED BY public.mock_data.id;


--
-- Name: person; Type: TABLE; Schema: public; Owner: annah
--

CREATE TABLE public.person (
    person_uid uuid NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(50),
    gender character varying(50) NOT NULL,
    date_of_birth date NOT NULL,
    country_of_birth character varying(50) NOT NULL,
    car_uid uuid
);


ALTER TABLE public.person OWNER TO annah;

--
-- Name: mock_data id; Type: DEFAULT; Schema: public; Owner: annah
--

ALTER TABLE ONLY public.mock_data ALTER COLUMN id SET DEFAULT nextval('public.mock_data_id_seq'::regclass);


--
-- Data for Name: car; Type: TABLE DATA; Schema: public; Owner: annah
--

COPY public.car (car_uid, make, model, price) FROM stdin;
db3710ec-96af-47eb-9781-51887c86df21	land rover	stering	234889.00
29a15f9b-2899-4cd4-a4ae-0391b0020835	Honda	Civic	20000.00
\.


--
-- Data for Name: mock_data; Type: TABLE DATA; Schema: public; Owner: annah
--

COPY public.mock_data (id, make, model, price) FROM stdin;
1	Ford	GT	$1.05
2	Mitsubishi	Galant	$1.52
3	Mercedes-Benz	M-Class	$1.02
4	Audi	A6	$4.98
5	Pontiac	Grand Prix	$0.74
6	Lexus	IS	$2.82
7	Eagle	Talon	$7.89
8	Honda	Prelude	$6.80
9	Land Rover	Range Rover Sport	$9.44
10	Chrysler	Concorde	$4.59
11	Nissan	Murano	$6.67
12	Chevrolet	Tahoe	$8.01
13	GMC	Sierra 3500	$8.64
14	Mercedes-Benz	SL-Class	$6.56
15	Isuzu	Amigo	$7.90
16	Chevrolet	Express 2500	$4.07
17	Eagle	Vision	$2.65
18	Chevrolet	Cobalt SS	$2.93
19	Volvo	S40	$0.59
20	GMC	Envoy	$2.98
21	Merkur	XR4Ti	$0.49
22	Ford	Lightning	$3.75
23	Kia	Rio	$2.67
24	Ford	Focus	$8.75
25	Cadillac	CTS	$5.28
26	Honda	Pilot	$4.53
27	BMW	7 Series	$7.47
28	Chevrolet	G-Series 1500	$5.91
29	Pontiac	Firebird	$6.93
30	Mazda	RX-7	$4.72
31	Mitsubishi	Pajero	$8.21
32	BMW	X5	$3.43
33	Pontiac	6000	$3.85
34	Isuzu	Trooper	$0.37
35	Volkswagen	R32	$6.50
36	Oldsmobile	Bravada	$4.92
37	Ford	Torino	$0.72
38	Toyota	Previa	$4.83
39	Dodge	Grand Caravan	$7.93
40	Volkswagen	Jetta	$3.38
41	Acura	NSX	$8.11
42	Ford	Expedition EL	$0.18
43	GMC	Sonoma Club Coupe	$5.37
44	Volvo	S80	$3.27
45	Cadillac	Eldorado	$2.68
46	Mazda	B-Series	$0.17
47	Infiniti	QX56	$8.96
48	Cadillac	CTS	$4.63
49	Mazda	Tribute	$3.72
50	Ford	F-Series Super Duty	$8.92
51	Chevrolet	G-Series G30	$2.69
52	Nissan	Versa	$8.57
53	Mercury	Milan	$2.94
54	Subaru	Legacy	$5.08
55	Kia	Sportage	$4.15
56	Mercury	Villager	$1.42
57	Maybach	62	$6.18
58	Land Rover	LR2	$5.89
59	Chevrolet	Suburban 2500	$2.96
60	Lexus	RX	$1.90
61	Porsche	928	$1.04
62	Pontiac	Grand Prix	$7.83
63	Honda	CR-V	$5.50
64	Volkswagen	Rabbit	$2.62
65	Pontiac	Parisienne	$0.51
66	BMW	7 Series	$4.36
67	Jeep	Wrangler	$6.46
68	Nissan	370Z	$8.65
69	Cadillac	Eldorado	$8.94
70	Land Rover	Discovery	$3.14
71	Chevrolet	Metro	$3.10
72	Dodge	Ram 2500	$8.06
73	Mercedes-Benz	CLK-Class	$7.96
74	Ford	F350	$5.31
75	Chevrolet	Corvette	$7.59
76	Nissan	Pathfinder	$1.17
77	Jaguar	S-Type	$2.39
78	Hyundai	Elantra	$4.84
79	Chevrolet	S10	$3.95
80	Volkswagen	Scirocco	$9.43
81	Nissan	Sentra	$6.95
82	Audi	R8	$2.82
83	Ford	Windstar	$0.75
84	Mazda	Miata MX-5	$0.85
85	Hyundai	Elantra	$8.05
86	Infiniti	G	$4.68
87	Lexus	SC	$0.24
88	Mercedes-Benz	190E	$7.99
89	Chevrolet	Tracker	$7.02
90	Jeep	Commander	$5.64
91	Mercedes-Benz	E-Class	$2.62
92	Cadillac	DeVille	$2.76
93	Lexus	LS Hybrid	$6.21
94	Volvo	S40	$3.41
95	Lamborghini	Diablo	$7.49
96	Mitsubishi	3000GT	$0.73
97	Saab	9-5	$9.09
98	Mercedes-Benz	SL-Class	$8.21
99	Land Rover	Discovery	$3.75
100	Ford	F-Series Super Duty	$1.67
101	Dodge	Ram Van 1500	$9.25
102	Chevrolet	Silverado 2500	$9.08
103	Daewoo	Nubira	$8.27
104	Ford	Mustang	$3.62
105	Subaru	Forester	$4.89
106	Volkswagen	Phaeton	$1.90
107	GMC	Vandura 1500	$1.72
108	Saab	9-2X	$4.21
109	Chevrolet	Tahoe	$7.21
110	Dodge	Grand Caravan	$7.24
111	Toyota	Prius Plug-in	$5.36
112	Buick	Coachbuilder	$0.69
113	Buick	LeSabre	$8.29
114	Ford	ZX2	$0.78
115	Pontiac	Grand Am	$2.98
116	GMC	Sonoma	$8.08
117	Chevrolet	Venture	$7.06
118	Shelby	GT500	$5.62
119	Volvo	S60	$6.87
120	Daewoo	Leganza	$5.28
121	Audi	S8	$6.92
122	Cadillac	SRX	$3.16
123	Volkswagen	Golf	$2.58
124	Ford	Mustang	$2.36
125	Nissan	Xterra	$0.87
126	GMC	Jimmy	$2.85
127	Chrysler	PT Cruiser	$4.80
128	Ford	Mustang	$5.78
129	Ford	Mustang	$1.30
130	Toyota	T100	$5.96
131	Mercedes-Benz	R-Class	$0.90
132	Ford	F150	$7.20
133	Mercury	Capri	$0.33
134	Ford	Econoline E250	$1.99
135	Nissan	Armada	$1.26
136	Suzuki	Grand Vitara	$6.46
137	Pontiac	Bonneville	$7.97
138	Volkswagen	rio	$5.67
139	Chevrolet	Camaro	$8.50
140	GMC	Safari	$6.96
141	Buick	Regal	$1.07
142	Toyota	Tacoma Xtra	$3.75
143	Audi	S5	$1.19
144	Toyota	Sequoia	$5.03
145	Pontiac	Grand Prix	$1.18
146	Jaguar	XJ Series	$0.44
147	Nissan	Altima	$1.01
148	Daewoo	Nubira	$5.50
149	MINI	Cooper	$8.73
150	GMC	Savana	$1.23
151	Chevrolet	3500	$8.86
152	Ford	F350	$5.90
153	Isuzu	Hombre	$0.89
154	Honda	Pilot	$2.85
155	Maserati	GranTurismo	$6.67
156	GMC	Sierra 2500	$9.45
157	Cadillac	Eldorado	$4.34
158	BMW	X3	$8.57
159	BMW	M3	$5.73
160	Ford	Bronco	$9.26
161	Chevrolet	Astro	$8.17
162	Dodge	Grand Caravan	$9.55
163	Lexus	ES	$6.14
164	Pontiac	Bonneville	$1.68
165	Audi	100	$7.20
166	Kia	Sportage	$0.69
167	Chevrolet	Express 1500	$7.92
168	Cadillac	XLR	$5.67
169	Mercury	Montego	$9.88
170	Ford	Freestar	$6.17
171	Subaru	Forester	$3.46
172	BMW	7 Series	$1.14
173	BMW	325	$1.95
174	Mazda	CX-7	$6.30
175	Ford	F350	$0.76
176	MINI	Cooper	$0.42
177	Subaru	Leone	$8.48
178	GMC	Suburban 1500	$8.42
179	Pontiac	Firebird Formula	$3.27
180	Land Rover	Defender 90	$5.07
181	Chrysler	Town & Country	$4.83
182	Dodge	Magnum	$0.10
183	Nissan	Cube	$2.87
184	Jaguar	X-Type	$0.08
185	Mazda	B-Series Plus	$0.51
186	Buick	Skylark	$1.23
187	Nissan	Pathfinder	$8.73
188	Mercury	Tracer	$4.79
189	Saturn	Ion	$1.69
190	Ford	E250	$5.39
191	Porsche	911	$9.64
192	GMC	Yukon XL 1500	$5.03
193	Porsche	Boxster	$9.22
194	GMC	Savana 1500	$6.77
195	Maybach	57	$5.37
196	Saab	9000	$2.76
197	Volkswagen	Cabriolet	$7.03
198	Infiniti	M	$3.68
199	GMC	Savana 3500	$4.59
200	Mitsubishi	Raider	$4.18
201	Mercedes-Benz	SLK55 AMG	$3.32
202	Subaru	Impreza	$8.57
203	GMC	Safari	$8.49
204	Mercedes-Benz	R-Class	$2.07
205	GMC	Jimmy	$4.85
206	Shelby	GT350	$2.13
207	Honda	Odyssey	$9.09
208	Acura	NSX	$1.43
209	Nissan	Sentra	$6.44
210	Ferrari	599 GTB Fiorano	$8.93
211	Ford	Flex	$0.43
212	Chevrolet	2500	$9.96
213	Kia	Sedona	$1.88
214	Chevrolet	Monte Carlo	$8.96
215	Dodge	Grand Caravan	$8.10
216	Volkswagen	Golf	$5.77
217	BMW	325	$1.78
218	Chevrolet	Caprice	$9.94
219	Suzuki	SJ	$7.21
220	Mitsubishi	Truck	$8.31
221	Ford	Taurus	$5.55
222	Mitsubishi	Endeavor	$9.67
223	Pontiac	Firebird	$3.72
224	Audi	4000	$4.62
225	Geo	Metro	$3.54
226	Honda	Passport	$8.27
227	Volkswagen	Cabriolet	$1.32
228	Plymouth	Prowler	$0.09
229	Volkswagen	Cabriolet	$7.75
230	Volvo	V70	$9.00
231	Mazda	Mazda6	$9.98
232	Mitsubishi	Excel	$1.30
233	Dodge	Charger	$7.62
234	Nissan	Pathfinder	$7.44
235	Toyota	Matrix	$5.27
236	Pontiac	Fiero	$8.56
237	GMC	Yukon XL 1500	$9.07
238	Morgan	Aero 8	$4.92
239	Ford	Escort	$9.84
240	Infiniti	G35	$3.14
241	Ferrari	F430	$6.60
242	Pontiac	Grand Am	$8.41
243	Fillmore	Fillmore	$3.04
244	Plymouth	Acclaim	$4.08
245	Audi	S4	$7.12
246	Volkswagen	CC	$5.96
247	Dodge	Ram 2500 Club	$0.87
248	Subaru	Legacy	$7.31
249	Mazda	MPV	$5.35
250	Ford	F250	$7.78
251	Pontiac	Parisienne	$7.06
252	Ford	F150	$2.11
253	Ford	F150	$7.09
254	Mercedes-Benz	E-Class	$5.94
255	Volkswagen	Scirocco	$4.82
256	GMC	Sierra 1500	$6.92
257	Mercury	Monterey	$3.94
258	Nissan	Armada	$0.46
259	Dodge	Ram 2500	$5.97
260	Scion	xB	$2.06
261	Chevrolet	Tracker	$8.98
262	Honda	Accord	$2.83
263	Hummer	H1	$0.96
264	Volkswagen	New Beetle	$2.78
265	Lotus	Esprit	$1.82
266	Pontiac	Grand Prix	$3.07
267	Porsche	911	$8.13
268	GMC	3500 Club Coupe	$1.79
269	Volvo	S60	$6.26
270	Chevrolet	Impala	$5.37
271	Mazda	RX-8	$2.40
272	Dodge	Stealth	$7.54
273	Acura	RL	$0.07
274	Lotus	Esprit	$4.62
275	Chrysler	Pacifica	$5.44
276	Toyota	Tercel	$8.35
277	Mercedes-Benz	CLK-Class	$2.36
278	Cadillac	STS	$8.53
279	GMC	1500 Club Coupe	$8.90
280	Subaru	Legacy	$2.85
281	Isuzu	Amigo	$5.97
282	Mitsubishi	Montero	$6.53
283	Lincoln	MKX	$3.84
284	GMC	Sonoma	$0.32
285	Dodge	Neon	$4.34
286	GMC	Jimmy	$7.90
287	Ford	F150	$3.42
288	Acura	Integra	$4.46
289	Bentley	Brooklands	$0.20
290	Chevrolet	Lumina	$8.52
291	Honda	S2000	$5.95
292	Jeep	Cherokee	$1.69
293	Mazda	MX-5	$1.63
294	GMC	Envoy	$7.35
295	Land Rover	Range Rover	$7.12
296	Toyota	Matrix	$4.49
297	Ford	Ranger	$2.19
298	GMC	Rally Wagon G2500	$6.60
299	Pontiac	Grand Prix	$0.18
300	Cadillac	Fleetwood	$2.87
301	Mitsubishi	Galant	$2.62
302	Subaru	B9 Tribeca	$2.48
303	Porsche	911	$5.00
304	Jaguar	XJ Series	$3.68
305	Cadillac	Escalade	$9.39
306	Audi	A4	$9.43
307	Ford	Explorer	$9.32
308	Jaguar	XK Series	$2.58
309	McLaren	MP4-12C	$2.56
310	Ford	Focus	$7.58
311	Audi	S4	$5.77
312	Hyundai	Scoupe	$4.78
313	Volkswagen	Tiguan	$8.70
314	Nissan	Sentra	$1.96
315	Dodge	Ram Van 2500	$4.32
316	Hyundai	Sonata	$4.97
317	Mitsubishi	Pajero	$6.29
318	BMW	3 Series	$0.86
319	Chevrolet	Avalanche	$1.97
320	Oldsmobile	Achieva	$4.31
321	Mercedes-Benz	C-Class	$2.95
322	Ford	Mustang	$4.25
323	Buick	Estate	$6.55
324	Isuzu	Oasis	$6.11
325	Buick	Rainier	$2.38
326	Chevrolet	Corvette	$9.62
327	GMC	Canyon	$1.27
328	Porsche	Cayenne	$1.41
329	Ford	Mustang	$2.77
330	Chevrolet	Suburban 2500	$9.84
331	MINI	Clubman	$2.88
332	Ford	F-Series	$5.85
333	Mitsubishi	Sigma	$6.45
334	Chevrolet	Camaro	$3.41
335	Chevrolet	Suburban 2500	$8.67
336	Isuzu	Amigo	$6.33
337	Bentley	Continental GT	$5.15
338	Mercury	Mountaineer	$8.71
339	Mazda	Mazda6	$1.40
340	Kia	Optima	$5.07
341	Audi	Quattro	$2.56
342	Dodge	Charger	$9.51
343	Hyundai	Scoupe	$8.56
344	Mercedes-Benz	M-Class	$7.53
345	Toyota	Tundra	$2.78
346	Suzuki	Swift	$5.06
347	Volvo	S80	$4.88
348	Jeep	Wrangler	$9.10
349	Mitsubishi	Pajero	$3.27
350	Suzuki	Grand Vitara	$5.07
351	Honda	Accord	$1.92
352	Audi	riolet	$2.89
353	Kia	Spectra	$7.10
354	Dodge	Spirit	$0.23
355	Suzuki	Grand Vitara	$2.27
356	Pontiac	6000	$0.30
357	Maserati	Biturbo	$1.28
358	Maybach	62	$8.88
359	Buick	Century	$8.54
360	Mazda	MX-5	$1.72
361	Toyota	Venza	$8.72
362	Subaru	Alcyone SVX	$1.98
363	BMW	M3	$3.25
364	Bentley	Continental GTC	$9.56
365	Plymouth	Grand Voyager	$6.71
366	Isuzu	Axiom	$1.57
367	Volkswagen	GTI	$5.43
368	Toyota	Corolla	$6.67
369	Chrysler	PT Cruiser	$7.28
370	Chevrolet	Express 3500	$8.16
371	BMW	3 Series	$0.88
372	Ford	F250	$7.52
373	Mitsubishi	Galant	$3.72
374	Mitsubishi	Lancer Evolution	$0.47
375	BMW	530	$4.57
376	Pontiac	Parisienne	$8.84
377	Mercedes-Benz	Sprinter 3500	$5.47
378	Pontiac	Firebird	$3.47
379	Toyota	Corolla	$9.58
380	Chrysler	Aspen	$9.85
381	Toyota	Tundra	$3.48
382	Ford	Mustang	$3.66
383	Eagle	Vision	$3.13
384	Alfa Romeo	164	$3.70
385	Mazda	Mazda6 Sport	$5.98
386	Chevrolet	Blazer	$8.50
387	Mazda	B-Series	$9.04
388	Saturn	VUE	$9.98
389	Ford	Econoline E350	$5.02
390	Volkswagen	Passat	$8.39
391	Volkswagen	GTI	$2.55
392	Pontiac	Grand Prix	$9.92
393	Chevrolet	Traverse	$3.83
394	Cadillac	Escalade	$9.61
395	Chevrolet	Blazer	$9.51
396	Saab	9-5	$1.17
397	Aston Martin	DB9 Volante	$0.37
398	Dodge	Spirit	$8.46
399	Cadillac	Escalade EXT	$9.00
400	Pontiac	Grand Am	$3.93
401	Volvo	S60	$0.50
402	Honda	Accord	$4.16
403	Nissan	370Z	$0.02
404	Nissan	Armada	$8.40
405	Mercedes-Benz	W126	$2.11
406	Isuzu	Rodeo	$3.67
407	Honda	Pilot	$9.87
408	Hyundai	Genesis Coupe	$3.50
409	Volkswagen	Routan	$3.60
410	Kia	Optima	$6.25
411	Dodge	Dakota	$4.22
412	Buick	Terraza	$8.79
413	Ford	Focus	$1.49
414	Lincoln	MKZ	$8.57
415	GMC	Yukon	$9.24
416	GMC	Yukon XL 1500	$1.66
417	Pontiac	LeMans	$8.18
418	Volkswagen	Jetta	$3.57
419	GMC	3500	$2.42
420	Ford	Ranger	$1.59
421	Chevrolet	Corvette	$8.67
422	BMW	Z3	$9.71
423	Ford	Crown Victoria	$6.01
424	Toyota	Corolla	$6.58
425	Volkswagen	Cabriolet	$9.26
426	Volvo	V70	$6.51
427	Audi	A8	$6.93
428	Kia	Sportage	$0.12
429	Alfa Romeo	164	$9.02
430	Volkswagen	Cabriolet	$7.96
431	Oldsmobile	Alero	$8.12
432	Pontiac	Gemini	$4.51
433	Chevrolet	Prizm	$7.92
434	Ferrari	458 Italia	$0.17
435	GMC	1500	$3.43
436	Toyota	Land Cruiser	$3.52
437	Mitsubishi	Eclipse	$5.81
438	Infiniti	EX	$2.89
439	Saturn	Sky	$9.06
440	Chrysler	Pacifica	$3.79
441	Audi	V8	$6.97
442	Buick	Riviera	$0.17
443	Ford	Mustang	$9.06
444	Chevrolet	Avalanche 1500	$7.41
445	Buick	Enclave	$9.62
446	Nissan	Titan	$8.44
447	Geo	Tracker	$4.64
448	Honda	Civic	$1.10
449	Mazda	B-Series	$9.45
450	Chevrolet	Tahoe	$6.92
451	Audi	A8	$8.16
452	Mitsubishi	Diamante	$6.05
453	Scion	iQ	$2.89
454	Land Rover	LR3	$8.88
455	Ford	Escape	$6.23
456	Audi	A8	$0.32
457	Porsche	944	$3.75
458	Volkswagen	Jetta III	$5.60
459	Hyundai	Santa Fe	$3.88
460	Porsche	911	$0.72
461	BMW	5 Series	$4.86
462	Mercedes-Benz	S-Class	$6.22
463	Lexus	SC	$2.35
464	Mercury	Sable	$4.63
465	Oldsmobile	98	$6.32
466	Mercedes-Benz	G-Class	$5.86
467	Jeep	Cherokee	$2.29
468	Toyota	Tundra	$9.28
469	Chevrolet	Cobalt	$4.06
470	BMW	6 Series	$7.03
471	Chevrolet	Blazer	$0.02
472	Lotus	Esprit Turbo	$5.86
473	Nissan	Versa	$3.48
474	Subaru	B9 Tribeca	$7.54
475	Cadillac	DeVille	$9.06
476	Alfa Romeo	Spider	$4.59
477	Pontiac	Montana	$0.41
478	Mitsubishi	Precis	$7.85
479	Maserati	Spyder	$8.67
480	Cadillac	Escalade	$6.80
481	Pontiac	Fiero	$0.01
482	Nissan	Frontier	$4.08
483	Ford	Expedition	$7.42
484	Buick	Enclave	$7.81
485	Mitsubishi	Tundra	$3.22
486	Mitsubishi	Eclipse	$5.48
487	Mitsubishi	Montero	$2.27
488	Nissan	Quest	$6.72
489	Toyota	Sienna	$6.78
490	Toyota	Camry	$1.75
491	Isuzu	Space	$8.93
492	Mazda	626	$6.42
493	Infiniti	QX	$5.80
494	Dodge	Ram Van B150	$1.97
495	Jaguar	XJ	$1.96
496	Kia	Sedona	$2.86
497	BMW	M3	$0.78
498	Volkswagen	Phaeton	$5.89
499	BMW	5 Series	$9.76
500	Isuzu	Stylus	$6.60
501	Toyota	4Runner	$2.37
502	Subaru	Impreza WRX	$7.85
503	Land Rover	Freelander	$4.19
504	Dodge	Grand Caravan	$5.64
505	Volkswagen	GTI	$4.03
506	Porsche	Boxster	$4.15
507	Toyota	Camry Solara	$2.17
508	Honda	Accord	$1.85
509	Mitsubishi	Endeavor	$2.32
510	Chevrolet	2500	$3.18
511	Volkswagen	Corrado	$9.97
512	Mitsubishi	Mighty Max Macro	$2.23
513	Toyota	Previa	$3.42
514	Nissan	Pathfinder	$1.02
515	Chrysler	Town & Country	$5.43
516	Jaguar	XJ	$3.41
517	Chevrolet	Corsica	$9.06
518	Honda	Accord	$7.45
519	Kia	Amanti	$3.87
520	Audi	A4	$1.42
521	GMC	Vandura 2500	$8.38
522	Kia	Rio5	$4.02
523	Honda	S2000	$5.66
524	Volvo	S60	$1.83
525	Mercury	Topaz	$2.50
526	Isuzu	Hombre	$9.08
527	Maserati	GranTurismo	$8.85
528	Mercedes-Benz	C-Class	$3.34
529	Chevrolet	Suburban	$8.08
530	Lincoln	Zephyr	$4.91
531	Kia	Sedona	$7.92
532	Volvo	XC90	$6.56
533	Chevrolet	Silverado 2500	$3.41
534	Kia	Rondo	$9.44
535	Audi	S5	$6.93
536	GMC	Savana 3500	$1.09
537	Lamborghini	Gallardo	$2.99
538	Buick	Enclave	$5.45
539	Porsche	911	$8.29
540	GMC	Yukon	$0.89
541	Ram	3500	$7.46
542	GMC	Acadia	$3.22
543	Honda	Civic	$0.66
544	Toyota	Corolla	$1.65
545	Subaru	Outback	$5.30
546	Maserati	Quattroporte	$1.44
547	Honda	S2000	$10.00
548	Saab	9-4X	$3.98
549	Isuzu	Impulse	$3.11
550	Mercedes-Benz	300CE	$1.43
551	Nissan	300ZX	$1.15
552	Saturn	VUE	$3.69
553	Mazda	RX-7	$7.64
554	Kia	Optima	$3.59
555	Toyota	Sequoia	$8.16
556	Toyota	MR2	$5.25
557	Pontiac	Vibe	$2.61
558	Chevrolet	1500	$6.58
559	Pontiac	Montana	$3.66
560	Scion	xD	$1.21
561	Toyota	FJ Cruiser	$0.13
562	Infiniti	FX	$2.25
563	Scion	xD	$8.10
564	Honda	Civic	$5.90
565	Chevrolet	Corvette	$3.46
566	Toyota	Land Cruiser	$3.31
567	Isuzu	i-370	$3.16
568	BMW	745	$6.09
569	Audi	A7	$3.30
570	Lincoln	MKT	$2.52
571	Mazda	B-Series Plus	$1.67
572	GMC	Savana 1500	$6.51
573	Lincoln	Town Car	$0.75
574	Lamborghini	Murciélago	$6.91
575	Chevrolet	Venture	$1.31
576	Mercedes-Benz	E-Class	$9.90
577	Mercedes-Benz	C-Class	$1.71
578	Hyundai	Elantra	$2.45
579	Buick	Riviera	$0.36
580	BMW	525	$8.55
581	Chevrolet	Corvette	$4.36
582	Suzuki	Swift	$4.94
583	MINI	Cooper	$8.38
584	Nissan	Murano	$2.18
585	BMW	M6	$1.20
586	Dodge	Ram Van 3500	$7.98
587	BMW	5 Series	$1.74
588	Acura	RL	$8.01
589	Porsche	911	$1.19
590	Maserati	Spyder	$0.32
591	Saab	9-5	$9.14
592	Jeep	Compass	$3.38
593	Subaru	Impreza	$2.09
594	Lexus	IS-F	$0.09
595	Chrysler	PT Cruiser	$9.40
596	Toyota	RAV4	$2.54
597	Hummer	H2	$9.17
598	Saturn	Relay	$7.34
599	Honda	CR-V	$8.71
600	Honda	Fit	$8.29
601	Mitsubishi	Montero Sport	$3.05
602	Chevrolet	Sportvan G10	$4.24
603	Mercedes-Benz	W201	$4.38
604	Lamborghini	Murciélago	$5.76
605	Land Rover	Range Rover	$6.96
606	Bentley	Continental Flying Spur	$1.07
607	Pontiac	G6	$4.59
608	Cadillac	Eldorado	$2.39
609	Mitsubishi	Montero	$3.28
610	Audi	5000S	$0.16
611	Lexus	SC	$3.91
612	Acura	RL	$7.11
613	Ford	Edge	$4.90
614	Toyota	4Runner	$5.48
615	Jaguar	XK Series	$0.50
616	Honda	Pilot	$6.46
617	Audi	A8	$7.44
618	Mazda	Miata MX-5	$3.85
619	Ford	Festiva	$3.11
620	Lexus	SC	$6.39
621	Maserati	Biturbo	$6.67
622	Porsche	944	$8.04
623	BMW	M3	$3.15
624	Honda	Element	$9.18
625	Ford	Mustang	$7.79
626	Audi	100	$6.97
627	Mitsubishi	Excel	$1.34
628	Toyota	Tacoma	$5.57
629	GMC	Savana 3500	$0.57
630	Land Rover	Discovery	$3.12
631	GMC	1500	$8.62
632	Jaguar	XK Series	$5.76
633	Nissan	Murano	$1.04
634	Aston Martin	Vantage	$5.33
635	Chevrolet	Colorado	$0.50
636	Buick	Coachbuilder	$1.14
637	Nissan	Titan	$7.90
638	Acura	NSX	$0.62
639	Lexus	IS-F	$7.97
640	Maserati	430	$1.15
641	GMC	Suburban 2500	$6.25
642	Ford	Lightning	$1.10
643	Subaru	Impreza	$2.09
644	Ford	Mustang	$2.66
645	Honda	del Sol	$9.33
646	Isuzu	Rodeo	$1.32
647	Toyota	Prius	$7.31
648	Ford	Expedition	$3.21
649	Ford	Ranger	$4.82
650	Subaru	Impreza	$9.03
651	Chevrolet	Corvette	$2.70
652	Chrysler	Crossfire	$8.54
653	Volkswagen	GTI	$7.84
654	Kia	Borrego	$6.31
655	Mazda	Mazdaspeed 3	$5.24
656	Suzuki	Grand Vitara	$3.72
657	Mazda	Mazda5	$4.24
658	Plymouth	Voyager	$4.80
659	Volkswagen	Passat	$1.03
660	Ford	Courier	$5.64
661	Volkswagen	Passat	$5.64
662	Oldsmobile	Cutlass	$2.29
663	Ford	Econoline E150	$0.15
664	Mercedes-Benz	SL-Class	$4.45
665	BMW	X3	$2.29
666	Land Rover	LR2	$3.23
667	Ford	Probe	$5.39
668	Toyota	Corolla	$7.63
669	GMC	Savana 2500	$9.60
670	Dodge	Grand Caravan	$5.18
671	Pontiac	6000	$9.25
672	Ford	F250	$2.88
673	Mitsubishi	Cordia	$8.86
674	Saab	9-3	$0.87
675	Chevrolet	Camaro	$5.59
676	Mitsubishi	Lancer	$2.27
677	Chevrolet	Impala	$9.54
678	Mitsubishi	Chariot	$7.88
679	Ford	Taurus	$2.28
680	Acura	RL	$8.60
681	Ford	Thunderbird	$3.34
682	GMC	Envoy XL	$2.29
683	Dodge	Grand Caravan	$9.75
684	Ford	Bronco	$8.61
685	Mitsubishi	Tredia	$9.91
686	Chevrolet	Express 3500	$2.20
687	Cadillac	CTS	$9.89
688	Chevrolet	Astro	$3.98
689	Kia	Rio	$5.20
690	Pontiac	Grand Am	$2.80
691	Buick	Skylark	$7.57
692	Mercedes-Benz	G-Class	$4.28
693	MINI	Clubman	$1.91
694	Acura	TL	$2.83
695	Honda	Accord Crosstour	$3.68
696	Acura	TL	$9.80
697	Hyundai	Sonata	$0.50
698	Toyota	Echo	$0.04
699	Toyota	Matrix	$0.60
700	Chrysler	Sebring	$5.03
701	Kia	Sephia	$5.03
702	GMC	Envoy	$5.64
703	Honda	Accord	$2.87
704	Volkswagen	GTI	$7.73
705	Mercury	Mountaineer	$3.18
706	Saturn	S-Series	$6.40
707	Volvo	940	$3.18
708	Lamborghini	Murciélago	$9.21
709	Honda	CR-X	$8.16
710	Lamborghini	Gallardo	$8.19
711	Lincoln	Town Car	$3.52
712	Audi	S5	$4.42
713	Ford	E350	$5.65
714	Mercedes-Benz	300CE	$4.75
715	Ford	Taurus	$0.25
716	Nissan	Frontier	$2.41
717	Mitsubishi	Truck	$8.97
718	Mercedes-Benz	W201	$0.23
719	Suzuki	Grand Vitara	$5.04
720	Lincoln	MKZ	$0.56
721	Volkswagen	rio	$0.67
722	Infiniti	QX56	$6.56
723	Toyota	4Runner	$9.69
724	Mercedes-Benz	M-Class	$7.41
725	Chevrolet	Lumina	$0.77
726	BMW	6 Series	$0.18
727	Audi	A3	$7.91
728	Lexus	SC	$5.36
729	Saturn	VUE	$2.73
730	Ford	Explorer Sport	$5.04
731	Cadillac	Seville	$0.88
732	Mercedes-Benz	SLK-Class	$5.13
733	Chevrolet	Suburban 2500	$4.97
734	Saab	900	$3.74
735	Porsche	911	$6.08
736	Isuzu	i-Series	$4.21
737	BMW	7 Series	$0.55
738	BMW	8 Series	$5.85
739	Toyota	Avalon	$9.73
740	Lamborghini	Gallardo	$0.06
741	Toyota	Prius	$0.05
742	Honda	S2000	$5.21
743	Dodge	Stratus	$4.45
744	Mercedes-Benz	500SEC	$6.86
745	Lexus	GS	$4.29
746	Ford	F250	$0.04
747	Saturn	Outlook	$4.89
748	Suzuki	Forenza	$2.59
749	Mazda	RX-8	$3.67
750	Mercedes-Benz	SLS-Class	$9.49
751	Lexus	LS	$2.00
752	Lotus	Exige	$3.81
753	Nissan	Frontier	$5.97
754	Dodge	Durango	$7.23
755	Ford	Ranger	$7.50
756	Ford	Ranger	$3.78
757	Maserati	Coupe	$1.92
758	Mazda	MX-3	$2.22
759	Honda	Insight	$0.25
760	Chevrolet	Malibu	$9.02
761	Ford	Escort	$7.52
762	Mercury	Mountaineer	$2.09
763	Lincoln	Continental	$4.76
764	Honda	Civic Si	$0.95
765	Chevrolet	Silverado 3500HD	$8.13
766	Mitsubishi	Truck	$2.69
767	BMW	325	$0.51
768	Lincoln	Navigator	$7.38
769	Chevrolet	Express	$7.68
770	Oldsmobile	Aurora	$1.35
771	Plymouth	Breeze	$6.43
772	Pontiac	Firebird	$5.29
773	Audi	Allroad	$0.45
774	Toyota	Avalon	$7.39
775	Pontiac	Bonneville	$1.67
776	Chevrolet	APV	$7.80
777	Suzuki	XL7	$2.48
778	Chrysler	LHS	$2.67
779	Chevrolet	1500	$1.53
780	Mercury	Sable	$9.79
781	Plymouth	Voyager	$3.06
782	Mercedes-Benz	E-Class	$2.52
783	Hyundai	Elantra	$9.31
784	Ford	F150	$8.05
785	Toyota	Highlander	$6.13
786	Jaguar	XK Series	$7.88
787	Jeep	Commander	$3.33
788	Nissan	Maxima	$2.92
789	Mazda	MX-3	$7.60
790	Ford	Bronco	$7.02
791	Pontiac	Torrent	$8.63
792	Audi	4000	$0.00
793	Honda	CR-V	$1.25
794	Oldsmobile	Bravada	$3.56
795	Buick	Electra	$1.69
796	Mazda	626	$3.19
797	Cadillac	XLR	$7.71
798	GMC	3500 Club Coupe	$6.33
799	GMC	Yukon	$1.65
800	Chrysler	Town & Country	$5.68
801	Mercedes-Benz	E-Class	$3.50
802	Dodge	Charger	$8.23
803	Buick	Century	$3.43
804	Suzuki	Vitara	$7.14
805	Ford	Econoline E250	$0.74
806	Mercedes-Benz	S-Class	$5.77
807	Dodge	Viper	$9.31
808	Acura	NSX	$3.85
809	Mazda	Protege	$9.72
810	Mercedes-Benz	R-Class	$8.89
811	Mazda	B-Series	$0.52
812	Mercedes-Benz	SL-Class	$0.75
813	Bentley	Continental Flying Spur	$0.09
814	Volkswagen	Scirocco	$0.42
815	Honda	Crosstour	$9.00
816	Hyundai	Excel	$2.37
817	Mitsubishi	Montero Sport	$0.69
818	Land Rover	Freelander	$9.43
819	Infiniti	Q	$7.21
820	Subaru	Justy	$8.20
821	Chevrolet	Silverado 1500	$5.12
822	Cadillac	Escalade	$2.96
823	Chrysler	LHS	$7.23
824	Infiniti	FX	$1.06
825	Volkswagen	CC	$9.61
826	Volkswagen	GTI	$1.13
827	Lexus	GX	$9.60
828	Studebaker	Avanti	$9.39
829	Dodge	Caliber	$1.75
830	Isuzu	i-Series	$3.99
831	Dodge	Ram Van 2500	$2.88
832	BMW	600	$0.29
833	BMW	M3	$5.44
834	Mercury	Mountaineer	$5.83
835	Volvo	S90	$3.00
836	Volkswagen	Passat	$1.94
837	Lincoln	Navigator	$3.07
838	Infiniti	M	$7.92
839	Ford	Thunderbird	$9.22
840	Mercury	Cougar	$5.44
841	Chevrolet	2500	$2.22
842	Chrysler	Town & Country	$2.47
843	Lincoln	Continental	$6.96
844	Chevrolet	Corvette	$3.12
845	Acura	MDX	$2.88
846	Hummer	H3	$3.32
847	Mercedes-Benz	500SEL	$5.72
848	Acura	NSX	$4.83
849	Chevrolet	Corvette	$1.08
850	Ford	Mustang	$8.05
851	Chrysler	Sebring	$5.62
852	Dodge	Avenger	$4.91
853	GMC	Sonoma Club Coupe	$2.54
854	Ford	Focus	$3.64
855	Nissan	350Z	$8.70
856	Mercedes-Benz	SLR McLaren	$1.51
857	Lotus	Exige	$0.01
858	Toyota	MR2	$0.97
859	Ford	Escape	$6.34
860	BMW	Z4	$8.75
861	Toyota	Camry	$7.96
862	Dodge	Ram 3500	$5.05
863	Pontiac	Firefly	$7.35
864	Land Rover	Defender	$3.21
865	Audi	riolet	$4.01
866	Honda	Passport	$2.85
867	Lexus	RX	$8.55
868	Land Rover	Range Rover	$8.95
869	Dodge	Ram Wagon B150	$3.61
870	Chevrolet	Suburban 2500	$9.45
871	Buick	Century	$7.79
872	BMW	X3	$0.53
873	Mitsubishi	Tredia	$2.26
874	Cadillac	Seville	$5.98
875	GMC	Acadia	$4.68
876	Hyundai	Sonata	$3.00
877	GMC	Savana 2500	$7.93
878	Lincoln	Continental	$6.36
879	Audi	Cabriolet	$5.70
880	BMW	X5	$7.62
881	Pontiac	Firebird	$1.45
882	Cadillac	STS	$5.95
883	Ford	Galaxie	$3.45
884	BMW	3 Series	$2.96
885	Suzuki	Swift	$6.18
886	Ford	Escape	$0.61
887	Dodge	Ram 3500	$6.78
888	Chevrolet	Tahoe	$5.01
889	Chrysler	New Yorker	$8.06
890	Maybach	Landaulet	$7.24
891	Mazda	Tribute	$7.35
892	Cadillac	DTS	$7.15
893	Volkswagen	rio	$9.91
894	Mazda	B-Series	$0.76
895	Mazda	Miata MX-5	$8.41
896	Acura	MDX	$8.48
897	Suzuki	Daewoo Lacetti	$0.03
898	Nissan	Rogue	$2.23
899	Ford	Explorer	$1.74
900	Isuzu	VehiCROSS	$3.77
901	Mitsubishi	Montero	$0.03
902	Mercedes-Benz	W201	$5.78
903	Audi	90	$7.90
904	Honda	Ridgeline	$9.92
905	Ford	F350	$2.48
906	Audi	RS 6	$7.86
907	Saab	9-3	$6.09
908	Chevrolet	Corvette	$8.88
909	Chrysler	LHS	$1.92
910	Buick	LeSabre	$8.94
911	Lexus	ES	$0.98
912	Dodge	Magnum	$9.02
913	Mercury	Cougar	$5.11
914	Buick	Park Avenue	$5.09
915	Lotus	Esprit	$9.95
916	Chevrolet	Suburban 2500	$9.81
917	Ford	Escort	$5.01
918	Toyota	Corolla	$3.74
919	Honda	Ridgeline	$5.26
920	Hyundai	Equus	$8.64
921	Ford	Expedition EL	$0.60
922	Mazda	Protege	$5.98
923	GMC	Sonoma	$4.87
924	Acura	TL	$9.58
925	Infiniti	J	$1.34
926	Isuzu	Ascender	$4.31
927	BMW	650	$6.08
928	Subaru	Leone	$0.35
929	Lexus	ES	$3.58
930	Acura	RL	$7.40
931	Ford	F350	$8.23
932	Jeep	Grand Cherokee	$2.37
933	Hyundai	Azera	$7.46
934	BMW	M3	$9.64
935	Ford	Econoline E350	$4.75
936	Land Rover	Sterling	$7.40
937	Chevrolet	S10	$4.41
938	GMC	Vandura 2500	$4.36
939	BMW	M3	$4.18
940	Toyota	Truck Xtracab SR5	$1.64
941	Mercedes-Benz	CL-Class	$2.03
942	Cadillac	SRX	$8.75
943	Suzuki	Grand Vitara	$9.52
944	Maserati	GranTurismo	$7.38
945	Chevrolet	Tahoe	$3.90
946	Acura	MDX	$0.12
947	Mazda	RX-8	$1.71
948	Eagle	Summit	$4.87
949	Land Rover	Freelander	$6.98
950	Chevrolet	Cobalt	$1.54
951	Infiniti	M	$2.06
952	Toyota	Land Cruiser	$8.80
953	Geo	Storm	$2.85
954	Ford	F250	$2.67
955	Suzuki	XL7	$8.42
956	Mercedes-Benz	CLS-Class	$1.41
957	Mazda	MX-5	$3.15
958	Ford	Windstar	$8.49
959	Mercury	Mystique	$7.74
960	Ferrari	458 Italia	$1.38
961	Honda	CR-V	$9.30
962	Ford	Explorer Sport Trac	$7.98
963	GMC	Suburban 2500	$7.57
964	Lamborghini	Murciélago	$6.09
965	Volkswagen	Eurovan	$7.40
966	Ford	Focus	$8.92
967	Ford	Windstar	$0.22
968	Mitsubishi	Mirage	$7.45
969	Audi	R8	$9.34
970	Chevrolet	Avalanche 1500	$10.00
971	Plymouth	Breeze	$2.87
972	Cadillac	DeVille	$9.51
973	Honda	Accord Crosstour	$1.00
974	Jeep	Wrangler	$3.94
975	Ferrari	599 GTB Fiorano	$8.54
976	Kia	Rio	$9.39
977	Chevrolet	Express 1500	$4.08
978	BMW	325	$4.05
979	Ford	Econoline E350	$7.25
980	Mitsubishi	Outlander	$1.69
981	Chrysler	Town & Country	$9.24
982	Kia	Sorento	$6.42
983	Pontiac	G5	$0.43
984	Dodge	Caravan	$9.86
985	Audi	RS4	$5.82
986	Chevrolet	Camaro	$10.00
987	GMC	Envoy	$0.85
988	Mercury	Mystique	$5.08
989	Mercury	Villager	$3.54
990	Pontiac	Bonneville	$7.96
991	Mitsubishi	Lancer	$0.60
992	Chevrolet	Monte Carlo	$2.57
993	GMC	Savana 2500	$8.51
994	BMW	6 Series	$3.69
995	Mitsubishi	Pajero	$6.04
996	Cadillac	Escalade EXT	$5.86
997	Pontiac	Montana	$4.17
998	Dodge	Viper	$9.53
999	Nissan	Maxima	$7.24
1000	Dodge	Stratus	$9.87
\.


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: annah
--

COPY public.person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_birth, car_uid) FROM stdin;
fcb622bb-2bdb-4974-b4b3-7631315d7195	annah	mweru	annah2@bloglines.com	Female	2026-09-27	Kenya	\N
d152f6b0-d883-4fc6-9567-fde6eedc4a4a	Dorelle	Thams	dthams0@stanford.edu	Female	2026-02-10	Brazil	db3710ec-96af-47eb-9781-51887c86df21
9de9d1db-a31a-4693-b206-740d15f9f6d0	Pyotr	McLarens	pmclarens1@vk.com	Male	2026-03-14	Thailand	29a15f9b-2899-4cd4-a4ae-0391b0020835
\.


--
-- Name: mock_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: annah
--

SELECT pg_catalog.setval('public.mock_data_id_seq', 1, false);


--
-- Name: car car_pkey; Type: CONSTRAINT; Schema: public; Owner: annah
--

ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_pkey PRIMARY KEY (car_uid);


--
-- Name: mock_data mock_data_pkey; Type: CONSTRAINT; Schema: public; Owner: annah
--

ALTER TABLE ONLY public.mock_data
    ADD CONSTRAINT mock_data_pkey PRIMARY KEY (id);


--
-- Name: person person_car_uid_key; Type: CONSTRAINT; Schema: public; Owner: annah
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_car_uid_key UNIQUE (car_uid);


--
-- Name: person person_email_key; Type: CONSTRAINT; Schema: public; Owner: annah
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_email_key UNIQUE (email);


--
-- Name: person person_pkey; Type: CONSTRAINT; Schema: public; Owner: annah
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (person_uid);


--
-- Name: person person_car_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: annah
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_car_uid_fkey FOREIGN KEY (car_uid) REFERENCES public.car(car_uid);


--
-- PostgreSQL database dump complete
--

\unrestrict BddcaYljtHPfS9B18rNENmgcGt6BBgMdUaJDdJIOYXzWCNWvu5FSK4uLEyuXgEA

