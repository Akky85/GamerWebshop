-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2020. Aug 19. 08:42
-- Kiszolgáló verziója: 10.4.11-MariaDB
-- PHP verzió: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `webshop2`
--
CREATE DATABASE IF NOT EXISTS `webshop2` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `webshop2`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `adatok`
--

CREATE TABLE `adatok` (
  `id` int(9) NOT NULL,
  `user` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `pwd` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `profilkep` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `lakcim` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `szallitasicim` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `telefon` varchar(100) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `adatok`
--

INSERT INTO `adatok` (`id`, `user`, `email`, `pwd`, `profilkep`, `lakcim`, `szallitasicim`, `telefon`) VALUES
(1, 'Akky', 'fsdfsf@asldfkdak.hu', '67154abef6083322d2a20e6a6cb169b407301b25', 'img/gpig.jpg', 'Debrecen Mwaerjqjeqjadmalkm u. 3812738271', 'Debrecen Pupu-pupi u-pupi', '321313131534213120'),
(2, 'Panna', '', '5316b77cd405c96f0eff6de8ffe71cc0c34fb3de', '', '0', '0', '0'),
(9, 'Aaaaa', '', '2e2eb49218fd53ed9d1640ce4d2c414ddb65a3f9', '', '', '', ''),
(10, 'Kisrossz', 'huino.akky@gmail.com', '6ba84724b8c97b9f824a2e744886638dd56cd9ac', 'img/ok.jpg', 'Debrecen Minini u. 77.', 'dqwewqjeiqw u.  0.', '1202022020');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `admin`
--

CREATE TABLE `admin` (
  `id` int(9) NOT NULL,
  `admin` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `pwd` varchar(100) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `hirek`
--

CREATE TABLE `hirek` (
  `id` int(9) NOT NULL,
  `h1cim` tinytext COLLATE utf8_hungarian_ci NOT NULL,
  `datum` date NOT NULL DEFAULT current_timestamp(),
  `h2cim1` tinytext COLLATE utf8_hungarian_ci NOT NULL,
  `h2cim2` tinytext COLLATE utf8_hungarian_ci NOT NULL,
  `h2cim3` tinytext COLLATE utf8_hungarian_ci NOT NULL,
  `bekezdes1` longtext COLLATE utf8_hungarian_ci NOT NULL,
  `bekezdes2` longtext COLLATE utf8_hungarian_ci NOT NULL,
  `bekezdes3` longtext COLLATE utf8_hungarian_ci NOT NULL,
  `bekezdes4` longtext COLLATE utf8_hungarian_ci NOT NULL,
  `bekezdes5` longtext COLLATE utf8_hungarian_ci NOT NULL,
  `bekezdes6` longtext COLLATE utf8_hungarian_ci NOT NULL,
  `quote1` text COLLATE utf8_hungarian_ci NOT NULL,
  `quote2` text COLLATE utf8_hungarian_ci NOT NULL,
  `videocim` tinytext COLLATE utf8_hungarian_ci NOT NULL,
  `video` tinytext COLLATE utf8_hungarian_ci NOT NULL,
  `kep1` varchar(200) COLLATE utf8_hungarian_ci NOT NULL,
  `kep2` varchar(200) COLLATE utf8_hungarian_ci NOT NULL,
  `kep3` varchar(200) COLLATE utf8_hungarian_ci NOT NULL,
  `cimke1` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `cimke2` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `cimke3` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `cimke4` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `cimke5` varchar(100) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `hirek`
--

INSERT INTO `hirek` (`id`, `h1cim`, `datum`, `h2cim1`, `h2cim2`, `h2cim3`, `bekezdes1`, `bekezdes2`, `bekezdes3`, `bekezdes4`, `bekezdes5`, `bekezdes6`, `quote1`, `quote2`, `videocim`, `video`, `kep1`, `kep2`, `kep3`, `cimke1`, `cimke2`, `cimke3`, `cimke4`, `cimke5`) VALUES
(1, 'Ha a The Witcher 3 borvidéke elvarázsolt, akkor a valóságban is van mit keresned', '2020-08-15', 'Legkedvesebb fantasy játékaink, tévésorozataink vagy épp regényeink is komoly figyelmet szentelnek a borkultúrának, így épp itt az ideje, hogy te is műveld kicsit magad a témában.', 'Mit nekünk futóhomok', 'Ahány táj, annyi borász', 'Emlékeztek még a The Witcher játékokban arra, hogy milyen szinten fontos szerepet töltött be a bor az emberek életében? Uralkodóknak készült különleges bor után kellett például nyomozni, és egy kortyból azonnal tudtuk, hogy az eredeti nedűről vagy holmi pancsolt lőréről van-e szó. A The Witcher 3: Blood and Wine kiegészítőben Ríviai Geralt egy saját szőlészetet is kapott, melyet ugyanolyan részletességgel mutatott be a CD Projekt Red játék, mint Andrzej Sapkowski műveinek összes többi mozzanatát. ', 'Nem nehéz közel éreznünk magunkhoz ezt a szláv fantasy világot, de a jó bor szeretete és a borkultúra a tőlünk nyugatabbra született műveknek is szerves részét képezi. Nincs az a Trónok harca rajongó, aki ne ismerné a dorne-i vöröset, de George R. R. Martin világhírű regényeiben más borvidékek, például a Három Folyó környéke, Égikert, sőt még a Kaszter-hegy, tehát a Lannister-ház székhelye is komoly bortermeléssel büszkélkedhet. ', 'A borkultúra nem csak kedvenc középkori tematikájú fantasy videojátékainkban, regényeinkben, mozifilmjeinkben és tévésorozatainkban érhető tetten, hanem a mindennapjainkban is, ezt gyakorlatilag örökségként hozzuk magunkkal. A borszőlő termesztés komoly múltra tekinthet vissza Magyarországon is, Ferenc király 1807-es törvénye a futóhomok által érintett valamennyi területre kiterjesztette a szőlőtermesztést.', 'A magyar borpaletta persze ennél jóval sokrétűbb, jelenleg összesen 22 magyarországi borvidéket különböztetünk meg.', 'Ezeknek fontos jellemzője, hogy az adott földrajzi-, talaj- és éghajlati viszonyok mellett, tulajdonságaikban hasonló borok születnek, illetve egy-egy jellemző bortermő szőlőfajta jut vezető szerephez. Pont, mint a korábban említett Trónok harcában, ahol egyetlen westerosi vitéz sem keverne össze egy Zúgó kastélyában palackozott italt egy testes, száraz dorne-i vörösborral, vagy akár egy arbori arannyal, ami a Hét Királyság legédesebb és legnemesebb borfajtája, nem hiába fogyasztják csak a legtehetősebbek. ', 'A The Witcher 3: Blood and Wine DLC a széria főhősét, Ríviai Geraltot is egy érdekes új pozícióba helyezte, konkrétan egy szőlészet került a vajákhoz, a játékos pedig vele együtt élhetett át egy boripar gyorstalpalót a birtok körbejárásakor. Geralt ugyebár Anna Henrietta, Emhyr var Emreis császár unokahúga hívásának eleget téve érkezik meg Toussaint hercegségébe, arra a vidékre, ami egy az egyben egy francia borvidéket idéz meg.\r\n\r\nNem véletlen, hogy az egész szériában ez a kiegészítő kapta a legkönnyedebb hangvételt, és itt érezhető a leginkább a főhősön, hogy talán többről is szólhat az élete, mint a szörnyetegek levadászásáról. Ha pedig Geraltból is válhat szőlőültetvényes, akkor valójában bárki könnyedén kikupálhatja magát a borok témakörében.\r\n\r\nÉs most lehetőséged is nyílik erre.\r\n\r\nA tudás nincs palackba zárva\r\nHa szeretnél lépést tartani a hozzáértőkkel, és megszerezni azt az alapvető tájékozottságot, amelynek köszönhetően magabiztosan tudsz bort választani és kóstolni, és Tyrion Lannister is elismerően csettintene tudásod hallatán, akkor nincs más dolgod, mint ellátogatni a www.magyarborod.hu weboldalra és kicsit kikupálódni a témát illetően. Ne aggódj, nem lesz túl nagy kihívás, nem egy sommelier képző ez, pusztán segít megismerni az alapokat látványos és könnyed formában. \r\n\r\nA borrandi kvíz segítségével megtalálhatod a személyiségedhez és ízlésvilágodhoz leginkább passzoló borokat, kipróbálhatod a borbeszerző challenge-et, mely segítségével gyorsan kiderül, hogy hol és milyen szempontok szerint érdemes bort vásárolni. Érdemes lehet útba ejtened az 5 perces borsznob-képzőt is, ami megtanítja, hogyan kell okosan kóstolni, valamint a borszótárat is. Végezetül olvass a kihagyhatatlan 10+1 legmenőbb boros trendről és a 10+1 legcikibb boros dologról is, hogy tényleg gond nélkül eligazodhass majd a magyar borfogyasztás útvesztőiben.', 'Így alakulhatott ki az Alföldön egy sajátos, támasz nélküli, gyalogművelésű szőlőkultúra.', 'Az sem hátrány azonban, ha a jó borokat nem csak élvezni tudjuk, hanem minimálisan azért konyítunk is hozzájuk.', 'The Witcher 3: Wild Hunt - Opening Cinematic', 'https://www.youtube.com/embed/2uYouPnUETI', 'hirek_img/witcher1.jpg', 'hirek_img/witcher2.png', 'hirek_img/', '#the Witcher 3', '#tróbok harca', '#bor', '', ''),
(3, 'Az Assassin\'s Creed Valhalla sokkal többet ad, mint amit a felszín mutat', '2020-08-05', 'A Ubisoft Forward során végre részletesebben is megismerkedhettünk az Assassin\'s Creed Valhalla játékmenetével...', 'A harcos útja', 'Árnyak közt osonva', 'Bár alapvetően a vikingek legtöbbünk emlékeiben fosztogató, portyázó harcosokként élnek, nem kell a 2013-ban indult ír-kanadai televíziós filmsorozatnál, vagyis a Vikingsnél messzebb menni, hogy lássuk, céljaik között a terjeszkedés, új települések megalapítása és a kereskedelem is szerepelt. Az Assassin\'s Creed Valhalla az északi nép történetének éppen azon korszakába ugrik fejest, mikor a Brit-szigeteket már nem csak a keresztény templomok kifosztásáért látogatták meg, hanem bizony hosszabb távon is meg akarták vetni itt a lábukat.\r\n\r\nOtthon, édes otthon\r\nSzemélyes döntésünk alapján női vagy épp férfi főhősünk (neműnket egyébként menet közben is bármikor megváltoztathatjuk), Eivor is azért vezeti ide a norvégokat, hogy létre tudjanak hozni egy előretolt helyőrséget, egy idővel gyümölcsözővé váló települést, ez azonban értelemszerűen kicsit sem egyszerű feladat egy ellenséges vidéken. Ebben a korszakban Anglia különböző megtört királyságok keveréke volt, a hadakozó dinasztiáknak pedig már tényleg csak a nemkívánatos északi vendégek hiányoztak. Persze a vikingek a játékban sem tagadják meg gyökereiket: szélsebes hosszúhajóinkkal utazva a folyón bármikor kiszúrhatunk a part mentén egy kifosztásra váró helyszínt.', 'A közzétett gameplay anyagok alapján ilyenkor nem csak a helyi erőktől kell megszabadulni, Eivor ugyanis előszeretettel gyújtja fel a nádtetős házakat egyetlen lángoló nyílvesszővel. A portya végén végén jó esetben busás jutalom vár bennünket, a megszerzett nyersanyagokból és kincsekből pedig felszerelésünket és ami még fontosabb, településünket is fejleszthetjük - utóbbi új szolgáltatásokat, jobb eszközöket és új telepeseket tesz elérhetővé a bázisunkon.\r\n\r\nKiemelt fontossággal bír majd városkánkban a \"szövetségek térképe\", melyen nyomon tudjuk követni épp aktuális paktumainkat, valamint lehetőségünk nyílik megtervezni következő stratégiai lépéseinket is. Maga a játéktér hatalmas, de ezen már nem is lepődnek meg azok, akik közelebbi ismeretséget kötöttek a legújabb Assassin\'s Creed játékokkal. \r\n\r\n', 'A Valhallában egyfajta hatalmi rendszer váltja a klasszikus szinteződést, ami bár izgalmasan hangzik, de bőven benne van a pakliban, hogy ez inkább csak egy új köntös nagyjából ugyanannak a megoldásnak. Egy csillagképeket formázó, három irányba (közelharci és távolsági támadások, valamint orgyilkos skillek) szerteágazó képességfán oszthatjuk el pontjainkat, melyeknek köszönhetően új, még halálosabb képességekre tehetünk szert. Alapvetően a harcrendszer azokon a sarkalatos pontokon nyugszik, mint az előző két epizódban, viszont a fordulatszámon csavartak egy keveset; még gyorsabbak, még brutálisabbak lettek az összecsapások. A felhalmozott adrenalinból elpattintható látványos aktív skillek pillanatok alatt rendet tudnak tenni a harctéren, ezekből pedig a megszokott módon egyszerre többet is betárazhatunk, ha pedig épp úgy tartja kedvünk, vígan cserélgethetjük őket. \r\n\r\nA fejlesztők ígérete szerint ellenfelek terén minden eddiginél változatosabb felhozatallal nézünk szembe, közülük pedig minden altípus másfajta kihívás elé állít bennünket. Lesznek olyanok, akik okosan összedolgoznak a társaikkal, míg mások a környező tereptárgyakat fordítják a saját előnyükre - még akár elesett társaik tetemeit is. Érdemes lesz kitapasztalni és begyakorolni minden ellenféltípus ellen a megfelelő taktikát, gyenge pontjaik kiismerésével fogunk majd csak boldogulni. Egyébként maguk a csaták még sosem voltak ennyire véresek egyetlen Assassin\'s Creedben sem: ömlik a vér, repkednek a fejek és a végtagok, egyáltalán nem finomkodtak az alkotók, ami a környezetet és a választott kort látva remek döntésnek tűnik.', 'Végre nem kell a \"\'van pajzs vagy nincs pajzs\" kérdéskörrel sem hosszasan vesződni, mivel gyakorlatilag bármilyen két fegyvert a kezünkbe vehetünk egyszerre, sőt ha akarjuk, akkor akár még két pajzsot is forgathatunk - természetesen ugyanez elmondható a játékban megtalálható összes egyéb halálosztó eszközről. A földre vitt ellenfeleket pedig egy jól irányzott taposással tudjuk majd végleg átküldeni a másvilágra.\r\n\r\nHa emlékeztek még a Conquest küldetéstípusokra az Odyssey-ből, akkor nem érhet benneteket nagy meglepetés az újdonsült Assault bevetések során, amelyek azért szerencsére továbbgondolták a formulát: hatalmas várostromokról van itt szó, melyek során viking harcostársainkkal egy egész erődöt kell bevennünk. Faltörő kosokkal zúzzuk majd be a kapukat, vagy ha épp a lopakodást részesítjük előnyben, akkor átkúszhatunk a falakon is. A fejlesztők ezeket a misszókat tartják egyébként a játék csúcspontjainak. Reméljük, mi is hasonlóképpen lelkesek leszünk majd, mikor egyik erődöt vesszük majd be a másik után, és nem laposodik el a rendszer.\r\n\r\n', 'Mindenki megnyugodhat, nem maradt ki a játékból az asszaszinok ikonikus csuklyája sem: bizonyos esetekben jobb lesz az erőszakmentes utat választani, és az említett fejfedőt felhúzva beolvadni a tömegbe. Így elkerülhetjük a figyelő tekinteteket, és elosonhatunk az őrök mellett. Egyelőre úgy tűnik, hogy az utóbbi pár epizódban megfigyelhető séma folytatódik, és most sem az osonáson lesz a fő fókusz - erről mindenki döntse el maga, hogy jó vagy épp rossz hír. Persze azért a lesből támadás lehetősége most is megmarad, és mivel ezúttal elvetették a klasszikus szinteződést, gyakorlatilag akárkit lebökhetünk a rejtett pengénk egyetlen jól irányzott szúrásával. Mindig a kezünkben lesz a döntés, hogy óvatosan lopakodva, vagy az ajtót páros lábbal berúgva oldunk meg egy szituációt, de a harci mechanikák mélységét látva erősen az utóbbi vonal tűnik a hangsúlyosabbnak.\r\n\r\nHa pedig épp nem harcolunk vagy csuklyával a fejünkön vonulunk át egy zsúfolt utcán, akkor a vadon felé vehetjük az irányt, ahol temérdek tennivaló vár bennünket. Vadászhatunk és halászhatunk, hogy élelmezzük népünket, vagy akár rejtett kincsek, misztikus helyszínek felkutatására is adhatjuk a fejünket. Pogány templomok és római kori romok várják, hogy megfejtsük titkaikat. A rejtett zugok megtalálásában nagy segítségünkre lesz aktuális madárdrónunk (most épp egy holló), ami immár elválaszthatatlan alkotóeleme a szériának.', 'Az eddig látottak alapján teljesen bizonyos, hogy a Ubisoft ismét csurig tölti tartalommal a legújabb Assassin\'s Creed játékot, ennek fényében pedig tényleg csak az a kérdés, hogy a mennyiséghez társul-e a kellő minőség is, és sikerül-e mélységgel is megtölteni ezt a hatalmas világot. Drukkolunk, hogy mindez összejöjjön.\r\n\r\nAz Assassin\'s Creed Valhalla 2020. november 17-én jelenik meg PC-re, PS4-re, Xbox One-ra és Google Stadiára, valamikor később, feltehetően a következő generációs játékkonzolok hivatalos startjával párhuzamosan pedig PlayStation 5-re és Xbox Series X-re is. ', 'Mindig a kezünkben lesz a döntés, hogy óvatosan lopakodva, vagy az ajtót páros lábbal berúgva oldunk meg egy szituációt, de a harci mechanikák mélységét látva erősen az utóbbi vonal tűnik a hangsúlyosabbnak.', 'Végre nem kell a \"\'van pajzs vagy nincs pajzs\" kérdéskörrel sem hosszasan vesződni, mivel gyakorlatilag bármilyen két fegyvert a kezünkbe vehetünk egyszerre, sőt ha akarjuk, akkor akár még két pajzsot is forgathatunk - természetesen ugyanez elmondható a játékban megtalálható összes egyéb halálosztó eszközről. A földre vitt ellenfeleket pedig egy jól irányzott taposással tudjuk majd végleg átküldeni a másvilágra.', 'Assassin\'s Creed Valhalla - Cinematic Trailer', 'https://www.youtube.com/embed/ssrNcwxALS4', 'hirek_img/assaval1.png', 'hirek_img/assaval2.png', 'hirek_img/assaval3.png', '#assassin\'s creed valhalla', '#ubisoft', '#előzetes', '', ''),
(5, 'World of Warcraft: Shadowlands béta – így néz ki a végjáték', '2020-07-15', 'Az alfa megmutatta, hogy milyen lesz a túlvilágon kalandozni, a béta pedig azt, hogy mivel is fogjuk tölteni ott az örökkévalóságot.', 'A Shadowlands túlvilági ereklyéi', 'Egy WoW kiegészítő áldásai és átkai', 'Egy héttel ezelőtt elindult a Shadowlands béta, ami a World of Warcraft vezető fejlesztője szerint már tartalmazza a kiegészítőben központi szerepet kapott össze feature-t. Mivel a megjelenéstől még hónapok választanak el, benne van a pakliban nem kevés változtatás, de a lényegi darabkák a helyükre kerültek, így láthatjuk, hogy nagyjából mivel fogjuk eltölteni időnket a túlvilágon. Amikor elérjük a maximális 60-as szintet, akkor az új fővárosban, Oribosban várnak majd ránk a Shadowlands négy Covenantjának küldöttjei. Ezek a szövetségek uralják a halál utáni birodalom általunk bejárható részeit, és mindegyikük komoly kihívásokkal küzd, amelyek megoldását tőlünk remélik.\r\nWoW frakciók, míg a szem ellát\r\nValamelyiket támogatnunk kell majd a csoportok közül, és több szempont is befolyásolhatja választásunkat. Mind a négy Covenant két új képességet, három szövetségest (róluk majd később), és különböző kozmetikai apróságokat nyithat meg előttünk. Döntésünket később megváltoztathatjuk, de sokat veszítünk a fejlődésünkből, ha így teszünk. A cél érezhetően az, hogy szánjunk el magunkat valamire és tartsunk ki mellette.\r\n\r\nA szinteződési élmény során szépen apránként megismerjük a csoportokat, és még az általuk kínált képességeket is kipróbálhatjuk. Így mire elérjük a 60-as szintet, már minden információ a birtokunkban lesz egy jól megfontolt döntés meghozatalához. Ez azért olyan fontos, mert a Covenantek a Shadowlands végjátékának központi elemei: minden hozzájuk kapcsolódik a szinthatár elérése után.', 'A Kyrian az első szövetség, amelyikkel közelebbi kapcsolatba kerülünk, mivel a tagjai Bastion, a Shadowlands mennyországának őrzői. Az angyali védelmezők az igazságosság hívei, olyannyira, hogy önkéntesen feladják emlékeiket a tisztánlátás kedvéért. A Kyrian otthona az Elysian Hold, ami az arkangyalok katonai főhadiszállása. Ha sokáig szolgálunk itt, akkor idővel mi is felölthetjük majd az aranyszínű páncélokat. Velük szemben a nekromancia (Necrolord a frakció neve) Maldraxxusban gyülekeznek. Ez a népség felelt az első Abominationökért, az első zombikért, és tőlük tanulták meg a halandó lelkek, miként faraghatnak fegyvert a halálból. Közigazgatási központjukként a Seat of Primus, egy csontokkal és zöld lángokkal díszített föld alatti erőd szolgál.\r\n\r\nA Night Fae tagjai a tündérerdők gyermekei. Feladatuk, hogy biztosítsák a természet szellemeinek feltámadását, és gondozzák Shadowlands gyönyörű kertjeit a Snow Queen irányítása alatt. A tündérmesék rajongóinak egyértelmű lesz a választás, főleg, ha meglátják a Night Fae bázisát, a Heart of the Forestet. Ugyanakkor a Venthyr sem tűnik rossz választásnak. E csapat vezetői vigyáznak a büszke és számító lelkekre, és a maguk módján terelgetik őket a megváltást ígérő úton. Ha a bűnbe tekert eleganciára vágysz, akkor az otthonod a Sinfall lesz, aminek építészeti stílusát Strahd von Zarovich is megirigyelné. Gyertyák, sírkövek és trükkös tükörkapuk tarkítják a szürke kövekből épített kazamatát.\r\n\r\nMiután kiválasztottuk a nekünk tetsző szövetséget, a következő lépésünk az lesz, hogy elrepüljünk annak bázisára. Itt találjuk az előző kiegészítőkben megismert (de sokat fejlődött) Mission Table-t, érjük el a frakcióspecifikus árusokat, vehetünk majd különböző fejlesztéseket, és vethetjük alá magunkat a Soulbind rituálénak. A szertartás hozzánk köti az adott Covenant tag lelkét, ez pedig erősít majd minket a túlvilági kalandjaink során. Azt követően, hogy elköteleztük magunkat adott csoport mellett, két Souldbindot kapunk automatikusan, a harmadikat pedig idővel feloldhatjuk majd.\r\n\r\nAhogy erősítjük a kapcsolatunkat a frakcióval úgy egyre több sávot nyithatunk meg a Soulbind \"talentfáján\" és új bónuszokat nyerhetünk ki belőle. Egyes helyeken Conduit nevű tárgyakat is elhelyezhetünk, melyek kisebb-nagyobb extrákat nyújtanak majd.', 'A Soulbind lesz az Artifact fegyverünk és a Heart of Azerothunk. Ez az a végjáték rendszer, aminek a fejlesztéséért hajtani fogunk, viszont most nem egy specifikus erőforrást gyűjtünk hozzá, hanem Renownt, amivel sok minden mást is megnyithatunk majd. A gyűjtögetés sem úgy működik majd, mint a korábbi kiegészítőkben, mivel itt nem kell végtelen grindtól tartani.\r\n\r\nEgyrészt a hetente megszerezhető Renown mennyiségét korlátozzák, elég csak két küldetést és az éppen elérhető Covenant missziókat kell legyűrnünk. A grindot szándékosan véges rendszerként tervezték meg, vagyis el fogjuk érni azt a pontot, ahonnan már nincs tovább, csak nyugodtan élvezzük munkánk gyümölcseit. A Renown a Soulbind szinteken túl egyedi páncélkinézeteket, hátasokat, kisállatokat, komolyabb World Quest jutalmakat és sok más apróságot is megnyit majd, de a legfontosabb talán a Legendary tárgyak megalkotásához szükséges receptek.', 'Akárcsak a Legionben, itt is lesznek legendás tárgyak, de ezúttal a fejlesztők nem a véletlenre bízták a megszerzésüket. A játékosok a Covenantjukon keresztül férhetnek hozzá tervrajzokhoz, melyek segítségével megépíthetik azokat a Legendary kiegészítőket, amikre szükségük van. Persze egy ilyen tárgy összerakásához nem a sarki fűszeresnél fogjuk megtalálni az összetevőket: Torghast tornyában kell összegyűjtenünk őket. Thorghastról már Shadowlands alfában is beszéltünk, így most a lényegre, a Legendary tárgyakra koncentrálunk.\r\n\r\nLegyártásukhoz szükség lesz alaptárgyakra és rúnákra, melyekkel testre szabhatjuk azok bónuszait. Mindegyik ad majd valamilyen aktívabb bónuszt: a Hunter kaszt tárgyai például kaphatnak10 százalék esélyt egy Dire Beast felbukkanására, vagy csökkenthetik egyes képességeinek Cooldown értékét 25 százalékkal. Olyan hatások ezek, amelyek nagyban segíthetik majd a harcot, és több is ismerős lesz azoknak, akik fejből ismerik minden Legion Legendary különleges erejét. Sokat hoztak vissza azok közül átalakított, kiegyensúlyozottabb formában.\r\nJelenleg nincs bent az összes kaszt Legendary opciója, de egyelőre úgy néz ki, hogy a nagy többségüket érdemes lesz levadászni. Ha másért nem is, ezek craftolásáért jó ötlet meglátogatni a tornyot.', 'A Covenantunkhoz fűződnek a Soulbindok, a Legendary receptek, a kozmetikai extrák és még sok más. Minden Covenant garantál két képességet: az egyik egy olyan apróság lesz, mint például a Night Fae Soulshape-je, amivel állattá változhatunk, meggyorsítva ezzel a hátas nélküli mozgási sebességünket.\r\n\r\nA másik azonban egy olyan varázslat, ami komoly erőt biztosít a karakterünknek, és kasztonként eltérő lesz. A Monkok például kapnak egy olyan képességet, amivel lecsapva a földre kék, faágakra emlékeztető erek terülnek szét a talajon, melynek mentén minden ellenfél sérül. Röviden mindenki kap egy extra gombot, amit harc közben használhat. Ez egy nagyon izgalmas, de egyben nagyon vitatott része is a Covenant-rendszernek.\r\n\r\n', 'A Mythic nehézségű tartalmakra utazó céhek attól tartanak, hogy minden kaszt esetében lesz majd egy \"legjobb\" Covenant képesség, és aki versenyképes akar maradni, annak azt a frakciót kell majd választania, amelyik ezt biztosítja. Ők arról próbálják meggyőzni a Blizzardot, hogy okosabb lenne hagyni a karaktereket probléma nélkül ugrálni a Covenantok között, a fejlesztők viszont szeretnék fajsúlyos választás elé állítani a játékosokat, ami úgy nem megy, ha minden raid előtt tetszőlegesen cserélgethetjük azt. Hogy mégis mi lesz ebből a vitából, az még nem derült ki, de még van idejük a fejlesztőknek.\r\n\r\nA Shadowlandsben lesz még bázisfejlesztés, rengeteg sztoriküldetés, átdolgozott Mission Table, új World Questek, dungeonok és raidek, PVP-vel kapcsolatos változtatások és számtalan kasztátalakítás. Ez a kiegészítő a World of Warcraft újjászületését, a játékélmény testre szabhatóságát, és az RPG-s döntések fontosságát hirdeti, miközben láthatóan kivett több lapot is a Legion játékmenetéből. Ez utóbbi egyáltalán nem baj, sőt idáig meglehetősen biztató, amit láttunk. Ha lecsiszolják a még sorjás játékelemeket, és sikerül egy koherens élménnyé egybegyúrni őket, akkor ismét egy jobb kiegészítővel lesz majd dolgunk.', 'A Covenantunkhoz fűződnek a Soulbindok, a Legendary receptek, a kozmetikai extrák és még sok más. Minden Covenant garantál két képességet: az egyik egy olyan apróság lesz, mint például a Night Fae Soulshape-je, amivel állattá változhatunk, meggyorsítva ezzel a hátas nélküli mozgási sebességünket.', 'A Soulbind lesz az Artifact fegyverünk és a Heart of Azerothunk. Ez az a végjáték rendszer, aminek a fejlesztéséért hajtani fogunk, viszont most nem egy specifikus erőforrást gyűjtünk hozzá, hanem Renownt, amivel sok minden mást is megnyithatunk majd. A gyűjtögetés sem úgy működik majd, mint a korábbi kiegészítőkben, mivel itt nem kell végtelen grindtól tartani.', 'World of Warcraft: Shadowlands - Cinematic Trailer', 'https://www.youtube.com/embed/s4gBChg6AII', 'hirek_img/wowsh1.png', 'hirek_img/wowsh2.png', 'hirek_img/wowsh3.png', '#world of warcraft', '#shadowlands', '#előzetes', '#mmorpg', ''),
(6, 'A PUBG új frissítése új fegyvert, kamugránátot, és sok apróságot hoz', '2020-02-12', 'Kiderült, hogy mi vár ránk a 8.2-ben a hihetetlenül idegesítő robbanószer mellett.', '', '', 'A PlayerUnknown\'s Battlegrounds játékosai a héten már rárepülhetnek az újdonságokra a tesztszervereken. A 8.2 tesztverziója szerdán érkezik, és olyan finomságokat tartalmaz majd, mint az új MG3-as, csak ládában megtalálható LMG, és a Sanhok csatatérre bekerülő Decoy gránát. A szeretve gyűlölt terelőgránátot már az átdolgozott pályán is lehet majd dobálni.', 'A 8.2 egyértelmű főszereplője az MG3, ami képes 990-es tempóban szórni a golyókat, de aki a pontosságra játszik, az 660-ra is leveheti ezt. Egy kifejezetten erős flintáról van szó, ami brutális sebzést ad le járművekre, 7,62-es töltényekkel operál és a tárja 75 golyót is elbír. Aki mesterlövészt akar játszani, az akár hatszoros távcsövet is szerelhet rá.', 'A Decoy gránát sem lesz egy egyszerű kütyü. Ahová dobjuk, onnan lőfegyverek zaja hallható, és 10 percen át tolja majd hangokat. Könnyedén csapdába csalhatjuk vele az ellenfeleket, vagy elterelhetjük a figyelmet, amíg mi elslisszolunk.', 'A fejlesztők az új cuccok mellett az Erangel pályán is eszközöltek néhány változtatást, átdolgoztak néhány fegyvermodellt és hangot, és berakták a sisak elrejtésének lehetőségét is (bár utóbbi csak ránk vonatkozik, mindenki más a megfelelő szintű sisakot látja majd rajtunk). ', '', '', '', '', 'PUBG: Survivor Pass', 'https://www.youtube.com/embed/H0dYqbW3SSs', 'hirek_img/pubg.png', '', '', '#playerunknown\'s battleground', '#payback', '#pubg', '#battleroyal', ''),
(7, 'Az Xbox vezetőjének tetszik a PlayStation 5 dizájnja', '2020-08-15', 'Phil Spencer elárulta a véleményét a Sony következő generációs konzoljáról.', '', '', 'Amikor a Microsoft és a Sony is végre leleplezte a következő generációs konzoljait, rögtön mindenkinek feltűnt, hogy a két cég nagyon eltérő filozófiát követett a formatervezés során. Erről nem rég az Xbox részleg vezetőjét, Phil Spencert is megkérdezték, aki el is mondta a véleményét a Sony konzoljáról és munkásságáról.', 'Spencer nemrég vendégeskedett az Animal Talking nevű Twitchen közvetített talk showban, ahol többek között arról is megkérdezték, hogy mit gondol a PS5 formatervéről, ő pedig elárulta, hogy egyáltalán nem tartja rosszabbnak a konkurencia megközelítését, inkább csak azt látja benne, hogy mennyire máshogy gondolkodik a két cég:', 'Spencer azt is hozzátette, hogy ők azért választották a széles, szögletes dizájnt, mert szerették volna, hogy ha elfér a gépben egy olyan ventilátor, ami nagyobb, de cserébe egy kicsit lassabban forog, hogy csendesebb legyen a gép.', '', '', '', 'Nekem tetszik a dizájn. Nagy tisztelője vagyok annak, amit a PlayStation csapata csinál, de tény, hogy ők nagyon más irányból közelítik a kihívást, amivel egy konzol hűtése jár. Ez a mi csapatunk számára is komoly akadály volt, szóval ebben nincs semmi meglepő. Ők egy olyan megközelítést választottak, ami a miénktől nagyon eltér.', '', '', '', 'hirek_img/PS5.png', '', '', '#microsoft', '#phil spencer', '#sony', '#playstation5', '#design'),
(8, 'Ilyen lesz a Ghost of Tsushima világa, nehézsége, küldetései', '2020-08-13', 'A Ghost of Tsushima legutóbbi bemutatója jó pár kérdést vetett fel a játékosokban, a fejlesztők pedig szolgáltak most néhány válasszal a kíváncsi közönségnek.', 'Harcban edzett férfi', 'Tsushima vad tájain', 'Noha jelenleg mindenki The Last of Us Part II lázban ég (mi sem tagadjuk), azért ne felejtsük el, hogy a nyáron még egy komoly cím érkezik PlayStation 4-re. A Ghost of Tsushimát fejlesztő Sucker Punch egy pár hete kifejezetten hosszú videóban mutatta be, hogy mire számíthatunk a július 17-én érkező szamurájos mókától. Persze a bemutató jó pár emberben szült újabb kérdéseket a játék kapcsán, a fejlesztőstúdió két tagja Nate Fox és Jason Connell most ezeket próbálta megválaszolni a PlayStation hivatalos blogján.', 'A játék főhőse, Jin komoly arzenállal rendelkezik majd, amivel felveheti a harcot a Tsushima szigetét elfoglaló mongol hordákkal. Legfontosabb fegyvere a katanája lesz, mely családi öröksége, és amely együtt fejlődik majd vele a játék során. Éppen ezért ezt nem tudjuk lecserélni, de mind a képességeit, mind a kinézetét változtathatjuk. No azért messze nem ez lesz az egyetlen fegyver, amire támaszkodhatunk a harcok során:\r\n\r\n\"Ahogy Jin egyre inkább egy félelmetes szamuráj harcossá, a Ghosttá válik, úgy tesz szert újabb képességekre és taktikákra. Egyre jobban használja majd az íjat, mellyel távolról szedheti le az ellenségeit, de a közelebbi ellenfelek ellen dobókéseket, valamint füstbombákat is bevethet.\"\r\n\r\nAzt is elmondták, hogy az említett íjakból kettő lesz: egy rövid íj, ami a szamuráj harcban segít, valamint egy hosszú íj, amit a Ghostként lopakodva vethet be. Ez utóbbi sokkal halálosabb lövéseket képes leadni, hogy azonnal kiiktathatóak legyenek vele a gyanútlan ellenfelek. Minden fegyver és támadás célja az, hogy minél gyorsabban harcképtelenné tegyük az ellenfeleinket, így ne számítsunk nagy csonkolásokra és fejlevágásokra. Jin két pengével rendelkezik, de ezeket nem tudja egyszerre forgatni, viszont ahogy egyre jobban fejlődik, a közelharcban a vágásokat kiegészítheti dobókésekkel és egyéb speciális támadásokkal. Felszerelésünk másik fontos részei a képességeket adó és javító páncéljaink lesznek, melyekről tudjuk, hogy két csoportba sorolhatóak: a szamuráj harcstílust segítők és a Ghost csendes gyilkolásaihoz igazodók. Azonban az eltérő páncélrészeket ízlésünk szerint váltogathatjuk majd, így fejfedőnk, mellkaspáncélunk és nadrágunk származhat eltérő szettekből, ahogy mi a legjobbnak látjuk egy adott bevetéshez.', 'Ez a kétpólusú harcrendszer nagyon prominens szerepet tölt be a játék világában, hiszen a játékos akár a szamuráj, akár a Ghost utat preferálja inkább, Jin akkor is egyre híresebb lesz Tsushima lakói között, és Ghost ezzel együtt egyre rettegettebbé válik a mongol katonák szemében. Viszont ezek a játékstílusok nem befolyásolják a játék sztoriját:', 'Egy adott páncél tehát nem szabja meg, hogy milyen stílusban vetjük bele magunkat egy csatába, de a jó kombinálással sokkal halálosabbá válhatunk, mindez azonban nem befolyásolja a sztorit. A felszerelésünk helyes megválasztása már csak azért is fontos lesz, mert bizony a harcok komoly kihívást jelentenek majd, pláne magasabb nehézségi fokozaton.\r\n\"A játéknak három nehézségi szintje van: könnyű, normál és nehéz. Nehéz fokozaton a játék igazságos, de nagyon nagy kihívást jelent. A mongolok sokkal agresszívabbak, és a játékosnak jóval precízebbnek kell lennie a különleges mozdulatok végrehajtásakor. Nem számít milyen nehézségi fokozatot választjuk, az ellenfelek életereje nem emelkedik meg; ez fontos, hogy megtartsuk a katana halálos mivoltát. A harcrendszer a játékos képességeire épít majd.\"\r\n\r\nJinnek lesz egy speciális mozdulata, melyet az L2+R2 gombokkal hívhat elő. Ez egy választást ad a játékos kezébe, ugyanis dönthet, hogy életerőt szeretne-e visszatölteni az aktiválásával, vagy inkább egy nagyon intenzív támadási módot visz be.', 'A Ghost of Tsushima történetének középpontjában az áll, hogy hogyan válik Jinből a legendás szellemharcos. E köré a fejlesztők egy terebélyes sztorit húztak fel, mely elmondásuk szerint legalább egy hetét elveszi majd a játékosoknak. Viszont a játék komolyan jutalmazza azt is, ha egy kicsit elszakadunk a fő sztoriszáltól és elindulunk, hogy felfedezzük a világot. \r\n\"Szeretnénk megjutalmazni a játékosokat, ha felfedezik Tsushima nyílt világát. Tehát minden tartalom, ami nem a fő sztori része, tartogat valamilyen jutalmat. Ez lehet gyűjtögethető dolog, nyersanyag vagy akár bűbáj is, amit bemutattunk a State of Play videóban. Vannak olyan melléküldetések, melyek akár teljes páncél szetteket kínálnak.\"\r\n\r\nHozzáfűzték, hogy a játék legértékesebb és legjobb felszereléseit is így gyűjthetjük be, tehát itt mindenképp érdemes lehet elhagyni a járt utat a járatlanért. Ebben támaszkodhatunk a szélre, ami nem pusztán útjelzőként funkcionál, de segíthet a barangolásban is, hogy minél több rejtett érdekességet fedezhessünk fel. A fejlesztők kiemelték, hogy a szél koncepciója, már szinte a fejlesztés legelejétől jelen volt, hiszen ez az általuk olyannyira kedvelt szamuráj filmekben is komoly szerepet játszik.\r\n\r\nA vadonban összefuthatunk állatokkal, akik szintén segítségünkre lehetnek; ilyen lesz például a róka, mely elvezet elrejtett kincsekhez. De a vadvilág nem minden tagja lesz ilyen barátságos; egyes ragadozók komoly veszélyt jelentenek Jinre, viszont ezek megölésével értékes nyersanyagokhoz juthat.\r\n\r\nRengeteg játékelem támogatja majd, hogy öröm legyen Tsushimában barangolni, így például Jin bármikor előveheti fuvoláját, hogy a lágy dallamokkal extra hangulati réteget adjon egy-egy jelenetnek. Sok esetben még maga az időjárás is ennek van alárendelve:', 'A hatalmas világ bejárásában hűséges lovunk lehet majd a segítségünkre, akit a játék elején kell majd kiválasztanunk, ezután végigkísér minket a teljes kalandon. A lovagláson és gyalogláson kívül nem lesz egyéb közlekedési mód, tehát hiba vagyunk egy szigeten, nem tudunk majd odaúszni egy hajóhoz, hogy azzal lerövidítsük utunkat.\r\nEmellett az is kiderült, hogy Jin lesz az egyetlen játszható karakter; találkozunk ugyan rengeteg izgalmas és érdekes szereplővel, de egyedül a szamurájt irányíthatjuk majd:\r\n\r\n\"Jin a történet főhőse. A játékos az út minden lépésénél vele van, és figyeli, hogyan válik a tiszteletre méltó szamuráj - akinek nevelték - Ghosttá, akire Tsushimának szüksége van.\"\r\n\r\nPersze a fejlesztők azt is hozzáfűzték, hogy akad még jó pár képesség, felszerelés és egyéb érdekesség, amiről nem rántották le a leplet, hogy a játékosoknak valóban meglepetést jelentsen felfedezni Tsushima világát. \r\n\r\nTi az eddigiek alapján mit gondoltok a Ghost of Tsushimáról? Mi már alig várjuk, hogy végre kipróbálhassuk, és beszámolhassunk nektek róla!', 'Nincs egy karma rendszer vagy ilyesmi. Egyetlen történetet mesélünk el, Jin egyetlen utazását. Noha a játékosnak döntést kell hoznia, de szeretnék letisztázni, hogy ez nem osztja ketté a játékot, sokkal inkább arról van szó, hogy a játékosnak szabadsága van, hogyan vág neki egy összetűzésnek.', 'Dinamikusan változik majd az időjárás, amit megtapasztalhattok majd a Tsushimában való kalandozás folyamán. Azonban egyes időjárási elemek bizonyos régiókhoz vannak kötve, ezzel adva egy kis extra hangulatot, személyiséget nekik, míg a sztori egyes momentumaihoz is hozzárendeltük őket. Az időjárás mellet teljes nap-éj váltakozási ciklust is tettünk a játékba.', 'Ghost of Tsushima • 4K UHD Story Trailer • JP • PS4', 'https://www.youtube.com/embed/2PO-zenqSZM', 'hirek_img/GOT1.png', 'hirek_img/GOT2.png', 'hirek_img/GOT3.png', '#ghost of tsushima', '#sucker punch', '#sony', '#playstation', ''),
(9, 'Általános kérdések a tengerimalaccal kapcsolatban', '2020-08-18', 'Honnan származnak a tengerimalacok?Milyen fajtái vannak? A különbségek csak a külsőben vagy a viselkedésben is megmutatkoznak?', ' Hol vásároljak tengerimalacot és honnan tudhatom, hogy egészséges-e?', 'Mekkora ketrec kell két tengerimalacnak?', 'A tengerimalac a dél-amerikai Andok hegységből származik, ahol háziállatként tartják. Ott táplálékként is szolgál, mint pl. nálunk a nyúl.', 'A következők a rövid szőrű fajták: angol rövidszőrű, rozettás, amerikai bóbitás, angol bóbitás, rex, teddy. A hosszú szőrűekhez tartoznak az alábbiak: sheltie, koronás, angóra, perui, texel, merinó, alpaka, mohair. Mindegyik létezik szatén változatban és mindenféle színben.\r\n\r\nVannak olyan tenyésztők, akik azt a nézetet vallják, hogy az egyes fajták között jellembeli különbségek fedezhetők fel, azonban ezek nem alátámaszthatók. Valójában viselkedésük nagyban függ a bánásmódtól és a tartásától.', 'A legjobb egyenesen a tenyésztőtől beszerezni a tengerimalacot. Így minden aggályát eloszlathatja, felteheti kérdéseit, amelyekre a komoly szakemberek szívesen válaszolnak. Ajánlott megnézni a ketreceket. Tiszták és világosban tartják őket? Nincs túl sok tengeri malac kis helyen összezsúfolva? Tenyésztőket találhat az újságban vagy tengerimalac egyesületeken keresztül.\r\n\r\nAz egészséges tengerimalacnak fénylő bundája és csillogó szemei vannak. Szemei nincsenek összeragadva, ánusza is tiszta és nem csontsovány. Nincsenek kopasz részek vagy csomók a bundájában.', 'Hogyan állapítható meg a neme?\r\nA gyakorlatlan szem számára nehéz megkülönböztetni egymástól a két nemet. A legjobban úgy látható, ha összehasonlít egymással egy nőstényt és egy hímet.\r\nAhhoz, hogy megállapítsa a nemét, vegye óvatosan kezébe a tengerimalacot úgy, hogy a hasát lássa. A másik kezével a tengerimalac nemiszerv környékén húzza szét a szőrt. Ha a tengerimalac nemiszerv egy „Y“-ra hasonlít, akkor egy kislánnyal van dolga; ha egy „i“ betűre, akkor pedig kisfiúról van szó.', 'Azt javaslom, hogy ne vegyenek 100 cm x 60 cm méretűnél kisebbet. A tengerimalacok ugyanis a legtöbb időt a ketrecben töltik és elegendő helyre van szükség, hogy mozogni tudjanak.\r\n\r\nMilyen felszerelésre van szükség a tengerimalac ketrecének berendezéséhez?\r\nMindenképpen szükség van egy házikóra, egy stabil, strapabíró etetőtálra és itatóra, ezen kívül két szénatartóra (minimum egyre) a zöld takarmánynak és a szénának. Ezek vásárlásakor ügyelni kell arra, hogy a rácsok közötti távolság ne legyen túl nagy, nehogy beszoruljon a tengerimalac feje. Elég magasra is kell tenni, hogy ne tudjon beleugrani az állat és alvóhelyként használni, mivel súlyos sérüléseket is szenvedhet.\r\n\r\nHogyan rendezhető be szép játéksarok a tengerimalac számára?\r\nEnnek csak a fantáziája szabhat határt. Házikó, alagutak, rámpák. Sok örömet okozhat kedvencének, ha rendszeresen valami finom meglepetést (pl. egy uborkaszelet, egy petrezselyemszár vagy egy darab paprika) rejt el a ketrecében.', 'Hogy a legjobb megfogni a tengerimalacot?\r\nAhhoz, hogy felemelje a tengerimalacot, ajánlott mindkét kezet használni és átnyúlni a hasa alatt. Ezután magához is veheti vagy az ölébe teheti. Azonban nagyon óvatosan kell eljárni, nehogy leessen. Habár nagyon strapabírónak és gömbölydednek tűnik, felettébb törékenyek a csontjai és lábai. Például, ha leesik a kanapéról, súlyos sérüléseket szenvedhet.\r\n\r\nHogyan szoktatható össze két tengerimalac?\r\nA legegyszerűbb, ha még fiatal tengerimalacokat szoktat össze. Idősebb egyedek esetében már nehezebb dolga lesz. Azért, hogy ugyanolyan illatuk legyen, dörzsölje be édesköményteával őket. Ha van még egy ketrece, akkor egymás mellé teheti a kettőt egy pár napra.\r\n\r\nElőször a „jövevényt“ helyezze a ketrecbe, majd az otthonosan mozgó állatot azért, hogy elvegye az utóbbi előnyét a „hazai pályán“.', 'Jó gondozás mellett a tengerimalac élettartam akár elérheti a 6-8 évet is. Lehet hallani idősebb egyedekről is, de az nagyon ritka.', 'A szabadtéri ketrecnél mindenképpen elegendő árnyékot kell biztosítani. Ezen kívül védelmet kell nyújtania kutyák és macskák ellen. Semmi esetre se engedje tengerimalacát a kinti ketrecbe, amíg a talaj még túl hideg vagy a fű még nedves az olvadás miatt. Kezdetben ne is sok időt töltsön kint rágcsálója azért, hogy lassan hozzá tudjon szokni a fűhöz. A legjobb, ha már előtte rendszeresen ad neki zöldtakarmányt.', 'Guinea-pig Bridge', 'https://www.youtube.com/embed/bq9ghmgqoyc', 'hirek_img/pigg.jpg', 'hirek_img/gpig.jpg', 'hirek_img/piggy.jpg', '#tengerimalac ', '#cukiság', '#legfőbb gamer kellék', '', '');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kategoriak`
--

CREATE TABLE `kategoriak` (
  `id` int(9) NOT NULL,
  `katnev` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `katsorrend` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `kategoriak`
--

INSERT INTO `kategoriak` (`id`, `katnev`, `katsorrend`) VALUES
(1, 'PC', 1),
(2, 'Playstation', 2),
(3, 'Xbox', 3),
(4, 'Nintendo', 4),
(5, 'PSP', 5),
(6, 'Hardverek', 6),
(7, 'Gamer-stuff', 7),
(8, 'Ajándéknak való', 8),
(9, 'Könyvek', 9);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kivansaglista`
--

CREATE TABLE `kivansaglista` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `termekid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rendelesek`
--

CREATE TABLE `rendelesek` (
  `id` int(9) NOT NULL,
  `vevoid` int(4) NOT NULL,
  `szallitas` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `fizmod` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `datum` date NOT NULL DEFAULT current_timestamp(),
  `statusz` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `bruttoosszeg` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `rendelesek`
--

INSERT INTO `rendelesek` (`id`, `vevoid`, `szallitas`, `fizmod`, `datum`, `statusz`, `bruttoosszeg`) VALUES
(1, 2, 'szemelyes', 'atutalas', '2020-08-08', 'függőben', '0'),
(2, 3, 'szemelyes', 'utanvet', '2020-08-08', 'függőben', '307477'),
(3, 4, 'posta-utanvet', 'online', '2020-08-08', 'függőben', '37889'),
(4, 5, 'posta-utanvet', 'utanvet', '2020-08-10', 'függőben', '290487'),
(5, 6, 'posta-utanvet', 'utanvet', '2020-08-10', 'függőben', '0'),
(6, 7, 'gls', 'online', '2020-08-12', 'függőben', '11970'),
(7, 8, 'szemelyes', 'utanvet', '2020-08-13', 'függőben', '65967'),
(8, 9, 'szemelyes', 'atutalas', '2020-08-13', 'függőben', '0'),
(9, 10, 'szemelyes', 'atutalas', '2020-08-13', 'függőben', '0'),
(10, 11, 'szemelyes', 'atutalas', '2020-08-13', 'függőben', '51989'),
(11, 12, 'szemelyes', 'atutalas', '2020-08-13', 'függőben', '0'),
(12, 13, 'posta-utanvet', 'utanvet', '2020-08-13', 'függőben', '59976'),
(13, 14, 'gls', 'online', '2020-08-13', 'függőben', '26998'),
(14, 15, 'gls', 'online', '2020-08-13', 'függőben', '0'),
(15, 16, 'gls', 'online', '2020-08-13', 'függőben', '34995'),
(16, 17, 'gls', 'online', '2020-08-13', 'függőben', '0'),
(17, 18, 'gls', 'online', '2020-08-13', 'függőben', '0'),
(18, 19, 'gls', 'online', '2020-08-13', 'függőben', '0'),
(19, 20, 'gls', 'online', '2020-08-13', 'függőben', '0'),
(20, 21, 'posta-utanvet', 'online', '2020-08-14', 'függőben', '284467'),
(21, 22, 'gls', 'online', '2020-08-16', 'függőben', '884946'),
(22, 23, 'gls', 'online', '2020-08-17', 'függőben', '325976'),
(23, 24, 'gls', 'online', '2020-08-17', 'függőben', '4990'),
(24, 25, 'gls', 'online', '2020-08-17', 'függőben', '0'),
(25, 26, 'gls', 'online', '2020-08-17', 'függőben', '0'),
(26, 27, 'gls', 'online', '2020-08-17', 'függőben', '26989'),
(27, 28, 'gls', 'online', '2020-08-18', 'függőben', '130852');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rend_termekek`
--

CREATE TABLE `rend_termekek` (
  `id` int(9) NOT NULL,
  `rendelesid` int(10) NOT NULL,
  `termekid` int(10) NOT NULL,
  `db` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `rend_termekek`
--

INSERT INTO `rend_termekek` (`id`, `rendelesid`, `termekid`, `db`) VALUES
(1, 0, 13, 1),
(2, 0, 9, 1),
(3, 12, 23, 2),
(4, 12, 4, 2),
(5, 12, 24, 2),
(6, 13, 8, 1),
(7, 13, 13, 1),
(8, 15, 24, 5),
(9, 20, 20, 1),
(10, 20, 22, 1),
(11, 20, 23, 1),
(12, 20, 6, 1),
(13, 20, 15, 1),
(14, 20, 4, 1),
(15, 21, 6, 1),
(16, 21, 22, 1),
(17, 21, 9, 2),
(18, 21, 4, 1),
(19, 21, 21, 2),
(20, 21, 3, 1),
(21, 21, 8, 1),
(22, 22, 4, 1),
(23, 22, 10, 1),
(24, 22, 13, 1),
(25, 22, 6, 1),
(26, 22, 9, 1),
(27, 22, 15, 1),
(28, 23, 22, 1),
(29, 26, 13, 1),
(30, 26, 22, 1),
(31, 27, 5, 4),
(32, 27, 24, 3),
(33, 27, 23, 1),
(34, 27, 20, 1),
(35, 27, 19, 1),
(36, 27, 8, 1),
(37, 27, 2, 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tajekoztato`
--

CREATE TABLE `tajekoztato` (
  `id` int(9) NOT NULL,
  `cim` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `content` longtext COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `tajekoztato`
--

INSERT INTO `tajekoztato` (`id`, `cim`, `content`) VALUES
(1, 'Vásárlói Tájékoztató', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam voluptate minima ad reiciendis expedita natus. Reiciendis consequatur magnam pariatur dignissimos eligendi sunt aut, doloribus dolorum animi commodi ab earum, natus sint, soluta porro sequi voluptas corporis consequuntur ullam magni facere voluptates? Quasi, velit ipsum nihil praesentium temporibus iste, animi accusamus, dignissimos officia eos beatae! Non omnis dolor possimus ipsam soluta, voluptatem veritatis, nisi cupiditate magni nobis, enim autem quod illum qui. Dolorum in nobis maxime laboriosam quod suscipit saepe consectetur maiores? Modi ut maxime deserunt voluptates! Odit adipisci quisquam consequuntur, rerum a recusandae, error voluptatem, debitis aperiam harum impedit sit natus porro unde nam tenetur totam eligendi corporis. Laboriosam tempora esse alias laborum aut eligendi velit dolorem molestias nemo deleniti cumque culpa modi voluptatibus, recusandae soluta rerum, quos atque expedita pariatur unde maiores error. Amet dolor nihil iusto vitae corporis esse id? Voluptatibus, voluptates provident? Assumenda nesciunt est impedit consequatur culpa laboriosam nam. Ex ea odio totam possimus aut reprehenderit minima, quisquam itaque dolores officia unde sapiente? Architecto quisquam at quae assumenda repellendus delectus deleniti, autem, voluptate in beatae odio iure unde nihil nam! Molestias corporis eveniet vel ullam? Perferendis amet magni dolor ratione ipsum expedita placeat quis possimus, nobis iusto. Odio nobis laboriosam nam, neque aut libero velit doloribus deserunt. Laboriosam fugiat nemo in hic atque officia repudiandae quasi accusamus harum quibusdam, rem, facere voluptas placeat itaque ab, voluptate omnis sit facilis impedit architecto! Assumenda alias veniam odio expedita aperiam culpa incidunt laboriosam natus neque mollitia ipsa in, beatae necessitatibus sequi consectetur accusamus quaerat repudiandae maiores? Quidem, perferendis facere nobis optio non impedit accusantium sed deleniti? Laborum officiis vero aliquid tempora recusandae magnam maxime. Suscipit maiores id vitae commodi nulla architecto soluta nemo cum laboriosam? Quisquam quos incidunt minima magnam amet vitae nostrum facilis sequi, ea libero culpa dolore ullam pariatur sint cumque sunt voluptatem nihil provident eos quibusdam iure. Neque cumque perferendis animi facilis in minima voluptates eaque pariatur voluptatibus, beatae corporis nam aliquid eligendi repudiandae odio. Mollitia fugiat reprehenderit beatae repudiandae iste explicabo perspiciatis. Itaque, distinctio beatae sequi ducimus maiores expedita aut vitae quisquam, consequatur quia exercitationem voluptas amet provident laudantium ad! Voluptate nemo iste nobis optio ad consequuntur ducimus minima, eum exercitationem dolor expedita dolores id, quibusdam iusto recusandae quas perferendis eius ea doloremque itaque? Natus enim, quod quis placeat rerum veniam nostrum dignissimos non. Voluptas ratione consequatur nostrum inventore similique excepturi velit animi, fugiat nam neque minus dolorum vitae voluptates saepe ipsum consequuntur nulla rem! Velit esse ipsa tenetur debitis amet assumenda rerum officia et aliquid, dolorum saepe perferendis alias adipisci harum? Enim iure unde quod magnam cum quia vel quos recusandae impedit et fugiat aliquam animi debitis, laborum facilis eum sunt? Non provident iste eligendi sunt ab asperiores, totam eos illo, consectetur officia soluta consequuntur adipisci! Provident odit deleniti pariatur ducimus illo. Magnam, provident deserunt, illo, quaerat vitae exercitationem optio facilis ducimus dicta eum debitis! Consequatur, sunt! At reiciendis eveniet possimus magni. Itaque qui fuga quisquam fugiat dicta veniam cumque perspiciatis ipsam asperiores a?');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `termekek`
--

CREATE TABLE `termekek` (
  `id` int(9) NOT NULL,
  `kategoria` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `ajanlott_eletkor` varchar(9) COLLATE utf8_hungarian_ci NOT NULL,
  `termeknev` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `cikkszam` decimal(10,0) NOT NULL,
  `keszlet` decimal(3,0) NOT NULL,
  `termekar` decimal(10,0) NOT NULL,
  `megjelenes` date NOT NULL,
  `rovidleiras` text COLLATE utf8_hungarian_ci NOT NULL,
  `hosszuleiras` longtext COLLATE utf8_hungarian_ci NOT NULL,
  `termekkep` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `termekkep2` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `termekkep3` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `tul1` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `tul2` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `tul3` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `tul4` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `tul5` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `tul6` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `aktiv` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `termekek`
--

INSERT INTO `termekek` (`id`, `kategoria`, `ajanlott_eletkor`, `termeknev`, `cikkszam`, `keszlet`, `termekar`, `megjelenes`, `rovidleiras`, `hosszuleiras`, `termekkep`, `termekkep2`, `termekkep3`, `tul1`, `tul2`, `tul3`, `tul4`, `tul5`, `tul6`, `aktiv`) VALUES
(2, '1', 'pegi18', 'Watch Dogs Legion', '1', '25', '19890', '2020-10-29', '+ előrendelői ajándék Golden King Pack DLC ', 'Üdvözöl az ellenállás! A Ubisoft legújabb, nyílt világú akciójátéka, a Watch Dogs Legion a nem túl távoli jövő Londonjába kalauzol. A brit fővárost bűnbandák, és a mindent megfigyelés alatt tartó hatóságok tartják uralmuk alatt. De az emberek elnyomása nem mindenkinek tetszik. A DedSec hackercsapat minden tőle telhetőt megtesz, hogy visszaszerezze London irányítását. Ehhez pedig mindenkire szükség lesz!\r\n\r\nA Watch Dogs Legion legnagyobb újdonsága, hogy bármelyik járókelőből főszereplő válhat. Mobiltelefonod segítségével megnézheted, melyik NPC milyen képességekkel rendelkezik, és milyen előnyökkel járna beszervezni. Bárki felett átveheted az irányítást: minden karakter saját múlttal, élettel, szinkronhanggal és egyedi képességekkel rendelkezik. Nincs két ugyanolyan küldetés: a karakteredtől függően bárhogy alakulhatnak a megbízások! Ha viszont a karakter meghal, örökre eltűnik a játékból, és új DedSec tagok után kell nézned.\r\n\r\n', 'img/watchdogspc.jpg', 'img/watchdog.jpg', 'img/watchdogs.jpg', 'A nagysikerű Watch Dogs sorozat harmadik része az eregeti alkotóktól', 'Szerezd vissza a London feletti irányítást a DedSec csapat tagjaként!', 'Irányíts bárkit: vedd át bármelyik járókelő helyét, és használd egyedi képességeiket a küldetések so', 'Hatalmas, szabadon bejárható, futurisztikus város nyitott küldetésekkel', 'Lopakodás, hackelés, közelharc, lövöldözés a te játékstílusod szerint', 'Egyjátékos, és online kooperatív lehetőség', 1),
(3, '6', 'pegi3', 'ASUS ROG-STRIX-RTX2080TI GAMING 11GB videokártya', '3', '15', '558499', '2019-01-01', 'GAMING videokártya', 'ASUS ROG-STRIX-RTX2080TI-O11G-GAMING 11GB GDDR6 352 bit videokártya', 'img/2080tiasusrog.jpg', 'img/', 'img/', '352 bit', 'ultra erős', 'RTX 2080 TI', '11GB', 'DDR6', 'ASUS', 1),
(4, '2', 'pegi18', 'Ghost of Tsushima', '4', '0', '17999', '2020-07-17', 'Ghost of Tsushima játkszoftver', 'Mentsd meg a történelmi Japánt a mongolok rohamától a Sucker Punch Productions (az Infamous sorozat fejlesztőcsapata) új játékában! A lenyűgöző grafikájú, nyílt világú kalandjáték főhőse Jin Sakai, egy harcos, aki elsajátítja a Szellem harcstílust, hogy szembeszálljon a megszállókkal Tsushima szigetén. Kövesd végig az ő történetét, lopakodj, támadj lesből vagy szemtől szemben, és segíts a helyi lakosoknak mellékküldetések teljesítésével. Deríts fényt a megszállók valódi szándékára, győzd le, aki az utadba áll, és válj Tsushima Szellemévé!\r\n\r\n', 'img/ghost01.png', 'img/ghost02.jpg', 'img/ghost03.jpg', 'Vadonatúj nyílt világú kaland az Infamous sorozat fejlesztőitől!', 'Szabadon felfedezhető táj és küldetések, mesterséges útjelzők nélkül!', 'Szellem stílus: a lopakodás és a szamuráj harc leghalálosabb elemei!', 'Élj át egy hihetetlenül látványos történetet a 13. századi Tsushima szigetén!', 'Magyar felirat!', 'Ősi japán kultúra!', 1),
(5, '3', 'pegi3', 'FIFA 21', '5', '15', '17999', '2020-10-09', '+ előrendelői meglepetés focirajongói ajándéktárgy', 'Győzz egy csapatként az EA SPORTS FIFA 21-ben, amelyet a Frostbite grafikus motor kelt életre soha nem látott módon! Akár az utcákon, akár a tömött stadionokban játszol, a FIFA 21 több lehetőséget kínál, mint valaha – benne az UEFA Bajnokok Ligájával és a CONMEBOL Libertadores bajnoksággal.\r\n\r\nAz új deferred lighting bevilágítási rendszerrel a FIFA 21 autentikus, új környezeteket és ultra-élethű focis akciót kelt életre, még részletesebb karaktermodellekkel, amelyek a stadion minden részét megtöltik. A következő generációs technológia még jobban visszaadja a játékosok fizikumát és mozgását, a dinamikus bevilágítás pedig még jobban kihozza a részleteket az emberek arcán, haján és ruházatán.\r\n\r\nÚj 3D hangzással, új animációs technológiával és még több hangulati elemmel minden meccs olyan, mintha egy bajnoki döntő lenne. Játssz a kedvenc játékmódjaidban, indíts teljes karriert, hódítsd meg az utcai foci világát a VOLTA Football módban, vagy állítsd össze álomcsapatodat a FIFA 21 Ultimate Team-ben. Szerezd meg a FIFA 21-et, és frissíts a következő generációs változatra ingyen!\r\n\r\nA FIFA 21 a foci új szintje. Érezd, lásd, halld, és tapasztald meg te is.', 'img/fifa.jpg', 'img/fifa23.jpg', 'img/fifa22.jpg', 'A virtuális foci új szintje a Frostbite grafikus motornak köszönhetően', 'Új bevilágítási rendszer, még élethűbb, dinamikus időjárás', 'Még részletesebb animációk és élethűbb viselkedés a pályán és azon túl', 'Teljes értékű karrier mód az összes nagy bajnoksággal', 'Pro Clubs mód', '11 fős helyi és 22 fős online multiplayer', 1),
(6, '6', 'pegi3', 'IRIS T800 + Microsoft Windows 10 Home ', '6', '98', '230499', '2020-08-06', 'asztali számítógép', 'IRIS T800 + Microsoft Windows 10 Home asztali számítógép specifikáció\r\nAlapadatok\r\nChipset típus	H110\r\nCPU foglalat	Intel LGA1151\r\nCPU család	Core i5\r\nCPU típus	Intel Core i5-7400 (3,00GHz, 6MB)\r\nMemória foglalat	DDR4\r\nMemória foglalatok száma	2 db\r\nMemória mennyiség	8 GB\r\nVGA típus	GTX1060\r\nHáttértár típus	2,5\" SSD\r\nHáttértár méret	120 GB\r\n2.Háttértár típus	HDD\r\n2.Háttértár méret	1000 GB\r\nOptikai meghajtó	DVD író\r\nHálózati csatlakozás	10/100/1000 Mb/s\r\nHangcsatorna	7.1\r\nOperációs rendszer	Windows 10 Home 64-bit\r\nCsatlakozó(k)\r\nHDMI ki	1 db\r\nHálózati csatlakozás	10/100/1000 Mb/s\r\nDVI-D ki	1 db\r\nD-Sub ki	1 db\r\nUSB 2.0 ki	6 db\r\nHangcsatorna	7.1\r\nTulajdonságok\r\nAlap szín	Fekete\r\nSzélesség (max.)	175 mm\r\nMagasság (max.)	410 mm\r\nMélység (max.)	408 mm\r\nFizikai jellemzők\r\nAlap szín	Fekete\r\nSzélesség (max.)	175 mm\r\nMagasság (max.)	410 mm\r\nMélység (max.)	408 mm\r\n', 'img/PCiris.jpg', 'img/', 'img/', 'Operációs rendszer	Windows 10 Home 64-bit', 'Memória 16 GB', 'VGA 	GTX1060', 'Háttértár méret	1000 GB', 'CPU i5 Intel LGA1151', 'Chipset típus	H110', 1),
(7, '7', 'pegi3', 'Acer Predator Cestus 500 Gamer Egér', '7', '46', '23990', '2020-08-06', 'Gamer Egér', 'Premium Omron kapcsolók • 8 gomb + görgő • Élettartam: akár 70 millió kattintás! • Állítható kattintási erősség • 50-7200dpi • Egyedi szoftveres felület, speciális beállításokhoz • Kétkezes, ergonomikus kialakítással,oldal panelekkel • Világító jég kék logó • Profilválasztási lehetőség', 'img/pcmouse.jpg', 'img/', 'img/', 'sniper funkció', '7.000.000 kattinhtás élettartam', '500-7200 DPI', '8 gomb + görgő', 'Állítható kattintási erősség', 'Egyedi szoftveres felület', 1),
(8, '7', 'pegi3', 'VENOM VS4793 Nintendo Switch Starter Kit', '8', '98', '4999', '2020-08-06', 'kijelzővédő, fülhallgató, tok', 'Leírás\r\nCsomag tartalma: kijelzővédő, fülhallgató, tok\r\n\r\n¤ Tartsa Nintendo Switch vezérlőjét biztonságosan és védve\r\n¤ Robusztus EVA tok belső hálós zsebekkel további kiegészítőkhöz és játékokhoz\r\n¤ Üveg képernyővédő, amely a vezérlő képernyőjét a szennyeződéstől és a karcolódástól mentesíti\r\n¤ Tartalmaz még a tisztítókendőt és a fülhallgató készletet', 'img/switchtartozék.jpg', 'img/switchtartozék2.jpg', 'img/switchtartozék3.jpg', '', '', '', '', '', '', 1),
(9, '7', 'pegi3', 'KINGSTON HYPERX CLOUD II GAMER HEADSET', '10', '25', '29990', '2020-08-06', 'GAMER HEADSET', 'Tulajdonságok\r\nTÍPUS\r\n7.1 fejhallgató & headset\r\nALAP SZÍN\r\nFekete\r\nTÍPUS\r\n7.1 fejhallgató & headset\r\nGAMER\r\nVan\r\nGAMER\r\nVan\r\nHANGERŐ SZABÁLYZÓ\r\nVan\r\nJACK 3,5MM\r\nVan\r\nKOMPATIBILITÁS\r\nMAC,PC,PlayStation 4\r\nUSB\r\nVan\r\nGAMER\r\nVan\r\nKAPCSOLÓDÁSI TECHNOLÓGIA\r\nVezetékes\r\nHANGERŐ SZABÁLYZÓ\r\nVan\r\nUSB\r\nVan\r\nALAP SZÍN\r\nFekete\r\nJACK 3,5MM\r\nVan\r\nHANGERŐ SZABÁLYZÓ\r\nVan\r\nKÁBEL HOSSZÚSÁG\r\n3.00 cm\r\nJACK 3,5MM\r\nVan\r\nKOMPATIBILITÁS\r\nMAC;PC;PlayStation 4\r\nKÁBEL HOSSZÚSÁG\r\n3.00 cm\r\nTÍPUS\r\n7.1 fejhallgató & headset\r\nUSB\r\nVan\r\nKOMPATIBILITÁS\r\nMAC,PC,PlayStation 4\r\nALAP SZÍN\r\nFekete\r\nSÚLY\r\n320.000 gramm\r\nMIKROFON FREKVENCIA TARTOMÁNY\r\n50 - 18000 Hz\r\nMIKROFON ÉRZÉKENYSÉG\r\n-39.000 dB\r\nKÁBEL HOSSZÚSÁG\r\n300.00 cm\r\nIMPEDANCIA\r\n60.000 ohm\r\nFREKVENCIA TARTOMÁNY\r\n15 - 25000 Hz\r\nHANGSZÓRÓ ÁTMÉRŐ\r\n53.000 mm\r\n', 'img/fejes01.jpg', 'img/', 'img/', 'Fekete, fegyverszürke, felete - vörös, pink szinekben', 'USB, jack 3,5 csatlakozó', 'hangerő szabályzó', '1,5m kábel', 'led világítás', 'cserélhető bőr fülpárnák', 1),
(10, '1', 'pegi16', 'Anthem', '13', '29', '3490', '2019-02-22', 'Digitális letölthető kód', 'Az Anthem a Mass Effect- és a Dragon Age-sorozatokkal elhíresült Bioware legújabb sci-fi stílusú akció-szerepjátéka, amivel a Bungie által megalkotott Destiny hagyományait álmodták tovább, illetve formálták a saját ízlésükhöz a készítők.\r\n\r\nA játékban egy óriási poszt-apokaliptikus világ vár ránk, amelyet szabadon bejárhatunk majd küldetések után kutakodva, de a központi elem a harc lesz, amit emberi ellenfelekkel – ergo más játékosokkal –, de akár vad és félelmetes szörnyetegekkel szemben is megvívhatunk majd, miközben folyamatosan fejlődünk, gyűjtögetünk és megismerjük ennek a veszélyes világnak a sajátosságait.\r\n\r\nAz Anthem rengeteg tartalmat ígér a játékosok számára, valamint páratlan közösségi élményeket, aminek jóvoltából a küldetéseket akár barátaink oldalán is lehetőségünk nyílik teljesíteni, mialatt futurisztikus fegyvereket vehetünk a kezünkbe és brutális páncélokat ölthetünk magunkra, amelyek nemcsak repülésre lesznek alkalmasak, hanem arra is, hogy megvédjenek minket az ellenfelektől.', 'img/anthem.jpg', 'img/anthem02.jpg', 'img/anthem03.jpg', 'Ismerj meg egy poszt-apokaliptikus futurizmust a Mass Effect alkotóinak legújabb sci-fi akciójátékáb', 'Légy a jövő egyik félelmetes harcosa, és vedd fel a küzdelmet ellenséges játékosokkal, vagy brutális', 'Bandázz és alkoss csapatot barátaiddal, fedezzétek fel szabadon az óriási világot, fejlődjetek, harc', '', '', '', 1),
(11, '1', 'pegi18', 'Death Stranding', '15', '50', '21999', '2020-07-14', 'Death Stranding Steelbook Edition', 'Végre PC-re is ellátogat a legendás Hideo Kojima legújabb játéka, a Death Stranding! A különleges Steelbook Edition gyönyörű fémtokkal érkezik (a játékot Steam letöltőkód formájában tartalmazza), ezen felül a játék teljes zenei anyagát, és más digitális extrákat kínál. Konzolvilág exkluzív! Magyarországon csak nálunk kapható!\r\n\r\nA jövő a kezedben van a Death Stranding játékban! Éld át Hideo Kojima (a Metal Gear Solid sorozat alkotója) legújabb akciójátékát, amely a közeli jövőben játszódik, és amelyben a szétszakadt társadalmat kell újra egyesítened. Ez egy új, filmszerű kaland, amely megreformálja a műfajt! A világot rejtélyes robbanások rázzák meg, amelyek természeti katasztrófákat idéznek elő, és az emberiség jó részét kipusztítják. A tájat különleges teremtmények járják, a bolygót pedig a teljes kihalás fenyegeti, ezért a játék főhőse, Sam Bridges feladata, hogy megmentse az emberiség megmaradt részét. A Death Stranding világa hatalmas, nyílt és dinamikus, amelyben egyesül a lopakodós és az akciódús játékmenet, mindez filmszerű történetmeséléssel kiegészítve.\r\n\r\nA Death Stranding a legendás Metal Gear Solid játékok fejlesztőcsapatának új játéka, amely PC-n is kihasználja a legmodernebb grafikus effektek nyújtotta lehetőségeket egy igazán filmszerű történetben! Egy különleges új kaland, amely megreformálja az interaktív szórakoztatás műfaját.  ', 'img/deathstr01.png', 'img/deathstr02.jpg', 'img/deathstr03.jpg', 'A Kojima Productions (Metal Gear Solid) legújabb akciójátéka végre PC-n is!', 'Mentsd meg az emberiséget a kihalástól a természeti katasztrófák árnyékában!', 'Dinamikus, szabadon bejárható nyílt világ', 'Hollywoodi szereplőgárda fotorealisztikus karakterekkel', 'Lopakodás, harc, felfedezés egy óriási kalandban', 'Konzolvilág Exkluzív! Szerezd meg a Steelbook kiadást digitális zenei albummal és más digitális extr', 1),
(12, '1', 'pegi18', 'Ori and the Will of the Wisps', '16', '50', '21999', '2020-07-14', 'Ori and the Will of the Wisps Collector\'s Edition', 'A számtalan díjat bezsebelt és óriási sikert elért Ori and the Blind Forest után már itt is van a Moon Studios nagyszerű alkotásának folytatása, amelyben konkrétan ott folytathatjuk majd kalandjainkat, ahol az első részben abbamaradt.\r\n\r\nAz Ori and the Will of the Wisps a nagy elődhöz hasonlóan egy újabb megható és hatásos sztorit tár elénk, miközben az aprócska Ori terelgetésével felfedezhetünk egy számtalan problémától szenvedő, ámde varázslatos világot, amelyben a kis fénylény képességeit kihasználva teljesítjük a változatos pályák által elénk tárt kihívásokat.\r\n\r\nTermészetesen az Ori and the Will of the Wisps ezúttal sem akarja megváltani a világot, ezáltal a játékmenet terén egy klasszikus oldalnézetes platformer vár benne ránk, amelyben ügyességünkre és észjárásunkra egyaránt szükségünk lesz ahhoz, hogy hol a mozgó elemek között lavírozva, hol az ellenfelekkel megharcolva, hol a fejtörők teljesítésével, de elérhessük célunkat.\r\n', 'img/ori05.png', 'img/ori02.jpg', 'img/ori01.jpg', 'Éld át az Ori and the Blind Forest régóta várt folytatását, amely ugyanolyan csodálatos élményeket g', 'Ismerj meg egy igazán különleges és varázslatos platformert, amelyben egy kis fénylényt terelgetve m', 'Harcolj, ügyeskedj vagy oldj meg fejtörőket a változatos pályákon, amelyek egytől-egyig dugig leszne', '', '', '', 1),
(13, '4', 'pegi3', 'Luigi\'s Mansion 3', '17', '46', '21999', '2020-07-14', 'Luigi\'s Mansion 3', 'A világsikert aratott Luigi’s Mansion sorozat visszatér az eddigi legszebb és legnagyobb epizóddal, kizárólag Nintendo Switch konzolon! Luigi éppen vakációzik Mario és barátai társaságában, amikor meghívást kap egy luxushotelbe. Csakhogy az álom hamarosan rémálommá válik, amikor King Boo felfedi, hogy mindez csak egy csapda volt ahhoz, hogy Mario és barátai kelepcébe kerüljenek. Ismét Luigi kezében a megoldás! E. Gadd professzor segítségével újra szellemvadászatra indulhatsz egy sötét, félelmetes szálloda emeletein!\r\n\r\nHasználd az új, Poltergust G-00 eszközt a szellemek csapdába ejtéséhez, vagy idézd meg Gooigit, Luigi zöld segítőtársát, akivel közösen oldhatsz meg logikai feladványokat, és így juthatsz tovább szobáról szobára. Gooigi és Luigi akár egy személy által is irányítható, de meghívhatod egy barátodat is, hogy közösen oldjátok meg a feladatokat. Ha még izgalmasabb multiplayer akcióra vágytok, vágjatok bele a ScareScraper módba, ahol időre kell végigszaladni egy végtelen felhőkarcoló emeletein!', 'img/Luigicoverswitch.png', 'img/luigipics1.jpg', 'img/luigipics2.jpg', 'Az eddigi legszebb és legnagyobb Luigi’s Mansion játék!', 'Luigi talán félős, de minden eddiginél több felszerelés és képesség áll rendelkezésére a szellemek l', 'Járd be a kísérteties hotel minden emeletét, és oldj meg logikai feladványokat', 'Gooigi, Luigi zöld segítőtársa kooperatív játékra is lehetőséget biztosít', 'ScareScraper: Izgalmas multiplayer mód akár online, akár 8 helyi játékos számára', '', 1),
(14, '8', 'pegi3', 'Assassin\'s Creed Valhalla Novelty Viking Pulóver', '18', '50', '21999', '2020-07-14', '© Ubisoft Entertainment', 'Assassin\'s Creed Valhalla Novelty Viking Pulóver. 80% pamut, 20% poliészter. © Ubisoft EntertainmentAssassin\'s Creed Valhalla Novelty Viking Pulóver. 80% pamut, 20% poliészter. © Ubisoft EntertainmentAssassin\'s Creed Valhalla Novelty Viking Pulóver. 80% pamut, 20% poliészter. © Ubisoft EntertainmentAssassin\'s Creed Valhalla Novelty Viking Pulóver. 80% pamut, 20% poliészter. © Ubisoft EntertainmentAssassin\'s Creed Valhalla Novelty Viking Pulóver. 80% pamut, 20% poliészter. © Ubisoft EntertainmentAssassin\'s Creed Valhalla Novelty Viking Pulóver. 80% pamut, 20% poliészter. © Ubisoft EntertainmentAssassin\'s Creed Valhalla Novelty Viking Pulóver. 80% pamut, 20% poliészter. © Ubisoft EntertainmentAssassin\'s Creed Valhalla Novelty Viking Pulóver. 80% pamut, 20% poliészter. © Ubisoft EntertainmentAssassin\'s Creed Valhalla Novelty Viking Pulóver. 80% pamut, 20% poliészter. © Ubisoft EntertainmentAssassin\'s Creed Valhalla Novelty Viking Pulóver. 80% pamut, 20% poliészter. © Ubisoft EntertainmentAssassin\'s Creed Valhalla Novelty Viking Pulóver. 80% pamut, 20% poliészter. © Ubisoft EntertainmentAssassin\'s Creed Valhalla Novelty Viking Pulóver. 80% pamut, 20% poliészter. © Ubisoft Entertainment', 'img/pulcsi01.jpg', 'img/pulcsi02.jpg', '', 'Színválaszték: Fehér, fekete és szürke színekben!', 'Méret: S, M L, XL, XXL, XXXL', 'Anyaga: pamut', 'Szállítási idő: 1-3 nap', 'Szállítási költség: 2160 Ft.', 'Származási hely: United Kingdom', 1),
(15, '8', 'pegi3', 'LVL UP! Póló', '18', '46', '21999', '2020-07-14', 'I don\'t age, I just lvl up!', 'I don\'t age, I just lvl up!I don\'t age, I just lvl up!I don\'t age, I just lvl up!I don\'t age, I just lvl up!I don\'t age, I just lvl up!I don\'t age, I just lvl up!I don\'t age, I just lvl up!I don\'t age, I just lvl up!I don\'t age, I just lvl up!I don\'t age, I just lvl up!I don\'t age, I just lvl up!I don\'t age, I just lvl up!I don\'t age, I just lvl up!I don\'t age, I just lvl up!I don\'t age, I just lvl up!I don\'t age, I just lvl up!I don\'t age, I just lvl up!I don\'t age, I just lvl up!', 'img/polo01.jpg', 'img/polo02.jpg', 'img/polo03.jpg', 'Színválaszték: Fehér, fekete és szürke színekben!', 'Méret: S, M L, XL, XXL, XXXL', 'Anyaga: pamut', 'Szállítási idő: 1-3 nap', 'Szállítási költség: 2160 Ft.', 'Származási hely: United Kingdom', 1),
(16, '9', 'pegi16', 'Starcraft Evolúció', '30', '50', '3999', '2020-12-24', 'ELŐJEGYEZHETŐ!', 'Majdnem egy évtizednyi vérontás és kegyetlen háború után a világegyetem három nagy, harcias faja – a titokzatos protossok, a vérszomjas zergek, és az emberiség leszármazottai, a terránok – végre kényszerű tűzszünetet kötnek. A béke azonban igen törékenynek bizonyul, s mikor kiderül, hogy egy, a háború során felperzselt világon új élet virágzik, az indulatok robbanáspontig hevülnek. A semlegesség ismét bizalmatlanságnak és gyűlölködésnek adja át a helyét, és egy régi ellenséget ismét azzal vádolnak, hogy biológiai fegyveren dolgozik, hogy annak segítségével robbantson ki új háborút.\r\n\r\nTerrán katonák és protoss harcosok érkeznek a titokzatos zerg planétára, és egy kutatóexpedíciót indítanak útjára, hogy az fürkéssze ki a bolygó titkait és lakóinak szándékát. A buja ősvadon azonban másfajta, árnyékok közt rejtőzködő lényeknek is otthont ad, amik, ha szabadjára eresztik őket, az egész galaxis sorsát képesek lesznek megváltoztatni...', 'img/starcraft1.jpg', 'img/', 'img/', 'Szerző: Timothy Zahn', 'Megjelenés: 2020', 'Kiadó: Szukits', 'Kötés: puhafedeles', 'Szállítási költség: 1160 Ft.', '', 1),
(17, '9', 'pegi7', 'Dragon Age: Széthasadva', '35', '100', '3199', '2020-07-31', 'RENDELHETŐ!', 'A kirkwalli Mágusok Körének felszámolása a végletekig kiélezte a templárius lovagok és a felügyeletükre bízott varázslók viszonyát. Egység a mágusok között sincs: egyesek nyílt lázadást terveznek, béklyóik lerázása mellett kardoskodnak, míg mások a meglévő rend fenntartását tartják üdvözítőnek.\r\n\r\nA magasztos Fehér Orom falai közt – a templárius hatalom fellegvárában – a feszültség elérte a robbanáspontot. Néhány szélsőséges nézeteket valló mágus cselekedetei felkeltették a Keresők, a templáriusok tekintélyes és titokzatos csoportjának ﬁgyelmét, akik Val Royeaux-ba érkeznek, hogy átvegyék az irányítást, és helyreállítsák a rendet – bármi áron. Tovább ront a helyzeten, hogy egy rejtélyes gyilkos kísért a Fehér Orom komor folyosóin, aki mindenki számára láthatatlan, kivéve egyetlen mágust. A Keresők azonban magát Rhys varázslót tekintik az első számú gyanúsítottnak; ártatlanságának bizonyítására vajmi kevés reménye van, így jövője komornak és rövidre szabottnak tűnik.', 'img/DA.jpg', 'img/', 'img/', 'Szerző: David Gaider', 'Megjelenés: 2020', 'Kiadó: Tuan', 'Oldalszám: 432', 'Kötés: puhafedeles', 'Méret: 130 x 200 mm', 1),
(18, '9', 'pegi12', 'World of Warcraft: Krónikák első könyv', '36', '100', '8490', '2020-08-26', 'ELŐRENDELHETŐ!', 'Lépj be a mítoszok és legendák korába, amikor még nem a Horda és a Szövetség háborúi dúlták a világot! \r\n\r\nA World of Warcraft: Krónikák Első Könyve az univerzum teremtésétől, az ősi birodalmak felemelkedésén át azon erők színre lépéséig követi Azeroth eseményeit, melyek a legnagyobb hatással voltak a történelem alakulására. A könyvben - mely egy háromrészes exkluzív kivitelű sorozat első kötete - a méltán híres Peter Lee egész oldalas festményei, Joseph Lacroix remek grafikái és további fél tucat térkép segít felfedezni és megérteni a korok múlását és a Warcraft világának változását. \r\n\r\nLégy részese a nem mindennapi utazásnak, melyben a Blizzard Entertainment és a Dark Horse Comics elvezet a Warcraft-univerzum színfalai mögé!', 'img/WCK.jpg', 'img/', 'img/', 'Szerző: Chris Metzen, Matt Burns, Robert Brooks', 'Várható megjelenés: 2020 Augusztus 26.', 'Kiadó: Szukits', 'Oldalszám: 184', 'Kötés: Keménytáblás', 'méret: 237 x 311 mm', 1),
(19, '9', 'pegi18', 'World of Warcraft: Illidan', '37', '99', '3990', '2020-08-26', 'ELŐRENDELHETŐ!', 'Egykor rég, Illidan, az éjelf mágus cselből felajánlotta szolgálatait a Lángoló Légiónak, hogy véget vethessen a démonok inváziójának. Népe mégis árulónak bélyegezte és tömlöcbe vetette tízezer hosszú éven át, ám akaratát sosem tudták megtörni. Most, hogy a Légió visszatért, csak ő állhat a sötét erők útjába, és béklyóitól megszabadulva Illidan felkészül a végső ütközetre a Draenor maradványaiból megmaradt Peremföldön. Sereget gyűjt a FEL mágiájától eltorzult orkokból, a csúszó mászó nagákból, a ravasz vérelfekből és az eltorzult démonvadászokból. Egyedül csak ő érti meg, mily hatalmas árat kell fizetni az ellenség legyőzéséhez, így számára minden és mindenki feláldozható. Ám a végső ütközet előtt Illidan ellen fordulnak azok, akik átlátják a hatalomért szőtt terveit. Köztük van Árnydal Maiev, a Védelmező harcos és hűséges Vigyázói, akik Peremföldön veszik fel a harcot régi ellenségükkel. Maiev pedig megfogadja, addig nem nyugszik, míg Illidan nem lesz újra fogoly, vagy végre halott…\r\n\r\nAz Ősök Háborújának legendás alakja, Viharhozó Illidan egyike Azeroth leghatalmasabb és legrettegettebb teremtményeinek. A démonölő varázsló ebben a történetben egy olyan briliáns tervet eszel ki, mely új irányt szabhat a világban zajló eseményeknek...', 'img/illi.jpg', 'img/', 'img/', 'Várható megjelenés: 2020 Augusztus 26.', 'Szerző: William King', 'oldalszám: 360', 'Kötés: keménytáblás', '135 x 205 mm', 'Kiadó: Szukits', 1),
(20, '5', 'pegi12', 'The Lord of The Rings Aragorn\'s Quest', '37', '98', '3990', '2020-08-26', '(PSP) (használt)', 'The Lord of The Rings Aragorn\'s Quest (PSP) (használt)The Lord of The Rings Aragorn\'s Quest (PSP) (használt)The Lord of The Rings Aragorn\'s Quest (PSP) (használt)The Lord of The Rings Aragorn\'s Quest (PSP) (használt)The Lord of The Rings Aragorn\'s Quest (PSP) (használt)The Lord of The Rings Aragorn\'s Quest (PSP) (használt)The Lord of The Rings Aragorn\'s Quest (PSP) (használt)The Lord of The Rings Aragorn\'s Quest (PSP) (használt)The Lord of The Rings Aragorn\'s Quest (PSP) (használt)The Lord of The Rings Aragorn\'s Quest (PSP) (használt)The Lord of The Rings Aragorn\'s Quest (PSP) (használt)The Lord of The Rings Aragorn\'s Quest (PSP) (használt)The Lord of The Rings Aragorn\'s Quest (PSP) (használt)The Lord of The Rings Aragorn\'s Quest (PSP) (használt)The Lord of The Rings Aragorn\'s Quest (PSP) (használt)The Lord of The Rings Aragorn\'s Quest (PSP) (használt)', 'img/psplotr1.jpg', 'img/', 'img/', 'Játék kategória - Akció', 'Korhatár - 12+', 'Gyártó - Warner Bros Interactive Entertainment', '', '', '', 1),
(21, '8', 'pegi3', 'Cyberpunk 2077 Johnny Silverhand figura', '37', '95', '3990', '2020-10-26', 'ELŐRENDELHETŐ', 'Hivatalos, engedélyezett figura, nagyon részletes, autentikus kidolgozás.\r\nKb. 24 cm magas.\r\nA Dark Horse és a CD PROJEKT RED partnerkapcsolatra lépett, hogy elhozza a várva várt Cyberpunk 2077 figuráit. Minden figura körülbelül 24 cm magas, talapzatán Night City fiktív ’Samurai’ bandájának emblémájával.\r\n\r\n Ez a lélegzetelállító figura baltát visz egy tűzpárbajba! A legendás Rockerboy és a Samurai banda énekesének sikere viharként söpör végig Night City-n!', 'img/cpjohn1.jpg', 'img/cpjohn2.jpg', 'img/', 'Előrendelés - Előrendelhető', 'Korhatár - 3+', 'Gyártó - CD PROJEKT RED', '', '', '', 1),
(22, '2', 'pegi16', 'Monster Hunter: World', '37', '96', '4990', '2018-02-12', ' Készletkisöprő Akció', 'Minden eddiginél komolyabb újdonságokkal és fejlesztésekkel vértezte fel a legújabb Monster Hunter-játékot a Capcom, melyben az alapok terén a sorozattól megszokott sajátosságok várnak ránk, ezáltal óriási szörnyekkel kell megküzdenünk egy veszélyekkel teli, szabadon bejárható fantáziavilágban.\r\n\r\nA Monster Hunter: World egy külsőnézetes akció-szerepjátékként lehetőséget ad arra, hogy különféle őshüllőkre hajazó teremtményekkel, gyakran toronyház méretű szörnyetegekkel mérjük össze tudásunkat, amelyek mindegyike más és más taktikát igényel akár egyedül, akár mások társaságában vetjük bele magunkat az izgalmakba.\r\n\r\nA játékban minél jobban belemélyedünk a világ felfedezésébe, és minél keményebb ellenfelekkel küzdünk meg, annál erősebbé és tapasztaltabbá válhatunk, miközben fejleszthetjük karakterünket, sőt fegyvereinket és páncéljainkat is, hogy belőlünk válhasson a Monster Hunter: World legkeményebb harcosa.', 'img/MHW1.jpg', 'img/MHW2.jpg', 'img/MHW3.jpg', 'Fedezz fel szabadon egy óriási szörnyetegek által lakott világot egyedül vagy mások társaságában!', 'Küzdj meg a félelmetes, őshüllőkhöz hasonló teremtményekkel valós idejű, intenzív ütközetekben!', 'Válj hatalmas harcossá, fejleszd képességeidet, páncéljaidat és fegyvereidet is!', '', '', '', 1),
(23, '2', 'pegi16', 'Horizon Zero Dawn Complete Edition', '55', '93', '4990', '2018-02-12', 'Black Friday 2020 Nyár Sony Szoftver Akció\r\n', 'A Horizon Zero Dawn a Killzone fejlesztőinek legújabb alkotásaként egy olyan poszt-apokaliptikus világba kalauzol el minket, amelyben a gépek teljesen átvették az uralmat az emberiség felett, ezáltal kipusztult a nagy civilizáció, és fajunk utolsó, maroknyi képviselőjére maradt az a hálátlan feladat, hogy megpróbálják visszaállítani a világ rendjét.\r\n\r\nA nyitott világú TPS-ként definiálható Horizon Zero Dawn betöltését követően Aloy bőrébe bújhatunk bele, aki példaértékű bátorsággal próbálja meg felvenni a harcot veszélyesebbnél-veszélyesebb robotokkal, amelyeket minden esetben turpissággal, illetve gyenge pontjuk kiaknázásával győzhetünk majd le.\r\n\r\nA játékban a világ rendjének helyreállítása mellett rengeteg akció és fejtörő vár ránk, amiken keresztül felfedezhetünk a buja növényzettel benőtt romvárosokat, a bennük elrejtett ősi ereklyéket, amelyeket váltakozó napszakok és időjárás, valamint átfogó fejlődési- és crafting rendszer színesítenek majd.\r\n\r\nA Horizon Zero Dawn Complete Edition részeként ráadásul most egy minden eddiginél tartalmasabb kiadásban is begyűjtheted 2017 egyik legfontosabb PS4-exluzívját, amelyben az alapjáték mellett a korábbi speciális kiadás extráit, és a legújabb kiegészítőt is bezsebelheted magadnak.\r\n\r\nA csomag részét képező Horizon Zero Dawn: The Frozen Wilds részeként Aloy oldalán egy teljesen új területet, az északi fagyos lankákat fedezhetjük fel magunknak, ahol megismerkedhetünk egy minden eddiginél másabb mentalitást gyakorló törzzsel, de a tonnányi új feladat mellett megannyi új ellenféllel is összeakaszthatjuk benne a bajszunkat.', 'img/horizon1.jpg', 'img/horizon2.jpg', 'img/horizon3.jpg', 'Szerezd be most egy minden eddiginél tartalmasabb kiadásban a Killzone fejlesztőinek különleges TPS-', 'Bújj Aloy bőrébe, és fedezd fel a civilizáció halálát, melyet óriási gépszörnyetegek idéztek elő!', 'Töltsd be az új kiegészítőt, és utazz el ismeretlen, fagyos tájakra, ahol megannyi friss kaland vár ', '', '', '', 1),
(24, '2', 'pegi16', 'Detroit Become Human', '56', '89', '6999', '2018-02-12', 'Black Friday 2020 Nyár Sony Szoftver Akció\r\n', 'Mit jelent embernek lenni? Hol húzódik a határ a gépek és az emberek élete között? David Cage és a Quantic Dream legújabb PS4 játéka ezekre a kérdésekre keresi a választ 2038 Detroit-jában. A játékban a teljesen emberszerű androidok sok ember munkáját átvették, ám némelyikük furcsán kezd viselkedni, mintha valódi érzelmei lennének. Játékosként három ilyen androidot irányíthatsz, akik morális kérdések és döntések elé kerülnek. Te határozod meg a sorsukat, és a történet alakulását!\r\n\r\nA Heavy Rain és a Beyond: Two Souls készítőinek új játéka még magasabb szintre emeli az interaktív történetmesélést, és a technikai lehetőségeket PS4 platformon, olyan filmszerű látványt nyújtva, amilyet még nem láthattunk! Minden döntésnek hosszútávú hatásai vannak, így a történet számos módon alakulhat. A profi színészi játékhoz a futurisztikus város szolgáltat lenyűgöző hátteret, a játékot pedig magyar felirattal is élvezhetjük!\r\n\r\n', 'img/detroit1.jpg', 'img/detroit2.jpg', 'img/detroit3.jpg', 'Éld át a Quantic Dream eddigi legszebb és legnagyobb szabású játékát!', 'Futurisztikus környezet, több ponton elágazó, interaktív történet', 'A nehéz döntések kihatnak a három főszereplő további sorsára', 'Profi színészi munka, filmszerű prezentáció!', 'Teljes magyar nyelvi támogatás (felirat)', '', 1),
(25, '7', 'pegi3', 'Tengerimalac', '555', '100', '999999', '2020-08-18', 'Cuki', 'Nagyon cuki, és mindig éhes.', 'img/piggy.jpg', 'img/pigg.jpg', 'img/gpig.jpg', 'Szereti:', 'ubit', 'répát', 'salit', 'tápot', 'füvet', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vevok`
--

CREATE TABLE `vevok` (
  `id` int(9) NOT NULL,
  `vevonev` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `cim` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `telefon` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `szallitasicim` varchar(100) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `vevok`
--

INSERT INTO `vevok` (`id`, `vevonev`, `email`, `cim`, `telefon`, `szallitasicim`) VALUES
(1, 'erdei panna', 'huino.akky@gmail.com', '', '06303861362', 'Csuka u. 20'),
(2, 'erdei panna', 'huino.akky@gmail.com', '', '06303861362', 'Csuka u. 20'),
(3, 'erdei panna', 'huino.akky@gmail.com', '', 'huino.akky@gmail.com', 'Csuka u. 20'),
(4, 'erdei panna', 'huino.akky@gmail.com', '', '06303861362', 'Csuka u. 20'),
(5, 'erdei panna', 'huino.akky@gmail.com', '', '06303861362', 'Csuka u. 20'),
(6, 'erdei panna', 'huino.akky@gmail.com', '', '06303861362', 'Csuka u. 20'),
(7, 'Akky', 'valami@valami.hu', '', '1202022020', 'dqwewqjeiqw u.  0.'),
(8, 'Most', 'most.most@most.hu', '', '324324242432', 'pupi u. 20'),
(9, 'erdei panna', 'huino.akky@gmail.com', '', 'huino.akky@gmail.com', 'Csuka u. 20'),
(10, 'erdei panna', 'huino.akky@gmail.com', '', 'huino.akky@gmail.com', 'Csuka u. 20'),
(11, 'Most', 'huino.akky@gmail.com', '', '2131313131', 'pupi u. 20'),
(12, 'Most', 'huino.akky@gmail.com', '', '2131313131', 'pupi u. 20'),
(13, 'Pupi', 'pipi.pupi.pu', '', '1323132131', 'pupi u. 20'),
(14, 'Kisrossz', 'malac@gmail.com', '', '0011001100', 'pupi u. 20'),
(15, 'Kisrossz', 'malac@gmail.com', '', '0011001100', 'pupi u. 20'),
(16, 'erdei panna', 'huino.akky@gmail.com', '', '101303031030', 'Csuka u. 20'),
(17, 'erdei panna', 'huino.akky@gmail.com', '', '101303031030', 'Csuka u. 20'),
(18, 'erdei panna', 'huino.akky@gmail.com', '', '101303031030', 'Csuka u. 20'),
(19, 'erdei panna', 'huino.akky@gmail.com', '', '101303031030', 'Csuka u. 20'),
(20, 'erdei panna', 'huino.akky@gmail.com', '', '101303031030', 'Csuka u. 20'),
(21, 'Pupi', 'huino.akky@gmail.com', '', 'huino.akky@gmail.com', 'Csuka u. 20'),
(22, 'Akky', 'huino.akky@gmail.com', '', '06303861362', 'Csuka U. 20.'),
(23, 'Akky', 'huino.akky@gmail.com', '', '1202022020', 'Csuka U. 20.'),
(24, 'Erdei Panna', 'huino.akky@gmail.com', '', '101303031030', 'Csuka U. 20.'),
(25, 'Erdei Panna', 'huino.akky@gmail.com', '', '101303031030', 'Csuka U. 20.'),
(26, 'Erdei Panna', 'huino.akky@gmail.com', '', '101303031030', 'Csuka U. 20.'),
(27, 'Erdei Panna', 'huino.akky@gmail.com', '', '2131313131', 'Csuka U. 20.'),
(28, 'Kisrossz', 'dfsafasdsada@gmail.com', '', '23123131131', 'fsdfstgab vygggyg gfgfgdgdy');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `adatok`
--
ALTER TABLE `adatok`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `hirek`
--
ALTER TABLE `hirek`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `kategoriak`
--
ALTER TABLE `kategoriak`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `kivansaglista`
--
ALTER TABLE `kivansaglista`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `rendelesek`
--
ALTER TABLE `rendelesek`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `rend_termekek`
--
ALTER TABLE `rend_termekek`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `tajekoztato`
--
ALTER TABLE `tajekoztato`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `termekek`
--
ALTER TABLE `termekek`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `vevok`
--
ALTER TABLE `vevok`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `adatok`
--
ALTER TABLE `adatok`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `hirek`
--
ALTER TABLE `hirek`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT a táblához `kategoriak`
--
ALTER TABLE `kategoriak`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT a táblához `kivansaglista`
--
ALTER TABLE `kivansaglista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `rendelesek`
--
ALTER TABLE `rendelesek`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT a táblához `rend_termekek`
--
ALTER TABLE `rend_termekek`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT a táblához `tajekoztato`
--
ALTER TABLE `tajekoztato`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `termekek`
--
ALTER TABLE `termekek`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT a táblához `vevok`
--
ALTER TABLE `vevok`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
