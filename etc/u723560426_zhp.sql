
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas wygenerowania: 31 Maj 2015, 18:15
-- Wersja serwera: 5.1.67
-- Wersja PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `u723560426_zhp`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `borrow_history`
--

CREATE TABLE IF NOT EXISTS `borrow_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_borrowed` date NOT NULL,
  `date_returned` date DEFAULT NULL,
  `book_id` int(11) NOT NULL,
  `person` varchar(50) COLLATE utf8_bin NOT NULL,
  `returned` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_borrow_history_library` (`book_id`),
  KEY `person` (`person`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `borrow_history`
--

INSERT INTO `borrow_history` (`id`, `date_borrowed`, `date_returned`, `book_id`, `person`, `returned`) VALUES
(1, '2015-04-18', NULL, 26, '3', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `chronicle`
--

CREATE TABLE IF NOT EXISTS `chronicle` (
  `id` int(7) NOT NULL,
  `title` text COLLATE utf8_bin NOT NULL,
  `happen` date NOT NULL,
  `content` text COLLATE utf8_bin NOT NULL,
  `author` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_bin NOT NULL,
  `happen` date NOT NULL,
  `created` date NOT NULL,
  `content` text COLLATE utf8_bin NOT NULL,
  `author` text COLLATE utf8_bin NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=17 ;

--
-- Zrzut danych tabeli `events`
--

INSERT INTO `events` (`id`, `title`, `happen`, `created`, `content`, `author`, `type`, `deleted`) VALUES
(1, 'Zbiórka 5 kwietnia! Serdecznie zapraszamy wszystkich chętnych ', '2014-04-05', '2014-03-23', '<p>Jeśli tutaj trafiliście to znaczy, że wysłuchaliście naszej prezentacji 22 lub 25 marca 2014., a także dlatego, że jesteście szczęśliwymi wybrańcami do kt&oacute;rych się odezwaliśmy.<br /><br />Kolejne spotkanie "os&oacute;b sprzyjających" (na razie zbiorczo Bractwo Harcerzy Starszych i Ewentualne Koło Przyjaci&oacute;ł Harcerstwa) odbędzie się w Sobotę 5 kwietnia 2014r.<br /><br />START: godzina 14.52 sec 38 w Catholic Chaplaincy, High Street 7, Old Aberdeen.<br /><br />Dla os&oacute;b kt&oacute;re nie wiedzą gdzie to jest i mimo googlemaps mogą pobłądzić [Google Maps] bedzie stał na HIGH STREET strach na wr&oacute;ble (zadziwiająco podobny do jednego z prowadzących prezentację) na wysokości KINGS COLLEGE<br /><br />- Nie ma opcji, żebyście nie zauważyli. Strach na Wr&oacute;ble wskaże wam drogę i będzie tam straszyć od godziny 14.22 sec 33.<br /><br />Pierwsze 1,5h przeżyjemy wsp&oacute;lnie "przygodę" niezależnie od warunk&oacute;w pogodowych (z wyjątkiem tsunami). [METEOPROG Aberdeen]<br /><br />Następne 1h spędzimy w Catholic Chaplaincy Hight street 7 (dla sp&oacute;źnialskich, kt&oacute;rzy przez pierwsze 1,5 nie mogli nas znaleźć).<br /><br />KONIEC, 18.30. Należy ze sobą zabrać: - długopis, odzież stosowną do aury pogodowej, - stosowne obuwie do chodzenia - szpilki, obcasy mogą być trochę niewygodne, dobry humor:) Więcej szczeg&oacute;ł&oacute;w...to tajemnica harcerska...;) W imieniu "Bractwa", serdecznie zapraszamy.<br /><br />PS Walczyliśmy o termin spotkania aby był 29 marca, jednak ilość os&oacute;b kt&oacute;ra wpisała się jako chętna na spotkanie przekroczyła nasze najśmielsze oczekiwania, stąd musieliśmy znaleźć większą salę, co wiąże się ze zmianą terminu na p&oacute;źniejszy. Cieszymy się z odzewu i zainteresowania Braterstwem i Służbą.</p>', 'Krzysiek', 0, 0),
(2, 'Obóz Wędrowny 2014 ', '2014-08-21', '2014-08-03', '<p>Ob&oacute;z wędrowny to jedna z najpiękniejszych przyg&oacute;d harcerskich &ndash; wspaniałe widoki, urozmaicona przyroda, dzikie biwaki i niezapomniane przeżycia. Ob&oacute;z wędrowny to nie zwykła wędr&oacute;wka lecz idealne doświadczenie wędrownicze.<br /><br />Miejsce: Hadrian&rsquo;s Wall Path (od Newcastle do Carlisle)<br /><br />Termin: Czwartek 21-go Sierpnia &ndash; Poniedziałek 25-go Sierpnia 2014<br /><br />Transport: We własnym zakresie do stacji kolejowej w Newcastle 21-go Sierpnia przed 10:00 i z Carlisle 25-go Sierpnia po 17:00<br /><br />Dla Kogo:<br />1. dorośli (kontakt do kierownika kręgu harcerstwa Starszego 0792 827 11 43<br />2. Młodzież 15+ zgłaszać się zgodnie z opisem poniżej (obu płci)<br />3. Osoby 13-15 lat (negocjujemy czy hufiec pozwoli zrobić wyjątek dla Aberdeen, kontaktować się jak w pkt. 1.<br /><br />Koszt: Opłata wynosi &pound;50 &ndash; należy zapłacić got&oacute;wką na miejscu. Do 16 należy uiścić 12 funt&oacute;w ubezpieczenia do kierownika kręgu w Aberdeen (0792 827 1143)<br /><br />UBEZPIECZENIE: Uczestnicy obozu będą ubezpieczeni przez polisę Związku Harcerstwa Polskiego &ndash; Okręg Wielkobrytyjski. Dla uczestnik&oacute;w należących do drużyn, ubezpieczenie jest automatycznie pokryte przez zapłacone doroczną składkę. Uczestnicy kt&oacute;rzy nie płacą takich składek będą musieli dopłacić &pound;12.00 do opłaty by pokryć ubezpieczenie.<br /><br />Zgłoszenia: Należy zgłosić się emailem, kaptur_konrad@hotmail.com, lub telefonicznie, 07986860774, do druhu komendanta najp&oacute;źniej do dnia 16-go Sierpnia.<br /><br />Informacje: Dalsze szczeg&oacute;ły związane z obozem będą podane w następnym komunikacie. Proszę o kontakowanie się ze mną lub z druhem Hufcowym, jeśli są jakiekolwiek pytania na temat obozu.<br /><br />CZUWAJ!<br />pwd. Konrad Kaptur<br />phm. Marek Pepliński<br />Komendant Obozu Hufcowy Hufca &ldquo;Wilno&rdquo;<br />07986 860774 07970 494309<br /><br /><br /> <img class="e_event_img" src="img/temp_gallery/hadrianwall1.jpg" alt="" width="300" /><img class="e_event_img" src="img/temp_gallery/hadrianwall2.jpg" alt="" width="300" /></p>', 'Krzysiek', 0, 0),
(3, 'Integracja kadry oraz szkolenie zastępowych ', '2014-09-12', '2014-09-08', '<p>Witajcie<br /><br /> Spotykamy się na pikniku rodzinnym w czasie kt&oacute;rego przez jego część zrobimy sobie szkolonko kadry. Można zabrać dzieci. Impreza ma charakter cywilno-koleżeński, nie harcerski. apel i elementy musztry tylko na spotkaniu kadry.<br /><br /> Miejsce:St.cyrus, zakończenie Beach Road schodzi do morza, zobaczycie piękny widok i chatkę na plaży. To tam się organizujemy. W celu ustalenia lokalizacji polecam googlemaps.<br /><br /> Czas: <br /> integracja kadry, piątek (12.09) od 19.00 <br /> szkolenie, sobota (13.09) 11 -16.<br /> impreza dziękczynna 17 <br /><br /> dojazd: samochodem, lub autobus X 7, autobus kosztuje dyszkę w obie strony.<br /><br /> składka piknikowa 3 funty. <br /><br /> nocowanie: w chatce, można też wr&oacute;cić do aberdeen. Małe dzieci dały kiedyś radę, chatka sprawdzona w czerwcu. karimata, dobry śpiw&oacute;r, proszę zabrać ze sobą. drobne narzedzia biwakowe mogą się przydać.</p>', 'Krzysiek', 0, 0),
(5, 'Ognisko dla Bierzmowanych ', '2014-05-17', '2014-05-10', '<p>Zadaniem młodziezy było zbudowanie w wyznaczonych miejscach ogniskowych kuchni polowych z materiału jaki był dostępny w pobliżu, tzn z granitowych kamieni. Lista dań zawierała m.in typowe harcerskie podpłomyki, tj. chleb z ogniska, dania kartoflane na ogniu, dania mięsne i jarskie, a także wiele innych dań niewymagajacych ognia. Młodzież uczona była nie tylko otrzymywac gotowy program/rozrywkę, ale także pracy w grupie dla innych i z innymi. Opr&oacute;cz zadań kulinarnych odbyło się kilka gier integracyjnych a także nauka śpiewu kilku pisenek polonijnych np. Marsz Polonia.<br /><br /> <img class="e_event_img" src="img/temp_gallery/seatonognisko.jpg" alt="" width="300" /></p>', 'Krzysiek', 0, 0),
(6, 'Spotkanie dla dorosłych wolontariuszy', '2014-05-10', '2014-10-30', '<p>Odbyło się spotkanie dorosłych wolontariuszy zainteresowanych tematyką harcerską. Spotkanie miało miejsce tuż po porannej mszy. Uczestniczyło w nim 14 os&oacute;b. Rozdzielono na nim zadania na nadchodzące wydarzenie zaplanowanym na 17 maja ''Wariacje kuchni polowej'', kt&oacute;re było pierwszym spotkanie dla młodzieży. Na spotkaniu ustalono: zakres działania parafialnej Białej Służby, a także plan dw&oacute;ch kolejnych zbi&oacute;rek, rozdano teksty piosenek i wyznaczono osoby kt&oacute;re będą tych piosenek uczyć, ustalono listę dań typowych dla kuchni polowej do kt&oacute;rych produkty przygotują wolontariusze. Zadaniem młodzieży było w mniejszych patrolach sporządzić te dania. Rozdano też zadania na kolejną zbi&oacute;rkę planowaną na 10 czerwca ''Ognisko oraz gry znane oraz nieznane''.</p>', 'Krzysiek', 0, 0),
(7, 'Turniej Paintball na Battleground-dzie', '2014-03-23', '2014-03-13', '<p>Odbyły się zawody szkockich grup strzeleckich w czasie kt&oacute;rych ZHP w Aberdeen wystawiło swoją reprezentację zajmując 4 miejsce. Na zawody przybyli mężczyźni, przyszli kandydaci na drużynowych harcerskich - męskich jednostek ZHP. Ćwiczenia przed rozgrywkami obejmowały musztrę bojową, marsz ubezpieczony, rozpoznanie terenu, przemiszczanie się patrolu w boju, rolowanie, maskowanie w terenie, nacierenie sekcjami, tyralierę. Zajęcia prowadził Krzyszto Orchowski, w celu sprawdzenia umiejętności liderskich dowodzenie w boju zostało przekazane Dawidowi Bulandzie, liderowi Polskiego Centrum Młodzieży katolickiej.<br /><br /> <img class="e_event_img" src="img/temp_gallery/paintballzawody.jpg" alt="" width="300" /></p>', 'Krzysiek', 0, 0),
(8, 'Laser Tag na Battleground', '2013-11-16', '2013-11-01', '<p>Zbi&oacute;rka miała miejsce na "Battleground" w pobliżu Aberdeen, to ośrodek symulacji pola bitwy. Odbylismy kilka gier wojennych typu ''LASER TAG''. Celem było rozpoznanie realnych reakcji poszczeg&oacute;lnych członk&oacute;w w działaniu zespołowym, zegranie się wszystkich uczestnik&oacute;w kadry. Poznaliśmy się nawzajem nieco lepiej a następnie odbyliśmy kr&oacute;tkie szkolenie z zakresu prowadzenia patrolu harcerzy. Krzysztof przedstawił kr&oacute;tki wstęp do ceremoniału harcerskiego, a także musztry. A potem, poszliśmy na pole bitwy - akcja i symulacja pola walki przyśpieszyła wzajemne interakcje tak, że po zakończeniu nie odczuwaliśmy, że to dopiero drugie spotkanie.<br /><br /> <img class="e_event_img" src="img/temp_gallery/lasertag.jpg" alt="" width="300" /></p>', 'Krzysiek', 0, 0),
(9, 'Ognisko na "dzikiej plaży"', '2014-06-28', '2014-06-12', 'Odbyła się zbiórka młodziezy bierzmującej i już bierzmowanej. Uczestniczyły te same osoby w stosunku do zbiórki 17.05.2014 lecz o poszerzonym składzie o kilka nowych osób. Ogółem stan wynosił 19 młodzieży i dzieci oraz 6 dorosłych kadry. Spotkanie rozpoczęło się harcerskim apelem i meldunkiem zastępów. Odspiewano hymn ''Mrsz Polonia''. Odbyły się gry na plaży polegające na współzawodnictwie i współdziałaniu aby móc wyodrębnić z szerszej wiekszej grupy naturalne mniejsze grupy do pracy w zastępach od września. Graliśmy w Manso, i kilka innych harcerkich gier. Zajęcia zostały przerwane przez ulewę i typową szkocką pogodę. Wykonano plan B, który polegał na wyświetleniu filmu w siedzibie ZHP na Seaton Avenue 14 D, tj. Kamieni na Szaniec, oraz wspólnym posiłku i polskiej modlitwie.', 'Krzysiek', 0, 0),
(10, 'Wędrówka z Portsoy do Cullen', '2014-10-26', '2014-10-30', '<p>W niedziele odbędzie się wędr&oacute;wka z Portsoy do Cullen!!</p>\r\n<p>Link do albumu: <a title="Wedrowka Portsoy - Cullen 2014 Galeria" href="gallery/index.php?/category/1" target="_blank">tutaj</a></p>\r\n<p><img src="gallery/_data/i/upload/2014/11/03/20141103174621-2e87f61b-me.jpg" alt="" width="400" height="267" /></p>', 'Piotr Starzec', 0, 0),
(11, 'Wędrówka Cambus of May - Loch Kinord', '2014-11-16', '2014-11-03', '<p>Czuwaj!</p>\r\n<p>Po udanej wędr&oacute;wce po klifach czas na przygodę po g&oacute;rach. Zachęcam do zapoznania się z programem i do zobaczenia na szlaku!</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td width="94">\r\n<p><strong>Data</strong></p>\r\n</td>\r\n<td width="510">\r\n<p>16 Listopad 2014</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="94">\r\n<p><strong>Wyjazd</strong></p>\r\n</td>\r\n<td width="510">\r\n<p><strong>Aberdeen </strong></p>\r\n<p>07:45 &ndash; 201 do &bdquo;Ballater, opp Cambus O''May Forest Walk Centre&rdquo;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="94">\r\n<p><strong>Trasa</strong></p>\r\n</td>\r\n<td width="510">\r\n<p>Ok 10 km, możliwe zmiany i urozmaicenia, r&oacute;żne warianty ostatniego odcinka.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="94">\r\n<p><strong>Powr&oacute;t</strong></p>\r\n</td>\r\n<td width="510">\r\n<p><strong>Dinnet</strong></p>\r\n<p>17:05 &ndash; 201 do &ldquo;Aberdeen Union Square&rdquo;</p>\r\n<p>Planowany przyjazd do Aberdeen: 18:38</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="94">\r\n<p><strong>Plecak</strong></p>\r\n</td>\r\n<td width="510">\r\n<p>Coś od deszczu, wygodne buty ZA KOSTKĘ! (NIE TRAMPKI, TENIS&Oacute;WKI ITP.), bluzę/polar, wygodne spodnie (NIE JEANSY!) np. boj&oacute;wki, coś od wiatru, czapkę, rękawiczki itp.</p>\r\n<p>Prowiant na cały dzień, wodę, czekoladę (najlepiej gorzką), owoce, sok itd. Możliwa opcja obiadu w Dinnet (dla chętnych).</p>\r\n<p>(Prosimy nie zabierać chips&oacute;w i energy drink&oacute;w!)</p>\r\n<p>**Lornetkę, aparat** -&gt; na własną odpowiedzialność.</p>\r\n<p>Koszt: nadal do ustalenia (ok &pound;30-40 bilety autobusowe &ndash; lub transport od KPH)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="94">\r\n<p><strong>Ceny bilet&oacute;w</strong></p>\r\n</td>\r\n<td width="510">\r\n<p>(Aberdeen zone 6) <a href="http://www.stagecoachbus.com/bluebird-tickets.aspx">http://www.stagecoachbus.com/bluebird-tickets.aspx</a></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'Piotr Starzec', 0, 0),
(12, 'Konkurs na funkcje instruktorskie', '2014-12-31', '2015-01-18', '<p>Związek Harcerstwa Polskiego w Aberdeen z okazji swieta Niepodleglosci oglasza konkurs na funkcje instruktorska na terenie North East Scotland, Aberdeen, Aberdeenshire, Dundee, Frasebourgh, Perth, Inverness, Banff i Macduff</p>\r\n<p>Wymagania:</p>\r\n<p>- osoba gotowa podnosić swoje kwalifikacje w roli wychowawcy polskiej młodzieży lub były/obecny instruktor z ZHR, ZHP, FSE ''Zawisza'' lub innej organizacji harcerskiej na terenie kraju <span class="text_exposed_show"><br /> - pełnoletność lub min. 16 lat jeśli kandydat posiada doświadczenie harcerskie na funkcji minimum przybocznego/przybocznej<br /> - niekaralność<br /> - dobry humor <br /> - wysoki poziom kultury osobistej<br /> - wysoki poziom moralny w życiu codziennym<br /> - gotowość do podjęcia służby Bogu, Polsce, Bliźnim (także lokalnej społeczności w tym parafialnej, polskiej, szkockiej a także społeczności w miejscu zamieszkania)<br /> - gotowość do stosowania metod przyjętych w polskim harcerstwie na emigracji<br /> - CV oraz list motywacyjny ''Czym motywujesz się zgłaszając się do służby harcerskiej oraz dlaczego mielibyśmy Cię przyjąć'' na k.orchowski.08@aberdeen.ac.uk<br /> - całkowita abstynencja będzie dodatkowym atutem, nie jest jednak nieodzownie wymagana w zhp na emigracji</span></p>\r\n<div class="text_exposed_show">\r\n<p>oferujemy:<br /> - elitarną służbę w gronie os&oacute;b o wysokim morale<br /> - możliwość realizacji ideał&oacute;w harcerstwa w życiu codziennym<br /> - dofinansowanie do umundurowania i wyposażenia po odbyciu 3 miesięcy owocnej służby zakończonej otwarciem pr&oacute;by na stopień Aspiranta i pomyślnym zakończeniem pr&oacute;by na krajkę ( w wypadku os&oacute;b już ze stopniem instruktorskim możliwość negocjacji wymagań, stosownie do służby)<br /> - niezapomnianą przygodę życia "bo życie ma tylko sens gdy jest służbą" A. Małkowski<br /> Kandydat&oacute;w nieprzyjętych w rekrutacji jesienno-zimowej zaprosimy do rekrutacji wiosennej. Nasz limit obecnie to trzy osoby gotowe pełnić służbę Bogu, Polsce, bliźnim.<br /> kontakt<br /> Związek Harcerstwa Polskiego poza granicami kraju, Aberdeen<br /> 07928271143<br /> Kierownik Kręgu Harcerstwa Starszego</p>\r\n<p>Jeszcze Polska nie zginela!</p>\r\n</div>', 'Krzysztof Orchowski', 0, 0),
(13, 'Kiermasz kartek, ozdób i ciast świątecznych - akcja zarobkowa na mundury', '2014-12-14', '2015-01-18', '<p>Czuwajcie!</p>\r\n<p>Zapraszamy serdecznie na kiermasz na kt&oacute;rym będzie można nabyć przepyszne, artystyczne, polskie, bożonarodzeniowe wypieki, własnoręcznie wykonane przez polską młodzież, kartki świąteczne oraz ozdoby choinkowe i mn&oacute;stwo innych choinkowych atrakcji. Załączamy zdjęcia naszych ozd&oacute;b, kt&oacute;re można kupić od harcerzy i młodzieży. Doch&oacute;d będzie między innymi przeznaczony na dalszą działalność Klubu Młodzieży Polskiej oraz na Mundury dla polskich harcerzy zrzeszonych w ZHP <span class="text_exposed_show">Aberdeen.</span></p>\r\n<div class="text_exposed_show">\r\n<p>Kiermasz odbędzie się 14 Grudnia w St. Mary''s Cathedral, Huntley Street, Aberdeen. Nabywać najlepiej prosze po mszach. o 9.30 oraz 15.00. Będziemy też sprzedawać po anglo-języcznych mszach, więc jesli ktoś z Państwa ma zamiar przyjśc na p&oacute;źniejszą mszę może nie zdążyć na najlepsze wypieki czy ozdoby. Poniżej Aniołek, przykladowa ozdoba wykonana przez polską młodzież w Aberdeen. Życzę wam abym w waszych domach w te święta nastał klimat prawdziwych, polskich świąt Bożego Narodzenia! Mamy nadzieję, że nasz kiermasz wspomoże wasze przygotowania na nadejście Pana! Prostujmy drogi na jego nadejście! Zapraszamy!</p>\r\n<p>Link do albumu z wydarzeniami: <a href="gallery/index.php?/category/3" target="_blank">tutaj</a></p>\r\n</div>', 'Piotr Starzec', 0, 0),
(14, 'Przybyły mundury', '2015-01-17', '2015-02-14', '<p><span class="userContent">Kochani! Mundury dla czlonkow kursu kadry przybyly I czekaja na was do odbioru na jutrzejszej zbiorce naszego kursu kadry ZHP ''AGRICOLA''. Zeby tych radosci nie bylo za malo, kurs jutro bedzie prowadzic takze Krzysztof <em class="_4-k1 img sp_4Wn7r2ult0E sx_c2421f"><span style="text-decoration: underline;">Emotikon smile</span></em> Nie dosc ze ubierzemy was od stop do glow w mundury, to jeszcze oczarujemy was magia historii harcerstwa <br /> <a href="https://www.youtube.com/watch?v=ViT7Vg1OC0Y&amp;list=PL9F78CB0DAE2EA9DC&amp;index=2" target="_blank" rel="nofollow nofollow">https://www.youtube.com/watch?v=ViT7Vg1OC0Y&amp;list=PL9F78CB0DAE2EA9DC&amp;index=2</a></span></p>\r\n<p><img src="gallery/i.php?/upload/2015/02/14/20150214120646-deea1346-me.jpg" alt="" width="308" height="225" /> <img src="gallery/_data/i/upload/2015/02/14/20150214120648-9f8701d0-me.jpg" alt="" width="176" height="259" /></p>', 'Piotr Starzec', 0, 0),
(15, 'Ruszamy z zuchami!', '2015-02-11', '2015-02-14', '<p><span class="userContent">Kurs Kadry ZHP Aberdeen ''Agricola'' z sekcji zuchowej, zaprasza na zbi&oacute;rki zuchowe (7-11 lat), 18-19.30, St.Mary''s Cathedral, sala boczna, schodami w d&oacute;ł, proszę przygotować dla swoich pociech nap&oacute;j/buteleczkę wody. Składka za zuchowa to 15 <span class="text_exposed_show">funt&oacute;w za 3 miesiace w tym ubezpieczenie. Latem przewidujemy kolonie zuchową. Zapraszamy nie tylko pociechy, ale także dorosłych do kadry zuchowej przyjmiemy tylko osoby konkretne, zorganizowane, pozytywne, radosne i z wielkim sercem do szeroko pojętej służby harcerskiej (jak te na załączonym zdjęciu:) i oczywiście niekarane). <br /> Czuj Duch!<br /> <br /> P.S<br /> Część zuch&oacute;w ma już mundury zuchowe, prosimy aby dzieci je nosiły na zbi&oacute;rki, pozostałych rodzic&oacute;w uspokajamy: nie jest to wymagane na poczatku i przygotujemy niejedną akcję zarobkową ZHP kiedy będziecie mogli drobnym wsparciem (np. wypiekiem lub pomocą przy sprzedaż ciast po mszy) zdobyć funduszę na mundury. Chcieć to m&oacute;c!</span></span></p>\r\n<p><span class="userContent"><span class="text_exposed_show"><img src="gallery/upload/2015/02/14/20150214120649-8b5f2cca.jpg" alt="" width="480" height="270" /></span></span></p>', 'Piotr Starzec', 0, 0),
(16, 'Kurs Agricola zakończony!', '2015-02-07', '2015-02-14', '<p><span class="userContent">Na zakończenie kursu Kadry ZHP Aberdeen ''Agricola'' uczestnicy sprawdzili swoją wiedzę w trakcie harcerskiego biegu. każdy uczestnik otrzymał kartę odpowiedzi, a zadania na biegu dotyczyły wiedzy i umiejętności niezbędnych do prowadzenia podstawowych jednostek harcerskich. Uczestnicy kt&oacute;rzy pomyślnie ukończa kurs, będą odbywać staż instruktorski w Gromadzie Zuchowej lub Druzynie Harcerskiej w Aberdeen. Trzymamy kciuki za wyniki!</span></p>\r\n<p><span class="userContent"><img id="theMainImage" title="1526523 299577470166342 6344755555163488034 n - 1526523_299577470166342_6344755555163488034_n.jpg" src="gallery/i.php?/upload/2015/02/14/20150214120647-42e68152-la.jpg" alt="1526523_299577470166342_6344755555163488034_n.jpg" usemap="#maplarge" width="356" height="475" /></span></p>\r\n<p><img src="gallery/upload/2015/02/14/20150214120646-6ad91e18.jpg" alt="" width="391" height="293" /></p>', 'Piotr Starzec', 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `library`
--

CREATE TABLE IF NOT EXISTS `library` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_bin NOT NULL,
  `author` varchar(30) COLLATE utf8_bin NOT NULL,
  `publisher` varchar(70) COLLATE utf8_bin NOT NULL,
  `published_date` year(4) NOT NULL,
  `published_city` varchar(30) COLLATE utf8_bin NOT NULL,
  `genre` varchar(30) COLLATE utf8_bin NOT NULL,
  `language` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT 'Polski',
  `copies` int(11) NOT NULL DEFAULT '1',
  `notes` text COLLATE utf8_bin NOT NULL,
  `owner` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT 'ZHP Aberdeen',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=27 ;

--
-- Zrzut danych tabeli `library`
--

INSERT INTO `library` (`id`, `title`, `author`, `publisher`, `published_date`, `published_city`, `genre`, `language`, `copies`, `notes`, `owner`) VALUES
(1, 'Książka Wodza Zuchów', 'Aleksander Kamiński', 'ZHP w Wielkiej Brytanii', 1973, 'Londyn', 'Poradnik', 'Polski', 1, '', 'ZHP Aberdeen'),
(2, 'Księga Harców', 'M. K.', 'Naczelnictwo ZHP PGK', 1947, 'Londyn', 'Poradnik', 'Polski', 1, '', 'ZHP Aberdeen'),
(4, 'Krąg Rady', 'Aleksander Kamiński', 'Ministerstwo wyznań religijnych i oświecenia publicznego', 1945, 'Londyn', 'Poradnik', 'Polski', 1, '', 'ZHP Aberdeen'),
(5, 'Pionierka Harcerska', 'Adam Hyży', 'Biblioteka Skauta', 2012, 'Warszawa', 'Poradnik', 'Polski', 1, '', 'ZHP Aberdeen'),
(6, 'Instruktorzy - o czym instruktor wiedzieć powinien: część 1', 'Bogran Szwagrzak', 'Główna Kwatera Harcerzy wydział kształcenia starszyzny', 1991, 'Londyn', 'Poradnik', 'Polski', 1, '', 'ZHP Aberdeen'),
(7, 'Instruktorzy - o czym instruktor wiedzieć powinien: część 2', 'Bogran Szwagrzak', 'Główna Kwatera Harcerzy wydział kształcenia starszyzny', 1991, 'Londyn', 'Poradnik', 'Polski', 1, '', 'ZHP Aberdeen'),
(8, 'Harcownicy - o czym harcerz w drużynie wierdzieć powinien: cześć 1', 'Bogran Szwagrzak', 'Główna Kwatera Harcerzy wydział metodyczno-programowy', 1989, 'Londyn', 'Poradnik', 'Polski', 1, '', 'ZHP Aberdeen'),
(9, 'Harcownicy - o czym harcerz w drużynie wierdzieć powinien: cześć 2', 'Bogran Szwagrzak', 'Główna Kwatera Harcerzy wydział metodyczno-programowy', 1989, 'Londyn', 'Poradnik', 'Polski', 2, '', 'ZHP Aberdeen'),
(10, 'Harcownicy - o czym harcerz w drużynie wierdzieć powinien: cześć 3', 'Bogran Szwagrzak', 'Główna Kwatera Harcerzy wydział metodyczno-programowy', 1989, 'Londyn', 'Poradnik', 'Polski', 1, '', 'ZHP Aberdeen'),
(11, 'Stosowanie metody harcerskiej w drużynie harcerzy', 'Marek Kamecki', 'Główna Kwatera Harcerzy ZHR', 1999, 'Warszawa', 'Poradnik', 'Polski', 2, '', 'ZHP Aberdeen'),
(12, 'Wędrownicy - o czym wędrownik wiedzieć powinien', 'Bogran Szwagrzak', 'Główna Kwatera Harcerzy', 2007, 'Londyn', 'Poradnik', 'Polski', 1, '', 'ZHP Aberdeen'),
(13, 'Jak pracują wędrownicy', 'Bogran Szwagrzak', 'Główna Kwatera Harcerzy', 1980, 'Londyn', 'Poradnik', 'Polski', 1, '', 'ZHP Aberdeen'),
(14, 'Stopnie - program prób na stopnie harcerzy', 'Główna Kwatera Harcerzy', 'Główna Kwatera Harcerzy', 2008, 'Londyn', 'Formularze', 'Polski', 1, 'Formularze na stopnie harcerskie', 'ZHP Aberdeen'),
(15, 'Kształcenie Charakteru - wskazówki praktyczne', 'Mieczysław Kreutz', 'Katolicki ośrodek wydawniczy Veritas', 1946, 'Londyn', 'Poradnik', 'Polski', 1, '', 'ZHP Aberdeen'),
(16, 'The Boy Scout - Handbook', 'Boy Scouts of America', 'Boy Scouts of America', 1998, 'Irving, Texas', 'Poradnik', 'Polski', 1, '', 'Piotr Starzec'),
(17, 'Wilk, który nigdy nie śpi - pełne przygód życie lorda Baden-Powella', 'Walter Hansen', 'HBW Horyzonty', 2004, 'Warszawa', 'Historyczne', 'Polski', 1, '', 'Piotr Starzec'),
(18, 'Leksykon Harcerstwa', 'Olgierd Fietkiewicz', 'Młodzieżowa Agencja Wydawnicz', 1988, 'Warszawa', 'Encyklopedia', 'Polski', 1, '', 'Piotr Starzec'),
(19, 'Polska Walcząca / Fighting Poland', 'Paweł Rokicki', 'Instytut Pamięci Narodowej', 2014, 'Warszawa', 'Broszura historyczna', 'Polski / English', 1, '', 'ZHP Aberdeen'),
(20, 'Bitwa o Monte Cassino 1944', 'Michał Polak', 'Instytut Pamięci Narodowej', 2005, 'Warszawa', 'Broszura historyczna', 'Polski', 1, '', 'ZHP Aberdeen'),
(21, 'Pułkownik Łukasz Ciepliński', 'Mirosław Surdej', 'Instytut Pamięci Narodowej', 2013, 'Bielsko-Biała', 'Broszura historyczna', 'Polski', 1, '', 'ZHP Aberdeen'),
(22, 'Profesor Tomasz Strzembosz', 'Marek Wierzbicki', 'Instytut Pamięci Narodowej', 2014, 'Bielsko-Biała', 'Broszura historyczna', 'Polski', 1, '', 'ZHP Aberdeen'),
(23, 'Marszałek Józef Piłsudski', 'Marek Gałęzowski', 'Instytut Pamięci Narodowej', 2014, 'Bielsko-Biała', 'Poradnik', 'Polski', 1, '', 'ZHP Aberdeen'),
(24, 'Stefan Rowecki "Grot"', 'Marek Gałęzowski', 'Instytut Pamięci Narodowej', 2014, 'Bielsko-Biała', 'Broszura historyczna', 'Polski', 1, '', 'ZHP Aberdeen'),
(25, 'Generał Władysław Anders', 'Jerzy Kirszak', 'Instytut Pamięci Narodowej', 2014, 'Bielsko-Biała', 'Broszura historyczna', 'Polski', 1, '', 'ZHP Aberdeen'),
(26, 'O metodzie harcerskiej i jej stosowaniu', 'Dr Ewa Grodecka', 'Główna Kwatera Harcerek', 2008, 'Londyn', 'Poradnik', 'Polski', 1, '', 'ZHP Aberdeen');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` char(128) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `salt` char(128) COLLATE utf8_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `zuchy` tinyint(1) NOT NULL DEFAULT '0',
  `harcerze` tinyint(1) NOT NULL DEFAULT '0',
  `wedrownicy` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_2` (`email`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Zrzut danych tabeli `member`
--

INSERT INTO `member` (`id`, `password`, `firstname`, `lastname`, `email`, `salt`, `admin`, `zuchy`, `harcerze`, `wedrownicy`) VALUES
(1, '64ab5968d035893e71048b3a89a2a428e6d900e501dbffa829d325fe46e61671', 'Piotr', 'Starzec', 'starzec.piotr.12@gmail.com', '50d', 1, 1, 1, 1),
(2, 'f01e30bb521aefb8d30157a17695fe7a7d680b7a29b0caac9805202faa131529', 'Petrus', 'Sanex', 'p.starzec@rgu.ac.uk', '1e6', 0, 0, 0, 0),
(3, '6a27536d475594d93658454c63654ceacbe59e33345d3683a8cebc0fb652bb2e', 'Katarzyna', 'Stec', 'stec.katarzyna89@gmail.com', '5b4', 1, 1, 0, 0),
(4, 'fe8e46303d2bfdc430b7c662e6e629f7531936808e0ddd8a1e42897ebd92d070', 'Christophe', 'Orchowski', 'chris.orchowski@gmail.com', 'a4a', 1, 1, 1, 1),
(5, 'e50104910dc6a322abd1b6c4111ed4552eaf5504926eb2754b3cd13c044c4e63', 'Monika', 'Świderska', 'monikaa.swiderska@gmail.com', '74c', 1, 0, 0, 0),
(6, 'b0e71bf8871bea47cc8e40f0f5779c121dee5908ecde4eebdca45aaa6da894b6', 'Jakub', 'Zawiliński', 'kubazaw2001@gmail.com', 'bcb', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `songbook`
--

CREATE TABLE IF NOT EXISTS `songbook` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_bin NOT NULL,
  `lyrics` text COLLATE utf8_bin NOT NULL,
  `artist` text COLLATE utf8_bin NOT NULL,
  `genre` varchar(20) COLLATE utf8_bin NOT NULL,
  `addedBy` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=15 ;

--
-- Zrzut danych tabeli `songbook`
--

INSERT INTO `songbook` (`id`, `title`, `lyrics`, `artist`, `genre`, `addedBy`) VALUES
(1, 'Wędruja ludzie', '<p>Z wiarą w sercu,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; D G<br /> Z nadzieją u boku,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D G<br /> codzień od rana byle do przodu. &nbsp; h A G<br /> W huku czy w ciszy,<br /> W burzy czy w słońcu,<br /> krok po kroku, ciągle ku końcu.</p>\r\n<p>Ref. Wędrują ludzie z plecakiem uśmiechu,&nbsp; D A<br /> Z balastem smutku i oddechu.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; h G<br /> I nie chcą spocząć nawet na chwile,<br /> bo tak sie boją, że coś ich ominie.</p>\r\n<p>Z wiarą w sercu,<br /> Z nadzieją u boku,<br /> dążą do celu krok po kroku.<br /> Wędrują ku szczęściu<br /> Z daleka od złości<br /> szukając wiary, nadziei, miłości.</p>\r\n<p>&nbsp;</p>', 'Saskia', 'Harcerskie', 'Piotr Starzec'),
(2, 'Nasze przebudzenie', '<p>Słuchać w pełnym słońcu, jak pulsuje ziemia&nbsp;&nbsp;&nbsp;&nbsp; C G<br /> Uspokoić swoje serce, niczego już nie zmieniać&nbsp; d a<br /> I uwierzyć w siebie, porzucając sny<br /> To tw&oacute;j bunt przemija, a nie ty.<br /> <br /> Ref:<br /> Nie wiesz&nbsp;&nbsp; C<br /> Nie wiesz&nbsp;&nbsp; G<br /> Nie rozumiesz nic&nbsp; d a<br /> <br /> Widzieć parę bobr&oacute;w przytulonych nad potokiem<br /> Nie zabijać ich więcej, cieszyć się widokiem<br /> Nie wyjadać ich wnętrzności, nie wchodzić w ich sk&oacute;rę<br /> Stępić w sobie instynkt łowcy, wtopić w naturę.<br /> <br /> Ref: x2<br /> <br /> Wybrać to co dobre, z mądrych starych ksiąg<br /> Uszanować swoją godność, doceniając ją<br /> A gdy wreszcie uda się, własne zło pokonać<br /> Żeby zawsze mieć przy sobie, czyjeś ramiona.<br /> <br /> Ref: x2<br /> <br /> Wyczuć taką chwilę w kt&oacute;rej kocha się życie<br /> I m&oacute;c w niej być stale na wieczność w zachwycie<br /> W pełnym słońcu dumnie, na własnych nogach<br /> Może wtedy będzie można ujrzeć uśmiech Boga.<br /> <br /> Ref: x2</p>\r\n<p>G B C C<br /><br /> Przejść wielką rzekę&nbsp;&nbsp; F C<br /> Bez b&oacute;lu i wyrzeczeń&nbsp; d a</p>', 'Buzu Squat', 'Biesiadne', 'Piotr Starzec'),
(3, 'Ktoś mnie pokochał', '<p class="txtcore" style="text-align: left;"><span style="font-size: medium;">Ktoś mnie pokochał świat nagle zawirował ,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D G A<br />bo ktoś mnie pokochał na dobre i na złe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D G A<br />bezchmurne niebo zn&oacute;w mam nad głową ,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D G<br />bo ktoś pokochał mnie&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A h</span></p>\r\n<p><span style="font-size: medium;">Ktoś mnie pokochał <br />niech wszyscy ludzie wiedzą to<br />ktoś mnie pokochał&nbsp; ze snu mnie zbudził<br />ktoś kto pokochał mnie</span></p>\r\n<p><span style="font-size: medium;">Ref :<br />Lampa nad progiem i krzesło i drzwi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ( h A )( h A )<br />wszystko mi m&oacute;wi że mnie ktoś pokochał&nbsp; ( D G )( A D )<br />woda i ogień powtarza wciąż mi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ( G A )( A h )<br />że mnie ktoś pokochał dziś</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size: medium;">G A</span></p>\r\n<p><span style="font-size: medium;">Pukajcie ze mną w niemalowane drewno bo<br />czasami szczęście trwa tylko chwile dwie<br />pukajcie ze mną bo wiem na pewno<br />że ktoś pokochał mnie </span></p>', 'Skaldowie', 'Biesiadne', 'Agnieszka Wawro'),
(4, 'Bieszczadzkie anioły', '<p>Anioły są takie ciche&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; a<br /> Zwłaszcza te w Bieszczadach&nbsp;&nbsp;&nbsp;&nbsp; G<br /> Gdy spotkasz takiego w g&oacute;rach&nbsp; a<br /> Wiele z nim nie pogadasz&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; e <br /> <br /> Najwyżej na ucho ci powie&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C G<br /> Gdy będzie w dobrym humorze&nbsp; C F<br /> Że skrzydła nosi w plecaku&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C G<br /> Nawet przy dobrej pogodzie&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a e a<br /> <br /> Anioły są całe zielone <br /> Zwłaszcza te w Bieszczadach <br /> Łatwo w trawie się kryją <br /> I w opuszczonych sadach <br /> <br /> W zielone grają ukradkiem <br /> Nawet karty mają zielone <br /> Zielone mają pojęcie <br /> A nawet zielony kielonek <br /> <br />Ref.<br /> Anioły bieszczadzkie, bieszczadzkie anioły C G a<br /> Dużo w was radości i dobrej pogody&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C G a<br /> Bieszczadzkie anioły, anioły bieszczadzkie <br /> Gdy skrzydłem cię dotkną już jesteś ich bratem <br /> <br /> Anioły są całkiem samotne <br /> Zwłaszcza te w Bieszczadach <br /> W kapliczkach zimą drzemią <br /> Choć może im nie wypada <br /> <br /> Czasem taki anioł samotny <br /> Zapomni dokąd ma lecieć <br /> I wtedy całe Bieszczady <br /> Mają szaloną uciechę <br /> <br /> Anioły bieszczadzkie, bieszczadzkie anioły... <br /> <br /> Anioły są wiecznie ulotne <br /> Zwłaszcza te w Bieszczadach <br /> Nas też czasami nosi <br /> Po ich anielskich śladach <br /> <br /> One nam przyzwalają <br /> I skrzydłem wskazują drogę <br /> I wtedy w nas się zapala <br /> Wieczny bieszczadzki ogień <br /> <br /> Anioły bieszczadzkie, bieszczadzkie anioły... <br /> ...Gdy skrzydłem cię musną już jesteś ich bratem <br /> <br /> Anioły bieszczadzkie, bieszczadzkie anioły... <br /> ...Gdy skrzydłem cię musną już jesteś ich bratem <br /> <br /> Anioły bieszczadzkie, bieszczadzkie anioły... <br /> ...Gdy skrzydłem cię musną już jesteś ich bratem</p>', 'Stare Dobre Małżeństwo', 'Harcerskie', 'Piotr Starzec'),
(8, 'Drugi Brzeg', '<p>Tak jest mało czasu mało dni&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D<br /> Serce bije tylko kilka chwil.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; G A<br /> Niespokojne czeka wierci się<br /> Kiedy w końcu Ty przytulisz je.<br /> Tak jest mało czasu mało dni<br /> Serce bije tylko kilka chwil.<br /> Nie wiem czy Cię poznam ale wiem&nbsp; D<br /> Że na pewno ty rozpoznasz mnie.&nbsp;&nbsp;&nbsp; G Fis<br /> <br /> Zabierzesz mnie na drugi brzeg&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; h A<br /> Za Tobą będę do Nieba biegł.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D G A<br /> Zabierzesz mnie na drugi brzeg<br /> Za Tobą będę do Nieba biegł.<br /> <br /> Nie jest wcale ciężko kiedy wiem<br /> Że na końcu drogi spotkam Cię.<br /> Chociaż było tyle trudnych dni<br /> Codziennie bliżej Nieba warto żyć.<br /> Tak jest mało czasu mało dni<br /> Serce bije tylko kilka chwil.<br /> Nie wiem czy Cię poznam ale wiem<br /> Że na pewno ty rozpoznasz mnie.<br /> <br /> Zabierzesz mnie na drugi brzeg <br /> za tobą będę do nieba biegł 2 razy<br /> <br /> Mijają godziny mija czas<br /> Szukam Cię na niebie pośr&oacute;d gwiazd.<br /> Nie wiem czy Cię poznam ale wiem<br /> Że na pewno ty rozpoznasz mnie.<br /> <br /> Zabierzesz mnie ... /x3</p>', 'Arka Noego', 'Religijne', 'Piotr Starzec'),
(9, 'Harcerskie Ideały', '<div class="contentBox songContent">\r\n<div id="songContent" class="songText">\r\n<div id="tab-top-25534-1" class="tabCont originalText songTextDisplay">1.Na ścianie masz kolekcję swoich barwnych wspomnień D A e<br />Suszony kwiat, naszyjnik wiersz i liść D A e<br />Już tyle lat przypinasz szpilką na tej słomie D A e<br />To wszystko co cenniejsze jest, niż skarb D A e<br /><br />2.Po środku sam generał Robert Baden-Powell<br />Rzeźbiony w drewnie lilijki smukły kształt<br />Jest krzyża znak i orzeł srebrny jest w koronie<br />A zaraz pod nim harcerskich dziesięć praw<br /><br />Ramię pręż słabość krusz i nie zawiedź w potrzebie D A e h<br />Podaj swą pomocną dłoń tym co liczą na ciebie D A e<br />Zmieniaj świat, zawsze bądź sprawiedliwy i odważny D A e<br />Śmiało zwalczaj wszelkie zło niech twym bratem będzie każdy D A e<br /><br />REF:<br />I świeć przykładem świeć i leć w przestworza leć G A D G A D<br />I nieś ze sobą wieść że być harcerzem chcesz G A D G A D<br /><br />3.A gdy spyta cię ktoś skąd ten krzyż na twej piersi<br />Z dumą odpowiesz mu taki mają najdzielniejsi<br />Bo choć mało mam lat w swym harcerskim mundurze<br />Bogu ludziom i ojczyźnie na ich wieczną chwałę służę<br /><br />REF:<br />I świeć przykładem świeć i leć w przestworza leć G A D G A D<br />I nieś ze sobą wieść że być harcerzem chcesz G A D G A D</div>\r\n</div>\r\n</div>', 'Harcerskie', 'Harcerskie', 'Piotr Starzec'),
(10, 'Ballada o małym rycerzu', '<p>W stepie szerokim, kt&oacute;rego okiem&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a C D<br />Nawet sokolim nie zmierzysz,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a C E<br />Wstań, unieś głowę, wsłuchaj się w słowa&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a d a<br />Pieśni o Małym Rycerzu.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a E a</p>\r\n<p>Choć mały ciałem, rębacz wspaniały<br />Wyr&oacute;sł nad pierwsze szermierze<br />I wieki całe będą śpiewały<br />Pieśni o Małym Rycerzu.</p>\r\n<p>Ty, kt&oacute;ryś w boju, i ty, coś w znoju,<br />I ty, co uczysz i mierzysz,<br />Wstań, unieś głowę, wsłuchaj się w słowa<br />Pieśnie o Małym Rycerzu.</p>', 'Harcerskie', 'Biesiadne', 'Piotr Starzec'),
(11, 'Wspomnienie bumeranga', '<p>1. Przyjdzie rozstań czas&nbsp;&nbsp;&nbsp;&nbsp; C D e<br />I nie będzie nas&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C D e<br />Na polanie tylko pozostanie&nbsp;&nbsp; C D G e<br />Po ognisku ślad.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C D e<br /><br />Ref. Na na naj...na na naj.&nbsp; C D G e C D e<br /><br />2. Zdartych głos&oacute;w ch&oacute;r <br />Źle złapany dur <br />Warty w nocy, jej niebieskie oczy <br />Nie powr&oacute;cą już. <br /><br />3. Zarośnięty szlak <br />Zapomniany rajd <br />Schronisk biało-błękitnej chusty <br />Kiedyś będzie brak. <br /><br />4. Staniesz z nami w krąg <br />Dotkniesz silnych rąk <br />Będziesz śpiewał, marzył i rozlewał <br />Cały serca żar. <br /><br />5. Chciałbyś cofnąć czas <br />Stanąć twarzą w twarz <br />W cieniu drzew przyjaźń ci wyśpiewam <br />Aż po wieczny czas. <br /><br />6. Czyjś zbłąkany głos <br />Do strumienia wpadł <br />Nad g&oacute;rami białymi chmurami <br />Cicho śpiewa wiatr. <br /><br />7. Gdzieś za rok, za dwa <br />Przyjdzie rozstań czas <br />Złotych włos&oacute;w, orzechowych oczu <br />Już nie będzie brak. <br /><br />8. Gdzie ogniska blask <br />Stanie ob&oacute;z nasz <br />Na polanie bratni krąg powstanie <br />Jak za dawnych lat.</p>', 'Harcerskie', 'Harcerskie', 'Piotr Starzec'),
(12, 'Wrócić do Derry', '<table style="width: 441px; height: 838px;" class="table table-bordered"><tbody><tr><td>Pański trzeci to rok, równy skazańczy krok, &nbsp;&nbsp;&nbsp; <br>Chłodny poranek w miasteczku Derry &nbsp; <br>Pochód ponury nasz zmierza do portu skąd &nbsp; <br>Odplyniemy gdzie Austarlii brzegi&nbsp; <br>Draniom skrupułów brak, uciec stąd nie ma jak? &nbsp; <br>Każdy&nbsp; skuty w kajdanach ma dłonie &nbsp; <br>Wyrok surowy padł sędzia skazał nas &nbsp;&nbsp;&nbsp; <br>Za niewierność brytyjskiej koronie &nbsp; <br>&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br>Ref: &nbsp;&nbsp;&nbsp; &nbsp;<br>&nbsp;&nbsp; Oh.... Chcialbym wrócić do Derry &nbsp;&nbsp;&nbsp; <br>&nbsp;&nbsp; Oh.... Chcialbym znowu być w Derry &nbsp;&nbsp;&nbsp; <br>&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br>Stary Foyle żegna się z ziemią przodków bo wie &nbsp;&nbsp;&nbsp; &nbsp;<br>że już nigdy w te strony nie wróci &nbsp;&nbsp;&nbsp; &nbsp;<br>O''Doherty przez sen szlocha prawie co noc &nbsp;&nbsp;&nbsp; &nbsp;<br>przez łzy przywołując swą Lucy &nbsp;&nbsp;&nbsp; &nbsp;<br>słońce pali nas tak, że oddechów nam brak &nbsp;&nbsp;&nbsp; &nbsp;<br>Dan O''Connor majaczy w gorączce &nbsp;&nbsp;&nbsp; &nbsp;<br>sześćdziesięciu nas dziś zmierza do Botany Bay &nbsp;&nbsp;&nbsp; &nbsp;<br>nie wiadomo jak wielu tam dotrze &nbsp;&nbsp;&nbsp; &nbsp;<br>&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br>w duszy skląłem ich tak na czym stoi ten świat &nbsp;&nbsp;&nbsp; &nbsp;<br>statek tańczy jak oszalały &nbsp;&nbsp;&nbsp; &nbsp;<br>znowu kolejny dzień, znów kajdany i smród &nbsp;&nbsp;&nbsp; &nbsp;<br>czy któryś z nas wyjdzie stąd cały &nbsp;&nbsp;&nbsp; &nbsp;<br>który tydzień to już mkniemy przez błękit mórz &nbsp;&nbsp;&nbsp; &nbsp;<br>nie potrafię się tego doliczyć &nbsp;&nbsp;&nbsp; &nbsp;<br>teraz 42 może zobaczy ląd &nbsp;&nbsp;&nbsp; &nbsp;<br>lecz nie będzie to brzeg nasz rodzimy &nbsp;&nbsp;&nbsp; &nbsp;<br>&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br>eh van Ddiemen''s Land to piekło dla tych &nbsp;&nbsp;&nbsp; &nbsp;<br>co życie wieść muszą w niewoli &nbsp;&nbsp;&nbsp; &nbsp;<br>klimat&nbsp; ciężki&nbsp; tu jest prawo stanowi broń &nbsp;&nbsp;&nbsp; &nbsp;<br>Panie jak możesz na to pozwolić &nbsp;&nbsp;&nbsp; &nbsp;<br>kiedyś nadejdzie dzień, śmierć uwolni mnie &nbsp;&nbsp;&nbsp; &nbsp;<br>zrzuce w końcu te ciężkie kajdany &nbsp;&nbsp;&nbsp; &nbsp;<br>dołącze do tych co wolni już są &nbsp;&nbsp;&nbsp; &nbsp;<br>w naszym Derry się znowu spotkamy<br><br>&nbsp;<br></td><td>e G<br>D A e<br>e G<br>D A e<br>e h<br>e h<br>e G<br>D A e<br><br><br>G D e D e<br>G D e D e<br></td></tr></tbody></table><p><br></p>', 'Sąsiedzi', 'Szanty', 'Piotr Starzec'),
(14, 'Szare szeregi', '<table style="width: 379px; height: 858px;" class="table table-bordered"><tbody><tr><td>Gdzie losów wojny niesie wiatr<br>tam zza rogów stu<br>Stoi na straży szara brać<br>i flaga biało czerwona<br><br>&nbsp; &nbsp;&nbsp; szare szeregi szeregi<br>&nbsp;&nbsp;&nbsp;&nbsp; szare szeregi<br>&nbsp;&nbsp;&nbsp;&nbsp; w szarych mundurach<br>&nbsp;&nbsp;&nbsp;&nbsp; harcerska brać<br><br>nie straszny nam wojen cios<br>ni strzały za rogów stu<br>choć krzyżem sany czarny las<br>opaska biało czerwona<br><br>choć miał zaledwie 10 lat<br>nie straszna mu jest śmierć<br>na barykadzie stoi chwat<br>z opaską biało czerwoną<br><br>chwycił butelkę pełną benzyny<br>i wybiegł na drogę z nią<br>krzykną do swoich CZUWAJ CHŁOPAKI<br>i zginął za biało czerwoną<br><br>złożyli go do ziemi tej<br>za którą swe życie dał<br>Grób porosły kępy mchu<br>a flaga biało czerwona<br><br>harcerzu wspomnij wojny czas<br>i przyjdź na groby ich<br>choć wojny dawno minął czas<br>Ty wspomnij Szare Szeregi<br></td><td>a d<br>G C<br>a d<br>E a<br></td></tr></tbody></table><p><br></p>', 'Harcerskie', 'Harcerskie', 'Piotr Starzec');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
