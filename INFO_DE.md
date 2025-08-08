SQL ist eine Computersprache für **relationale Datenbankmanagementsysteme**. Mit einem Connector können Sie **SQL** mit der **Identity- & Access-Management-Lösung (IAM)** **HelloID** von Tools4ever verbinden. So kann HelloID Informationen aus SQL-Datenbanken abrufen, als ergänzenden Schritt im **Joiner-Mover-Leaver-Prozess** (Eintritt, Funktionswechsel, Austritt). Oder Sie setzen SQL als zusätzliche **Quellintegration** ein, um weitere Daten aus Datenbanken zu laden und damit die Informationen aus Ihrem HRM-System zu ergänzen. In diesem Artikel erfahren Sie mehr über diese Integrationen und ihre Möglichkeiten.

## Was ist SQL

SQL steht für **Structured Query Language**. Es handelt sich um eine Programmiersprache, die zur Verwaltung und Kommunikation mit SQL-Datenbanken verwendet wird, auch bekannt als **relationale Datenbanken**. Zahlreiche relationale Datenbank-Managementsysteme nutzen SQL, darunter Microsoft Office Access, MySQL, Oracle Database und IBM Db2. Die Sprache ist standardisiert und erlaubt das **Abfragen**, **Hinzufügen** und **Ändern** von Daten in einer relationalen Datenbank. Ein besonderer Vorteil: Anders als viele andere Programmiersprachen ist SQL leicht lesbar und verständlich, selbst für Einsteiger.

## Warum ist eine SQL-Integration sinnvoll?

Unternehmen speichern eine Vielzahl von Informationen in SQL-Datenbanken, die für sehr unterschiedliche Zwecke genutzt werden. Eine Anwendung kann beispielsweise alle in Ihrer Organisation existierenden Benutzerkonten in einer SQL-Datenbank hinterlegen. Ebenso ist die Speicherung historischer Daten möglich, bei der die Datenbank als **Logging Repository** dient. Auch unterstützende Daten für Ihr **Human Resource Management (HRM)**-System, wie erweiterte personenbezogene Informationen, können dort abgelegt werden.

Der **SQL-Connector** ermöglicht die Anbindung an viele gängige Systeme, darunter **Microsoft Active Directory** bzw. **Entra ID**. Details zur Integration mit diesen und weiteren Quellsystemen finden Sie weiter unten.

## HelloID für SQL unterstützt Sie bei

* **Steigerung der Effizienz:** Die Anbindung Ihrer Quell- und Zielsysteme an SQL über HelloID beschleunigt die Kontoerstellung und Rückmeldung von Daten in eine SQL-Datenbank. Mitarbeiter erhalten schneller die benötigten Konten und Berechtigungen.  
* **Kein Bedarf mehr für Einzelskripte:** Der Datenabruf aus oder das Zurückschreiben in eine SQL-Datenbank wurde traditionell über individuelle Skripte erledigt. Je nach IT-Umgebung entsteht schnell eine Vielzahl separater Skripte, komplex und fehleranfällig. Die Integration über HelloID macht dies überflüssig.  
* **Fehlerfreies Account Management:** HelloID stellt sicher, dass Benutzer automatisch über die benötigten Konten und Zugriffsrechte verfügen. Fehler an dieser Stelle können die Produktivität erheblich beeinträchtigen.  
* **Verknüpfung mit Ihrem IDU-Prozess (Joiner-Mover-Leaver):** Dank der SQL-Integration lassen sich automatisch Konten und Rechte anpassen, wenn Mitarbeiter neu eintreten, intern wechseln oder das Unternehmen verlassen.  
* **Verbesserte Service Levels und Sicherheit:** Die Integration zwischen Quellsystemen und SQL sorgt dafür, dass verwaiste Konten vermieden und Berechtigungen rechtzeitig entzogen werden. Das schützt Ihr Unternehmen vor unnötigen Angriffsflächen und verbessert gleichzeitig den internen Support. Nutzer arbeiten stets mit vollständigen und korrekten Zugriffsrechten.

