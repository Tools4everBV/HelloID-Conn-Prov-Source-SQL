SQL is een computertaal voor relationele databasemanagementsystemen. Met behulp van een connector kan je SQL aan de identity & access management (IAM)-oplossing HelloID van Tools4ever koppelen. Zo kan HelloID informatie ophalen uit SQL-databases als aanvullende stap bij het in-, uit- en doorstroomproces. Of SQL inzetten als extra bronconnector voor het ophalen van additionele gegevens uit databases ter aanvulling van de data die beschikbaar is in je HRM-systeem. In dit artikel lees je meer over deze koppelingen en de mogelijkheden die zij bieden.  

## Wat is SQL

SQL staat voor Structured Query Language. Het gaat om een programmeertaal die wordt gebruikt voor het beheren van en communicatie met SQL-databases, wat ook wel relationele databases worden genoemd. Diverse relationele databasebeheerprogramma’s maken gebruik van SQL, waaronder Microsoft Office Access, MySQL, Oracle Database en IBM Db2. De taal is gestandaardiseerd en maakt het onder meer mogelijk gegevens op te vragen, toe te voegen of aan te passen in een relationele database. Prettig aan SQL is dat de taal in tegenstelling tot veel andere computertalen eenvoudig leesbaar en begrijpbaar is, zelfs voor beginners. 

## Waarom is SQL koppeling handig?

Bedrijven slaan allerlei gegevens op in SQL-databases, die voor zeer diverse doelen inzetbaar zijn. Zo kan je een SQL-database door een applicatie laten gebruiken voor het vastleggen van alle accounts die binnen je organisatie in gebruik zijn. Denk echter ook aan het vastleggen van historische gegevens in een SQL-database, waarbij de database als een soort logging repository dient. Je kunt in een SQL-database ook allerlei gegevens opslaan die je Human Resource Management (HRM)-systeem ondersteunen, zoals aanvullende persoonsgegevens.

De SQL connector maakt een koppeling met veelvoorkomende systemen mogelijk, waaronder Active Directory/Entra ID. Meer details over de koppeling met deze en andere bronsystemen vind je verderop in het artikel.

## HelloID voor SQL helpt je met

* **Verhogen van de efficiëntie:** De koppeling tussen je bron- en doelsystemen en SQL via HelloID stelt je in staat tot het sneller aanmaken van accounts en sneller terugkoppelen van eventuele data naar een SQL-database. Je verhoogt zo de efficiëntie, waardoor gebruikers sneller over de benodigde accounts en autorisaties beschikken.

* **Geen losse scripts meer nodig:** Data ophalen uit of gegevens juist terugkoppelen naar een SQL-database is iets waarvoor traditioneel wordt vertrouwd op scripts. Afhankelijk van je IT-omgeving gebruik je al snel een scala aan losse scripts. Dit zorgt niet alleen voor complexiteit, maar is ook foutgevoelig. Dankzij de integratie van je bron- en doelsystemen en SQL via HelloID heb je geen losse scripts meer nodig. 

* **Foutloos accountbeheer:** De koppeling tilt het beheer van accounts en autorisaties naar een hoger niveau. Zo zorgt HelloID dat gebruikers automatisch over de juiste accounts beschikken en de juiste autorisaties toegewezen krijgen. Prettig, want fouten hierbij kunnen de productiviteit ernstig aantasten. Wie immers niet over de juiste middelen en/of toegang beschikt, kan zijn werk niet optimaal uitvoeren. 

* **Accountbeheer aan je IDU-proces koppelen:** Het personeelsbestand van iedere organisatie is continu in beweging. Zo stromen nieuwe medewerkers in, stromen bestaande gebruikers door naar een nieuwe functie of stromen werknemers waarvan het dienstverband afloopt uit. Dankzij de integratie met SQL koppel je het IDU-proces aan accountbeheer, en zorg je dat accounts en autorisaties naadloos meebewegen met ontwikkelingen in je personeelsbestand.

* **Verbeterde serviceniveaus en beveiliging:** De koppeling tussen je bronsystemen en SQL tilt het beheer van accounts en autorisaties naar een hoger niveau. Dit biedt onder meer grote voordelen met het oog op de digitale veiligheid van zowel je organisatie als assets. Zo voorkom je dat accounts van voormalig werknemers onbedoeld actief blijven of je autorisaties niet tijdig intrekt. Belangrijk, want beide fouten kunnen aanvallers in de kaart spelen en onnodige kansen bieden. Hoe meer autorisaties aan een account zijn toegewezen, hoe verder een aanvaller zich over je netwerk kan verspreiden en schade kan aanrichten. Je verbetert met de koppeling tegelijkertijd je serviceniveau. Je kunt onder meer gebruikers sneller op weg helpen en ondersteunen, terwijl werknemers optimaal productief kunnen zijn doordat zij altijd over de juiste accounts en autorisaties beschikken. Tegelijkertijd ben je minder tijd kwijt aan het corrigeren van vermijdbare fouten. 

## Hoe HelloID integreert met SQL

