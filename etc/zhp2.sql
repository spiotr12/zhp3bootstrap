-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 24 Lut 2015, 12:50
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `zhp2`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `borrow_history`
--

CREATE TABLE IF NOT EXISTS `borrow_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_borrowed` date NOT NULL,
  `date_returned` date NOT NULL,
  `book_id` int(11) NOT NULL,
  `person` varchar(50) COLLATE utf8_bin NOT NULL,
  `returned` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_borrow_history_library` (`book_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

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
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=17 ;

--
-- Zrzut danych tabeli `events`
--

INSERT INTO `events` (`id`, `title`, `happen`, `created`, `content`, `author`) VALUES
(1, 'Zbiórka 5 kwietnia! Serdecznie zapraszamy wszystkich chętnych ', '2014-04-05', '2014-03-23', '<p>Jeśli tutaj trafiliście to znaczy, że wysłuchaliście naszej prezentacji 22 lub 25 marca 2014., a także dlatego, że jesteście szczęśliwymi wybrańcami do kt&oacute;rych się odezwaliśmy.<br /><br />Kolejne spotkanie "os&oacute;b sprzyjających" (na razie zbiorczo Bractwo Harcerzy Starszych i Ewentualne Koło Przyjaci&oacute;ł Harcerstwa) odbędzie się w Sobotę 5 kwietnia 2014r.<br /><br />START: godzina 14.52 sec 38 w Catholic Chaplaincy, High Street 7, Old Aberdeen.<br /><br />Dla os&oacute;b kt&oacute;re nie wiedzą gdzie to jest i mimo googlemaps mogą pobłądzić [Google Maps] bedzie stał na HIGH STREET strach na wr&oacute;ble (zadziwiająco podobny do jednego z prowadzących prezentację) na wysokości KINGS COLLEGE<br /><br />- Nie ma opcji, żebyście nie zauważyli. Strach na Wr&oacute;ble wskaże wam drogę i będzie tam straszyć od godziny 14.22 sec 33.<br /><br />Pierwsze 1,5h przeżyjemy wsp&oacute;lnie "przygodę" niezależnie od warunk&oacute;w pogodowych (z wyjątkiem tsunami). [METEOPROG Aberdeen]<br /><br />Następne 1h spędzimy w Catholic Chaplaincy Hight street 7 (dla sp&oacute;źnialskich, kt&oacute;rzy przez pierwsze 1,5 nie mogli nas znaleźć).<br /><br />KONIEC, 18.30. Należy ze sobą zabrać: - długopis, odzież stosowną do aury pogodowej, - stosowne obuwie do chodzenia - szpilki, obcasy mogą być trochę niewygodne, dobry humor:) Więcej szczeg&oacute;ł&oacute;w...to tajemnica harcerska...;) W imieniu "Bractwa", serdecznie zapraszamy.<br /><br />PS Walczyliśmy o termin spotkania aby był 29 marca, jednak ilość os&oacute;b kt&oacute;ra wpisała się jako chętna na spotkanie przekroczyła nasze najśmielsze oczekiwania, stąd musieliśmy znaleźć większą salę, co wiąże się ze zmianą terminu na p&oacute;źniejszy. Cieszymy się z odzewu i zainteresowania Braterstwem i Służbą.</p>', 'Krzysiek'),
(2, 'Obóz Wędrowny 2014 ', '2014-08-21', '2014-08-03', '<p>Ob&oacute;z wędrowny to jedna z najpiękniejszych przyg&oacute;d harcerskich &ndash; wspaniałe widoki, urozmaicona przyroda, dzikie biwaki i niezapomniane przeżycia. Ob&oacute;z wędrowny to nie zwykła wędr&oacute;wka lecz idealne doświadczenie wędrownicze.<br /><br />Miejsce: Hadrian&rsquo;s Wall Path (od Newcastle do Carlisle)<br /><br />Termin: Czwartek 21-go Sierpnia &ndash; Poniedziałek 25-go Sierpnia 2014<br /><br />Transport: We własnym zakresie do stacji kolejowej w Newcastle 21-go Sierpnia przed 10:00 i z Carlisle 25-go Sierpnia po 17:00<br /><br />Dla Kogo:<br />1. dorośli (kontakt do kierownika kręgu harcerstwa Starszego 0792 827 11 43<br />2. Młodzież 15+ zgłaszać się zgodnie z opisem poniżej (obu płci)<br />3. Osoby 13-15 lat (negocjujemy czy hufiec pozwoli zrobić wyjątek dla Aberdeen, kontaktować się jak w pkt. 1.<br /><br />Koszt: Opłata wynosi &pound;50 &ndash; należy zapłacić got&oacute;wką na miejscu. Do 16 należy uiścić 12 funt&oacute;w ubezpieczenia do kierownika kręgu w Aberdeen (0792 827 1143)<br /><br />UBEZPIECZENIE: Uczestnicy obozu będą ubezpieczeni przez polisę Związku Harcerstwa Polskiego &ndash; Okręg Wielkobrytyjski. Dla uczestnik&oacute;w należących do drużyn, ubezpieczenie jest automatycznie pokryte przez zapłacone doroczną składkę. Uczestnicy kt&oacute;rzy nie płacą takich składek będą musieli dopłacić &pound;12.00 do opłaty by pokryć ubezpieczenie.<br /><br />Zgłoszenia: Należy zgłosić się emailem, kaptur_konrad@hotmail.com, lub telefonicznie, 07986860774, do druhu komendanta najp&oacute;źniej do dnia 16-go Sierpnia.<br /><br />Informacje: Dalsze szczeg&oacute;ły związane z obozem będą podane w następnym komunikacie. Proszę o kontakowanie się ze mną lub z druhem Hufcowym, jeśli są jakiekolwiek pytania na temat obozu.<br /><br />CZUWAJ!<br />pwd. Konrad Kaptur<br />phm. Marek Pepliński<br />Komendant Obozu Hufcowy Hufca &ldquo;Wilno&rdquo;<br />07986 860774 07970 494309<br /><br /><br /> <img class="e_event_img" src="img/temp_gallery/hadrianwall1.jpg" alt="" width="300" /><img class="e_event_img" src="img/temp_gallery/hadrianwall2.jpg" alt="" width="300" /></p>', 'Krzysiek'),
(3, 'Integracja kadry oraz szkolenie zastępowych ', '2014-09-12', '2014-09-08', '<p>Witajcie<br /><br /> Spotykamy się na pikniku rodzinnym w czasie kt&oacute;rego przez jego część zrobimy sobie szkolonko kadry. Można zabrać dzieci. Impreza ma charakter cywilno-koleżeński, nie harcerski. apel i elementy musztry tylko na spotkaniu kadry.<br /><br /> Miejsce:St.cyrus, zakończenie Beach Road schodzi do morza, zobaczycie piękny widok i chatkę na plaży. To tam się organizujemy. W celu ustalenia lokalizacji polecam googlemaps.<br /><br /> Czas: <br /> integracja kadry, piątek (12.09) od 19.00 <br /> szkolenie, sobota (13.09) 11 -16.<br /> impreza dziękczynna 17 <br /><br /> dojazd: samochodem, lub autobus X 7, autobus kosztuje dyszkę w obie strony.<br /><br /> składka piknikowa 3 funty. <br /><br /> nocowanie: w chatce, można też wr&oacute;cić do aberdeen. Małe dzieci dały kiedyś radę, chatka sprawdzona w czerwcu. karimata, dobry śpiw&oacute;r, proszę zabrać ze sobą. drobne narzedzia biwakowe mogą się przydać.</p>', 'Krzysiek'),
(5, 'Ognisko dla Bierzmowanych ', '2014-05-17', '2014-05-10', '<p>Zadaniem młodziezy było zbudowanie w wyznaczonych miejscach ogniskowych kuchni polowych z materiału jaki był dostępny w pobliżu, tzn z granitowych kamieni. Lista dań zawierała m.in typowe harcerskie podpłomyki, tj. chleb z ogniska, dania kartoflane na ogniu, dania mięsne i jarskie, a także wiele innych dań niewymagajacych ognia. Młodzież uczona była nie tylko otrzymywac gotowy program/rozrywkę, ale także pracy w grupie dla innych i z innymi. Opr&oacute;cz zadań kulinarnych odbyło się kilka gier integracyjnych a także nauka śpiewu kilku pisenek polonijnych np. Marsz Polonia.<br /><br /> <img class="e_event_img" src="img/temp_gallery/seatonognisko.jpg" alt="" width="300" /></p>', 'Krzysiek'),
(6, 'Spotkanie dla dorosłych wolontariuszy', '2014-05-10', '2014-10-30', '<p>Odbyło się spotkanie dorosłych wolontariuszy zainteresowanych tematyką harcerską. Spotkanie miało miejsce tuż po porannej mszy. Uczestniczyło w nim 14 os&oacute;b. Rozdzielono na nim zadania na nadchodzące wydarzenie zaplanowanym na 17 maja ''Wariacje kuchni polowej'', kt&oacute;re było pierwszym spotkanie dla młodzieży. Na spotkaniu ustalono: zakres działania parafialnej Białej Służby, a także plan dw&oacute;ch kolejnych zbi&oacute;rek, rozdano teksty piosenek i wyznaczono osoby kt&oacute;re będą tych piosenek uczyć, ustalono listę dań typowych dla kuchni polowej do kt&oacute;rych produkty przygotują wolontariusze. Zadaniem młodzieży było w mniejszych patrolach sporządzić te dania. Rozdano też zadania na kolejną zbi&oacute;rkę planowaną na 10 czerwca ''Ognisko oraz gry znane oraz nieznane''.</p>', 'Krzysiek'),
(7, 'Turniej Paintball na Battleground-dzie', '2014-03-23', '2014-03-13', '<p>Odbyły się zawody szkockich grup strzeleckich w czasie kt&oacute;rych ZHP w Aberdeen wystawiło swoją reprezentację zajmując 4 miejsce. Na zawody przybyli mężczyźni, przyszli kandydaci na drużynowych harcerskich - męskich jednostek ZHP. Ćwiczenia przed rozgrywkami obejmowały musztrę bojową, marsz ubezpieczony, rozpoznanie terenu, przemiszczanie się patrolu w boju, rolowanie, maskowanie w terenie, nacierenie sekcjami, tyralierę. Zajęcia prowadził Krzyszto Orchowski, w celu sprawdzenia umiejętności liderskich dowodzenie w boju zostało przekazane Dawidowi Bulandzie, liderowi Polskiego Centrum Młodzieży katolickiej.<br /><br /> <img class="e_event_img" src="img/temp_gallery/paintballzawody.jpg" alt="" width="300" /></p>', 'Krzysiek'),
(8, 'Laser Tag na Battleground', '2013-11-16', '2013-11-01', '<p>Zbi&oacute;rka miała miejsce na "Battleground" w pobliżu Aberdeen, to ośrodek symulacji pola bitwy. Odbylismy kilka gier wojennych typu ''LASER TAG''. Celem było rozpoznanie realnych reakcji poszczeg&oacute;lnych członk&oacute;w w działaniu zespołowym, zegranie się wszystkich uczestnik&oacute;w kadry. Poznaliśmy się nawzajem nieco lepiej a następnie odbyliśmy kr&oacute;tkie szkolenie z zakresu prowadzenia patrolu harcerzy. Krzysztof przedstawił kr&oacute;tki wstęp do ceremoniału harcerskiego, a także musztry. A potem, poszliśmy na pole bitwy - akcja i symulacja pola walki przyśpieszyła wzajemne interakcje tak, że po zakończeniu nie odczuwaliśmy, że to dopiero drugie spotkanie.<br /><br /> <img class="e_event_img" src="img/temp_gallery/lasertag.jpg" alt="" width="300" /></p>', 'Krzysiek'),
(9, 'Ognisko na "dzikiej plaży"', '2014-06-28', '2014-06-12', 'Odbyła się zbiórka młodziezy bierzmującej i już bierzmowanej. Uczestniczyły te same osoby w stosunku do zbiórki 17.05.2014 lecz o poszerzonym składzie o kilka nowych osób. Ogółem stan wynosił 19 młodzieży i dzieci oraz 6 dorosłych kadry. Spotkanie rozpoczęło się harcerskim apelem i meldunkiem zastępów. Odspiewano hymn ''Mrsz Polonia''. Odbyły się gry na plaży polegające na współzawodnictwie i współdziałaniu aby móc wyodrębnić z szerszej wiekszej grupy naturalne mniejsze grupy do pracy w zastępach od września. Graliśmy w Manso, i kilka innych harcerkich gier. Zajęcia zostały przerwane przez ulewę i typową szkocką pogodę. Wykonano plan B, który polegał na wyświetleniu filmu w siedzibie ZHP na Seaton Avenue 14 D, tj. Kamieni na Szaniec, oraz wspólnym posiłku i polskiej modlitwie.', 'Krzysiek'),
(10, 'Wędrówka z Portsoy do Cullen', '2014-10-26', '2014-10-30', '<p>W niedziele odbędzie się wędr&oacute;wka z Portsoy do Cullen!!</p>\r\n<p>Link do albumu: <a title="Wedrowka Portsoy - Cullen 2014 Galeria" href="gallery/index.php?/category/1" target="_blank">tutaj</a></p>\r\n<p><img src="gallery/_data/i/upload/2014/11/03/20141103174621-2e87f61b-me.jpg" alt="" width="400" height="267" /></p>', 'Piotr Starzec'),
(11, 'Wędrówka Cambus of May - Loch Kinord', '2014-11-16', '2014-11-03', '<p>Czuwaj!</p>\r\n<p>Po udanej wędr&oacute;wce po klifach czas na przygodę po g&oacute;rach. Zachęcam do zapoznania się z programem i do zobaczenia na szlaku!</p>\r\n<table border="1">\r\n<tbody>\r\n<tr>\r\n<td width="94">\r\n<p><strong>Data</strong></p>\r\n</td>\r\n<td width="510">\r\n<p>16 Listopad 2014</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="94">\r\n<p><strong>Wyjazd</strong></p>\r\n</td>\r\n<td width="510">\r\n<p><strong>Aberdeen </strong></p>\r\n<p>07:45 &ndash; 201 do &bdquo;Ballater, opp Cambus O''May Forest Walk Centre&rdquo;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="94">\r\n<p><strong>Trasa</strong></p>\r\n</td>\r\n<td width="510">\r\n<p>Ok 10 km, możliwe zmiany i urozmaicenia, r&oacute;żne warianty ostatniego odcinka.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="94">\r\n<p><strong>Powr&oacute;t</strong></p>\r\n</td>\r\n<td width="510">\r\n<p><strong>Dinnet</strong></p>\r\n<p>17:05 &ndash; 201 do &ldquo;Aberdeen Union Square&rdquo;</p>\r\n<p>Planowany przyjazd do Aberdeen: 18:38</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="94">\r\n<p><strong>Plecak</strong></p>\r\n</td>\r\n<td width="510">\r\n<p>Coś od deszczu, wygodne buty ZA KOSTKĘ! (NIE TRAMPKI, TENIS&Oacute;WKI ITP.), bluzę/polar, wygodne spodnie (NIE JEANSY!) np. boj&oacute;wki, coś od wiatru, czapkę, rękawiczki itp.</p>\r\n<p>Prowiant na cały dzień, wodę, czekoladę (najlepiej gorzką), owoce, sok itd. Możliwa opcja obiadu w Dinnet (dla chętnych).</p>\r\n<p>(Prosimy nie zabierać chips&oacute;w i energy drink&oacute;w!)</p>\r\n<p>**Lornetkę, aparat** -&gt; na własną odpowiedzialność.</p>\r\n<p>Koszt: nadal do ustalenia (ok &pound;30-40 bilety autobusowe &ndash; lub transport od KPH)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="94">\r\n<p><strong>Ceny bilet&oacute;w</strong></p>\r\n</td>\r\n<td width="510">\r\n<p>(Aberdeen zone 6) <a href="http://www.stagecoachbus.com/bluebird-tickets.aspx">http://www.stagecoachbus.com/bluebird-tickets.aspx</a></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'Piotr Starzec'),
(12, 'Konkurs na funkcje instruktorskie', '2014-12-31', '2015-01-18', '<p>Związek Harcerstwa Polskiego w Aberdeen z okazji swieta Niepodleglosci oglasza konkurs na funkcje instruktorska na terenie North East Scotland, Aberdeen, Aberdeenshire, Dundee, Frasebourgh, Perth, Inverness, Banff i Macduff</p>\r\n<p>Wymagania:</p>\r\n<p>- osoba gotowa podnosić swoje kwalifikacje w roli wychowawcy polskiej młodzieży lub były/obecny instruktor z ZHR, ZHP, FSE ''Zawisza'' lub innej organizacji harcerskiej na terenie kraju <span class="text_exposed_show"><br /> - pełnoletność lub min. 16 lat jeśli kandydat posiada doświadczenie harcerskie na funkcji minimum przybocznego/przybocznej<br /> - niekaralność<br /> - dobry humor <br /> - wysoki poziom kultury osobistej<br /> - wysoki poziom moralny w życiu codziennym<br /> - gotowość do podjęcia służby Bogu, Polsce, Bliźnim (także lokalnej społeczności w tym parafialnej, polskiej, szkockiej a także społeczności w miejscu zamieszkania)<br /> - gotowość do stosowania metod przyjętych w polskim harcerstwie na emigracji<br /> - CV oraz list motywacyjny ''Czym motywujesz się zgłaszając się do służby harcerskiej oraz dlaczego mielibyśmy Cię przyjąć'' na k.orchowski.08@aberdeen.ac.uk<br /> - całkowita abstynencja będzie dodatkowym atutem, nie jest jednak nieodzownie wymagana w zhp na emigracji</span></p>\r\n<div class="text_exposed_show">\r\n<p>oferujemy:<br /> - elitarną służbę w gronie os&oacute;b o wysokim morale<br /> - możliwość realizacji ideał&oacute;w harcerstwa w życiu codziennym<br /> - dofinansowanie do umundurowania i wyposażenia po odbyciu 3 miesięcy owocnej służby zakończonej otwarciem pr&oacute;by na stopień Aspiranta i pomyślnym zakończeniem pr&oacute;by na krajkę ( w wypadku os&oacute;b już ze stopniem instruktorskim możliwość negocjacji wymagań, stosownie do służby)<br /> - niezapomnianą przygodę życia "bo życie ma tylko sens gdy jest służbą" A. Małkowski<br /> Kandydat&oacute;w nieprzyjętych w rekrutacji jesienno-zimowej zaprosimy do rekrutacji wiosennej. Nasz limit obecnie to trzy osoby gotowe pełnić służbę Bogu, Polsce, bliźnim.<br /> kontakt<br /> Związek Harcerstwa Polskiego poza granicami kraju, Aberdeen<br /> 07928271143<br /> Kierownik Kręgu Harcerstwa Starszego</p>\r\n<p>Jeszcze Polska nie zginela!</p>\r\n</div>', 'Krzysztof Orchowski'),
(13, 'Kiermasz kartek, ozdób i ciast świątecznych - akcja zarobkowa na mundury', '2014-12-14', '2015-01-18', '<p>Czuwajcie!</p>\r\n<p>Zapraszamy serdecznie na kiermasz na kt&oacute;rym będzie można nabyć przepyszne, artystyczne, polskie, bożonarodzeniowe wypieki, własnoręcznie wykonane przez polską młodzież, kartki świąteczne oraz ozdoby choinkowe i mn&oacute;stwo innych choinkowych atrakcji. Załączamy zdjęcia naszych ozd&oacute;b, kt&oacute;re można kupić od harcerzy i młodzieży. Doch&oacute;d będzie między innymi przeznaczony na dalszą działalność Klubu Młodzieży Polskiej oraz na Mundury dla polskich harcerzy zrzeszonych w ZHP <span class="text_exposed_show">Aberdeen.</span></p>\r\n<div class="text_exposed_show">\r\n<p>Kiermasz odbędzie się 14 Grudnia w St. Mary''s Cathedral, Huntley Street, Aberdeen. Nabywać najlepiej prosze po mszach. o 9.30 oraz 15.00. Będziemy też sprzedawać po anglo-języcznych mszach, więc jesli ktoś z Państwa ma zamiar przyjśc na p&oacute;źniejszą mszę może nie zdążyć na najlepsze wypieki czy ozdoby. Poniżej Aniołek, przykladowa ozdoba wykonana przez polską młodzież w Aberdeen. Życzę wam abym w waszych domach w te święta nastał klimat prawdziwych, polskich świąt Bożego Narodzenia! Mamy nadzieję, że nasz kiermasz wspomoże wasze przygotowania na nadejście Pana! Prostujmy drogi na jego nadejście! Zapraszamy!</p>\r\n<p>Link do albumu z wydarzeniami: <a href="gallery/index.php?/category/3" target="_blank">tutaj</a></p>\r\n</div>', 'Piotr Starzec'),
(14, 'Przybyły mundury', '2015-01-17', '2015-02-14', '<p><span class="userContent">Kochani! Mundury dla czlonkow kursu kadry przybyly I czekaja na was do odbioru na jutrzejszej zbiorce naszego kursu kadry ZHP ''AGRICOLA''. Zeby tych radosci nie bylo za malo, kurs jutro bedzie prowadzic takze Krzysztof <em class="_4-k1 img sp_4Wn7r2ult0E sx_c2421f"><span style="text-decoration: underline;">Emotikon smile</span></em> Nie dosc ze ubierzemy was od stop do glow w mundury, to jeszcze oczarujemy was magia historii harcerstwa <br /> <a href="https://www.youtube.com/watch?v=ViT7Vg1OC0Y&amp;list=PL9F78CB0DAE2EA9DC&amp;index=2" target="_blank" rel="nofollow nofollow">https://www.youtube.com/watch?v=ViT7Vg1OC0Y&amp;list=PL9F78CB0DAE2EA9DC&amp;index=2</a></span></p>\r\n<p><img src="gallery/i.php?/upload/2015/02/14/20150214120646-deea1346-me.jpg" alt="" width="308" height="225" /> <img src="gallery/_data/i/upload/2015/02/14/20150214120648-9f8701d0-me.jpg" alt="" width="176" height="259" /></p>', 'Piotr Starzec'),
(15, 'Ruszamy z zuchami!', '2015-02-11', '2015-02-14', '<p><span class="userContent">Kurs Kadry ZHP Aberdeen ''Agricola'' z sekcji zuchowej, zaprasza na zbi&oacute;rki zuchowe (7-11 lat), 18-19.30, St.Mary''s Cathedral, sala boczna, schodami w d&oacute;ł, proszę przygotować dla swoich pociech nap&oacute;j/buteleczkę wody. Składka za zuchowa to 15 <span class="text_exposed_show">funt&oacute;w za 3 miesiace w tym ubezpieczenie. Latem przewidujemy kolonie zuchową. Zapraszamy nie tylko pociechy, ale także dorosłych do kadry zuchowej przyjmiemy tylko osoby konkretne, zorganizowane, pozytywne, radosne i z wielkim sercem do szeroko pojętej służby harcerskiej (jak te na załączonym zdjęciu:) i oczywiście niekarane). <br /> Czuj Duch!<br /> <br /> P.S<br /> Część zuch&oacute;w ma już mundury zuchowe, prosimy aby dzieci je nosiły na zbi&oacute;rki, pozostałych rodzic&oacute;w uspokajamy: nie jest to wymagane na poczatku i przygotujemy niejedną akcję zarobkową ZHP kiedy będziecie mogli drobnym wsparciem (np. wypiekiem lub pomocą przy sprzedaż ciast po mszy) zdobyć funduszę na mundury. Chcieć to m&oacute;c!</span></span></p>\r\n<p><span class="userContent"><span class="text_exposed_show"><img src="gallery/upload/2015/02/14/20150214120649-8b5f2cca.jpg" alt="" width="480" height="270" /></span></span></p>', 'Piotr Starzec'),
(16, 'Kurs Agricola zakończony!', '2015-02-07', '2015-02-14', '<p><span class="userContent">Na zakończenie kursu Kadry ZHP Aberdeen ''Agricola'' uczestnicy sprawdzili swoją wiedzę w trakcie harcerskiego biegu. każdy uczestnik otrzymał kartę odpowiedzi, a zadania na biegu dotyczyły wiedzy i umiejętności niezbędnych do prowadzenia podstawowych jednostek harcerskich. Uczestnicy kt&oacute;rzy pomyślnie ukończa kurs, będą odbywać staż instruktorski w Gromadzi Zuchowej lub Druzynie Harcerskiej w Aberdeen. Trzymamy kciuki za wyniki!</span></p>\r\n<p><span class="userContent"><img id="theMainImage" title="1526523 299577470166342 6344755555163488034 n - 1526523_299577470166342_6344755555163488034_n.jpg" src="gallery/i.php?/upload/2015/02/14/20150214120647-42e68152-la.jpg" alt="1526523_299577470166342_6344755555163488034_n.jpg" usemap="#maplarge" width="356" height="475" /></span></p>\r\n<p><img src="gallery/upload/2015/02/14/20150214120646-6ad91e18.jpg" alt="" width="391" height="293" /></p>', 'Piotr Starzec');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `library`
--

CREATE TABLE IF NOT EXISTS `library` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`book_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=26 ;

--
-- Zrzut danych tabeli `library`
--

INSERT INTO `library` (`book_id`, `title`, `author`, `publisher`, `published_date`, `published_city`, `genre`, `language`, `copies`, `notes`, `owner`) VALUES
(1, 'Książka Wodza Zuchów', 'Aleksander Kamiński', 'ZHP w Wielkiej Brytanii', 1973, 'Londyn', 'Poradnik', 'Polski', 1, '', 'ZHP Aberdeen'),
(2, 'Księga Harców', 'M. K.', 'Naczelnictwo ZHP PGK', 1947, 'Londyn', 'Poradnik', 'Polski', 1, '', 'ZHP Aberdeen'),
(4, 'Krąg Rady', 'Aleksander Kamiński', 'Ministerstwo wyznań religijnych i oświecenia publicznego', 1945, 'Londyn', 'Poradnik', 'Polski', 1, '', 'ZHP Aberdeen'),
(5, 'Pionierka Harcerska', 'Adam Hyży', 'Biblioteka Skauta', 2012, 'Warszawa', 'Poradnik', 'Polski', 1, '', 'ZHP Aberdeen'),
(6, 'Instruktorzy - o czym instruktor wiedzieć powinien: część 1', 'Bogran Szwagrzak', 'Główna Kwatera Harcerzy wydział kształcenia starszyzny', 1991, 'Londyn', 'Poradnik', 'Polski', 1, '', 'ZHP Aberdeen'),
(7, 'Instruktorzy - o czym instruktor wiedzieć powinien: część 2', 'Bogran Szwagrzak', 'Główna Kwatera Harcerzy wydział kształcenia starszyzny', 1991, 'Londyn', 'Poradnik', 'Polski', 1, '', 'ZHP Aberdeen'),
(8, 'Harcownicy - o czym harcerz w drużynie wierdzieć powinien: cześć 1', 'Bogran Szwagrzak', 'Główna Kwatera Harcerzy wydział metodyczno-programowy', 1989, 'Londyn', 'Poradnik', 'Polski', 1, '', 'ZHP Aberdeen'),
(9, 'Harcownicy - o czym harcerz w drużynie wierdzieć powinien: cześć 2', 'Bogran Szwagrzak', 'Główna Kwatera Harcerzy wydział metodyczno-programowy', 1989, 'Londyn', 'Poradnik', 'Polski', 2, '', 'ZHP Aberdeen'),
(10, 'Harcownicy - o czym harcerz w drużynie wierdzieć powinien: cześć 3', 'Bogran Szwagrzak', 'Główna Kwatera Harcerzy wydział metodyczno-programowy', 1989, 'Londyn', 'Poradnik', 'Polski', 1, '', 'ZHP Aberdeen'),
(11, 'Stosowanie metody harcerskiej w drużynie harcerzy', 'Marek Kamecki', 'Główna Kwatera Harcerzy ZHR', 1999, 'Warszawa', 'Poradnik', 'Polski', 1, '', 'ZHP Aberdeen'),
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
(25, 'Generał Władysław Anders', 'Jerzy Kirszak', 'Instytut Pamięci Narodowej', 2014, 'Bielsko-Biała', 'Broszura historyczna', 'Polski', 1, '', 'ZHP Aberdeen');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(128) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `salt` char(128) COLLATE utf8_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Zrzut danych tabeli `member`
--

INSERT INTO `member` (`id`, `username`, `password`, `firstname`, `lastname`, `email`, `salt`, `admin`) VALUES
(1, 'spiotr12', '8fad91ffbb4c8e38ef39a53ea8a14b6dc56a5fafc861606455f34baf73aa77b9', 'Piotr', 'Starzec', 'starzec.piotr.12@gmai.com', '04e', 1),
(2, 'Kriz', '94c930d62bc1ee24c962ff770e1a1aa8ee61f2811633c1719a3634ba4027e5fb', 'Krzysztof', 'Orchowski', 'k.orchowski.08@aberdeen.ac.uk', '8d9', 1),
(3, 'kasia', 'cfdb1eab0f25aa66e1f4ea67446f6cf5798f0c875f2ded6973c73843953f0229', 'Katarzyna', 'Stec', 'stec.katarzyna89@gmail.com', '307', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `songbook`
--

CREATE TABLE IF NOT EXISTS `songbook` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_bin NOT NULL,
  `lyrics` text COLLATE utf8_bin NOT NULL,
  `artist` text COLLATE utf8_bin NOT NULL,
  `addedBy` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Zrzut danych tabeli `songbook`
--

INSERT INTO `songbook` (`id`, `title`, `lyrics`, `artist`, `addedBy`) VALUES
(1, 'Wędruja ludzie', '<p>Z wiarą w sercu,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; D G<br /> Z nadzieją u boku,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D G<br /> codzień od rana byle do przodu. &nbsp; H A G<br /> W huku czy w ciszy,<br /> W burzy czy w słońcu,<br /> krok po kroku, ciągle ku końcu.</p>\r\n<p>Ref. Wędrują ludzie z plecakiem uśmiechu,&nbsp; D A<br /> Z balastem smutku i oddechu.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; H G<br /> I nie chcą spocząć nawet na chwile,<br /> bo tak sie boją, że coś ich ominie.</p>\r\n<p>Z wiarą w sercu,<br /> Z nadzieją u boku,<br /> dążą do celu krok po kroku.<br /> Wędrują ku szczęściu<br /> Z daleka od złości<br /> szukając wiary, nadziei, miłości.</p>\r\n<p>&nbsp;</p>', 'Saskia', 'Piotr Starzec'),
(2, 'Nasze przebudzenie', '<p>Słuchać w pełnym słońcu, jak pulsuje ziemia&nbsp;&nbsp;&nbsp;&nbsp; C G<br /> Uspokoić swoje serce, niczego już nie zmieniać&nbsp; d a<br /> I uwierzyć w siebie, porzucając sny<br /> To tw&oacute;j bunt przemija, a nie ty.<br /> <br /> Ref:<br /> Nie wiesz&nbsp;&nbsp; C<br /> Nie wiesz&nbsp;&nbsp; G<br /> Nie rozumiesz nic&nbsp; d a<br /> <br /> Widzieć parę bobr&oacute;w przytulonych nad potokiem<br /> Nie zabijać ich więcej, cieszyć się widokiem<br /> Nie wyjadać ich wnętrzności, nie wchodzić w ich sk&oacute;rę<br /> Stępić w sobie instynkt łowcy, wtopić w naturę.<br /> <br /> Ref: x2<br /> <br /> Wybrać to co dobre, z mądrych starych ksiąg<br /> Uszanować swoją godność, doceniając ją<br /> A gdy wreszcie uda się, własne zło pokonać<br /> Żeby zawsze mieć przy sobie, czyjeś ramiona.<br /> <br /> Ref: x2<br /> <br /> Wyczuć taką chwilę w kt&oacute;rej kocha się życie<br /> I m&oacute;c w niej być stale na wieczność w zachwycie<br /> W pełnym słońcu dumnie, na własnych nogach<br /> Może wtedy będzie można ujrzeć uśmiech Boga.<br /> <br /> Ref: x2</p>\r\n<p>G B C C<br /><br /> Przejść wielką rzekę&nbsp;&nbsp; F C<br /> Bez b&oacute;lu i wyrzeczeń&nbsp; d a</p>', 'Buzu Squat', 'Piotr Starzec'),
(3, 'Ktoś mnie pokochał', '<p class="txtcore" style="text-align: left;"><span style="font-size: medium;">Ktoś mnie pokochał świat nagle zawirował ,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D G A<br />bo ktoś mnie pokochał na dobre i na złe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D G A<br />bezchmurne niebo zn&oacute;w mam nad głową ,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; D G<br />bo ktoś pokochał mnie&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A h</span></p>\r\n<p><span style="font-size: medium;">Ktoś mnie pokochał <br />niech wszyscy ludzie wiedzą to<br />ktoś mnie pokochał&nbsp; ze snu mnie zbudził<br />ktoś kto pokochał mnie</span></p>\r\n<p><span style="font-size: medium;">Ref :<br />Lampa nad progiem i krzesło i drzwi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ( h A )( h A )<br />wszystko mi m&oacute;wi że mnie ktoś pokochał&nbsp; ( D G )( A D )<br />woda i ogień powtarza wciąż mi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ( G A )( A h )<br />że mnie ktoś pokochał dziś</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size: medium;">G A</span></p>\r\n<p><span style="font-size: medium;">Pukajcie ze mną w niemalowane drewno bo<br />czasami szczęście trwa tylko chwile dwie<br />pukajcie ze mną bo wiem na pewno<br />że ktoś pokochał mnie </span></p>', 'Skaldowie', 'Agnieszka Wawro'),
(4, 'Bieszczadzkie anioły', '<p>Anioły są takie ciche&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; a<br /> Zwłaszcza te w Bieszczadach&nbsp;&nbsp;&nbsp;&nbsp; G<br /> Gdy spotkasz takiego w g&oacute;rach&nbsp; a<br /> Wiele z nim nie pogadasz&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; e <br /> <br /> Najwyżej na ucho ci powie&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C G<br /> Gdy będzie w dobrym humorze&nbsp; C F<br /> Że skrzydła nosi w plecaku&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C G<br /> Nawet przy dobrej pogodzie&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a e a<br /> <br /> Anioły są całe zielone <br /> Zwłaszcza te w Bieszczadach <br /> Łatwo w trawie się kryją <br /> I w opuszczonych sadach <br /> <br /> W zielone grają ukradkiem <br /> Nawet karty mają zielone <br /> Zielone mają pojęcie <br /> A nawet zielony kielonek <br /> <br />Ref.<br /> Anioły bieszczadzkie, bieszczadzkie anioły C G a<br /> Dużo w was radości i dobrej pogody&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C G a<br /> Bieszczadzkie anioły, anioły bieszczadzkie <br /> Gdy skrzydłem cię dotkną już jesteś ich bratem <br /> <br /> Anioły są całkiem samotne <br /> Zwłaszcza te w Bieszczadach <br /> W kapliczkach zimą drzemią <br /> Choć może im nie wypada <br /> <br /> Czasem taki anioł samotny <br /> Zapomni dokąd ma lecieć <br /> I wtedy całe Bieszczady <br /> Mają szaloną uciechę <br /> <br /> Anioły bieszczadzkie, bieszczadzkie anioły... <br /> <br /> Anioły są wiecznie ulotne <br /> Zwłaszcza te w Bieszczadach <br /> Nas też czasami nosi <br /> Po ich anielskich śladach <br /> <br /> One nam przyzwalają <br /> I skrzydłem wskazują drogę <br /> I wtedy w nas się zapala <br /> Wieczny bieszczadzki ogień <br /> <br /> Anioły bieszczadzkie, bieszczadzkie anioły... <br /> ...Gdy skrzydłem cię musną już jesteś ich bratem <br /> <br /> Anioły bieszczadzkie, bieszczadzkie anioły... <br /> ...Gdy skrzydłem cię musną już jesteś ich bratem <br /> <br /> Anioły bieszczadzkie, bieszczadzkie anioły... <br /> ...Gdy skrzydłem cię musną już jesteś ich bratem</p>', 'Stare Dobre Małżeństwo', 'Piotr Starzec');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