## Wie HelloID mit SQL integriert

HelloID kann SQL auf unterschiedliche Weise einsetzen. Primär wird SQL als **Zielsystem** angebunden, oft als Ergänzung zu einem **Active Directory**- oder **Entra ID**-Connector. So können Sie etwa die in Zielsystemen erstellten Benutzerkonten in eine SQL-Datenbank zurückschreiben.

| **Änderung im Quellsystem** | **Vorgang in SQL** |
|-----------------------------|--------------------|
| **Neuer Mitarbeiter** | Tritt ein neuer Mitarbeiter ein, erstellt HelloID automatisch die erforderlichen Konten und weist passende Berechtigungen zu. Falls Sie in einer SQL-Datenbank alle Konten erfassen, wird diese Information über den SQL-Connector zurückgeschrieben. |
| **Funktionswechsel** | Ändert sich die Position eines Mitarbeiters, können neue Berechtigungen oder Konten erforderlich sein. HelloID aktualisiert diese und schreibt die Änderungen in die SQL-Datenbank. |
| **Austritt** | Verlässt ein Mitarbeiter das Unternehmen, sperrt HelloID automatisch dessen Konten in den Zielsystemen und vermerkt den Vorgang in den relevanten SQL-Datenbanken. |

SQL lässt sich auch als **Quellsystem** nutzen, um zusätzliche Informationen zum bestehenden Datenbestand in HelloID zu ergänzen.

| **Änderung im Quellsystem** | **Vorgang mit SQL** |
|-----------------------------|---------------------|
| **Neuer Mitarbeiter** | HelloID zieht zunächst die relevanten Daten aus dem Quellsystem. Wenn in einer SQL-Datenbank zusätzliche Angaben vorhanden sind, wie zum Beispiel persönliche Zusatzinformationen, können diese ergänzt werden. |
| **Funktionswechsel** | Änderungen der Position bringen oft Änderungen bei Zugriffsrechten mit sich. HelloID kann dazu abteilungs- oder systemspezifische Zusatzdaten aus einer SQL-Datenbank abrufen. |
| **Austritt** | Beim Offboarding kann HelloID ergänzende Informationen aus SQL abrufen, um Berechtigungen gezielt zu entziehen oder Konten in Zielsystemen zu sperren. |

## Maßgeschneiderter Datenaustausch

Für die Integration einer SQL-Datenbank mit Ihren Quell- und Zielsystemen muss der SQL-Connector korrekt konfiguriert werden. Sie definieren unter anderem, welche konkrete SQL-Datenbank angebunden wird. Da SQL-Datenbanken oft **On-Premises** betrieben werden, verwendet der SQL-Connector standardmäßig den **HelloID Agent**.

Zudem legen Sie exakt fest, welche Informationen HelloID per SQL-Connector auslesen oder zurückschreiben soll. Für jedes **Lifecycle Event** geben Sie die entsprechende SQL-Query an, die HelloID ausführt.

## SQL über HelloID mit Systemen verbinden

Mit HelloID können Sie SQL sowohl als Quell- als auch als Zielsystem in Ihre Systemlandschaft integrieren. So optimieren Sie das Management von Benutzerkonten und Berechtigungen. Ein Beispiel für eine häufige Integration ist:

* **Microsoft Active Directory / Entra ID – SQL-Integration:** Koppeln Sie eine oder mehrere SQL-Datenbanken über HelloID mit Active Directory. Sie können so Daten aus SQL ergänzend zu den AD-/Entra-Informationen abrufen oder Daten, wie zum Beispiel erstellte Konten, in eine SQL-Datenbank zurückschreiben.

HelloID unterstützt über **200 Konnektoren** und bietet eine breite Auswahl an Integrationen zwischen Ihren Quell- und Zielsystemen sowie weiteren Anwendungen wie SQL-Datenbanken. Das Angebot an Konnektoren und Integrationen wird stetig erweitert, um die Anbindung an nahezu alle gängigen Unternehmenssysteme zu ermöglichen.