HelloID kan SQL op diverse manieren inzetten. De IAM-oplossing koppelt SQL primair als doelsysteem, waarbij de SQL-connector een aanvulling vormt op een Active Directory- of Entra ID-connector. In dit geval kan je bijvoorbeeld informatie terugschrijven naar een SQL-database, zoals het account dat voor een nieuwe gebruiker is gecreëerd.

| **Wijziging in bronsysteem** |	**Procedure in SQL** | 
| ---------------------------- | --------------------- | 
| **Nieuwe medewerker** |	Indien een nieuwe medewerker in dienst treedt maakt HelloID automatisch in je doelsystemen de benodigde accounts aan en kent de juiste autorisaties toe. Leg je in een SQL-database bijvoorbeeld alle accounts vast die binnen je organisatie bestaan? Dan koppelt HelloID via de SQL-connector deze informatie terug naar de SQL-database.|
| **Andere functie medewerker** | Indien de functie van een medewerker verandert, is het goed mogelijk dat deze gebruiker andere autorisaties en/of accounts nodig heeft. HelloID kan dankzij de SQL-connector deze wijzigingen doorvoeren en dit direct verwerken in de SQL-databases waarin je deze informatie opslaat. |
| **Medewerker treedt uit dienst** | HelloID monitort het dienstverband van werknemers en merkt dan ook direct op indien een medewerker uit dienst treedt. De IAM-oplossing blokkeert in dit geval automatisch het gebruikersaccount van de werknemer in je doelsystemen, en koppelt dit dankzij de SQL-connector terug naar relevante SQL-databases. Zo zorg je dat de informatie in je databases up-to-date blijft en heb je hiernaar geen omkijken.|

Je kunt SQL ook als bronsysteem inzetten, waarbij je additionele gegevens ophaalt uit een SQL-database. Zo vul je de gegevens aan waarover HelloID al beschikt vanuit je overige bronsystemen, zoals Microsoft Active Directory of Entra ID.

| **Wijziging in bronsysteem** |	**Procedure in SQL** | 
| ---------------------------- | --------------------- | 
| **Nieuwe medewerker** |	Indien een nieuwe medewerker in dienst treedt, haalt HelloID uit je bronsysteem allerlei informatie op. In sommige gevallen is er aanvullende informatie beschikbaar in een SQL-database, zoals relevante persoonsgegevens. De beschikbare aanvullende gegevens zijn sterk afhankelijk van de SQL-databases waarvan je gebruik maakt. |
| **Andere functie medewerker** |	Indien de functie van een medewerker wijzigt, brengt dit in veel gevallen veranderingen in accounts en autorisaties met zich mee. HelloID kan vanuit SQL-databases aanvullende informatie ophalen voor het uitvoeren van dit proces. Denk hierbij aan informatie over de nieuwe afdeling van een medewerker en de systemen waarvan deze afdeling gebruik maakt. |
| **Medewerker treedt uit dienst** |	HelloID houdt het dienstverband van werknemers in het oog, en detecteert indien deze afloopt. Voor het intrekken van de autorisaties van de uitstromende gebruiker en blokkeren van gebruikersaccounts in doelsystemen kan de IAM-oplossing indien nodig aanvullende informatie ophalen uit SQL-databases.|

## Gegevensuitwissseling op maat

Voor het integreren van een SQL-database met je bron- en/of doelsystemen moet je de SQL-connector juist configureren. In de configuratie geef je onder meer aan om welke specifieke SQL-database het gaat. Aangezien SQL-databases in veel gevallen on-premises draaien, maakt de SQL-connector daarbij standaard gebruik van de HelloID Agent. 

Daarnaast bepaal je tot in detail welke informatie HelloID via de SQL-connector opvraagt of juist moet wegschrijven. Hiervoor geef je per lifecycle event de juiste SQL-query op, die HelloID als opdracht uitvoert. 

## SQL via HelloID koppelen met systemen

Met behulp van HelloID kan je SQL met diverse systemen integreren, waarbij je afhankelijk van je toepassing SQL als bron- of doelsysteem kunt inzetten. Met behulp van de integraties versterk je het beheer van zowel gebruikersaccounts als autorisaties. Een voorbeeld van een veelvoorkomende integratie is: 

*	**Microsoft Active Directory/Entra ID - SQL koppeling:** In dit geval koppel je één of meerdere SQL-databases met behulp van een connector via HelloID aan Microsoft Active Directory. Dit biedt meerdere mogelijkheden. Zo kan je enerzijds informatie ophalen uit je SQL-databases die een aanvulling op de gegevens die HelloID verkrijgt vanuit Microsoft Active Directory of Entra ID. Anderzijds kan je informatie wegschrijven naar een SQL-database, bijvoorbeeld indien je hierin accounts opslaat. 

HelloID ondersteunt ruim 200 connectoren. De IAM-oplossing biedt dan ook een breed scala aan integratiemogelijkheden tussen je bron- en doelsystemen en allerlei andere toepassingen zoals SQL-databases. Ons aanbod aan connectoren en integraties groeit continu. Zo maken we het mogelijk HelloID met nagenoeg alle populaire systemen te integreren. 
