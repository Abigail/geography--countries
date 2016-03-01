#!/usr/bin/perl

use strict;
use warnings;
no  warnings 'syntax';

use Test::More 'no_plan';

BEGIN {
    use_ok ("Geography::Countries");
}


# Antarctica
is scalar country ("AQ"),  "Antarctica", "'AQ'";

# Bouvet Island
is scalar country ("BV"),  "Bouvet Island", "'BV'";

# British Indian Ocean Territory
is scalar country ("IO"),  "British Indian Ocean Territory", "'IO'";

# Christmas Island
is scalar country ("CX"),  "Christmas Island", "'CX'";

# Cocos (keeling) Islands
is scalar country ("CC"),  "Cocos (keeling) Islands", "'CC'";

# French Southern Territories
is scalar country ("TF"),  "French Southern Territories", "'TF'";

# Heard Island And Mcdonald Islands
is scalar country ("HM"),  "Heard Island And Mcdonald Islands", "'HM'";

# Mayotte
is scalar country ("YT"),  "Mayotte", "'YT'";

# South Georgia And The South Sandwich Islands
is scalar country ("GS"),  "South Georgia And The South Sandwich Islands", "'GS'";

# United States Minor Outlying Islands
is scalar country ("UM"),  "United States Minor Outlying Islands", "'UM'";

# Afghanistan
is scalar country ("AF"),  "Afghanistan", "'AF'";
is scalar country ("AFG"), "Afghanistan", "'AFG'";
is scalar country ("004"), "Afghanistan", "'004'";

# Albania
is scalar country ("AL"),  "Albania", "'AL'";
is scalar country ("ALB"), "Albania", "'ALB'";
is scalar country ("008"), "Albania", "'008'";

# Algeria
is scalar country ("DZ"),  "Algeria", "'DZ'";
is scalar country ("DZA"), "Algeria", "'DZA'";
is scalar country ("012"), "Algeria", "'012'";

# American Samoa
is scalar country ("AS"),  "American Samoa", "'AS'";
is scalar country ("ASM"), "American Samoa", "'ASM'";
is scalar country ("016"), "American Samoa", "'016'";

# Andorra
is scalar country ("AD"),  "Andorra", "'AD'";
is scalar country ("AND"), "Andorra", "'AND'";
is scalar country ("020"), "Andorra", "'020'";

# Angola
is scalar country ("AO"),  "Angola", "'AO'";
is scalar country ("AGO"), "Angola", "'AGO'";
is scalar country ("024"), "Angola", "'024'";

# Antigua and Barbuda
is scalar country ("AG"),  "Antigua and Barbuda", "'AG'";
is scalar country ("ATG"), "Antigua and Barbuda", "'ATG'";
is scalar country ("028"), "Antigua and Barbuda", "'028'";

# Azerbaijan
is scalar country ("AZ"),  "Azerbaijan", "'AZ'";
is scalar country ("AZE"), "Azerbaijan", "'AZE'";
is scalar country ("031"), "Azerbaijan", "'031'";

# Argentina
is scalar country ("AR"),  "Argentina", "'AR'";
is scalar country ("ARG"), "Argentina", "'ARG'";
is scalar country ("032"), "Argentina", "'032'";

# Australia
is scalar country ("AU"),  "Australia", "'AU'";
is scalar country ("AUS"), "Australia", "'AUS'";
is scalar country ("036"), "Australia", "'036'";

# Austria
is scalar country ("AT"),  "Austria", "'AT'";
is scalar country ("AUT"), "Austria", "'AUT'";
is scalar country ("040"), "Austria", "'040'";

# Bahamas
is scalar country ("BS"),  "Bahamas", "'BS'";
is scalar country ("BHS"), "Bahamas", "'BHS'";
is scalar country ("044"), "Bahamas", "'044'";

# Bahrain
is scalar country ("BH"),  "Bahrain", "'BH'";
is scalar country ("BHR"), "Bahrain", "'BHR'";
is scalar country ("048"), "Bahrain", "'048'";

# Bangladesh
is scalar country ("BD"),  "Bangladesh", "'BD'";
is scalar country ("BGD"), "Bangladesh", "'BGD'";
is scalar country ("050"), "Bangladesh", "'050'";

# Armenia
is scalar country ("AM"),  "Armenia", "'AM'";
is scalar country ("ARM"), "Armenia", "'ARM'";
is scalar country ("051"), "Armenia", "'051'";

# Barbados
is scalar country ("BB"),  "Barbados", "'BB'";
is scalar country ("BRB"), "Barbados", "'BRB'";
is scalar country ("052"), "Barbados", "'052'";

# Belgium
is scalar country ("BE"),  "Belgium", "'BE'";
is scalar country ("BEL"), "Belgium", "'BEL'";
is scalar country ("056"), "Belgium", "'056'";

# Bermuda
is scalar country ("BM"),  "Bermuda", "'BM'";
is scalar country ("BMU"), "Bermuda", "'BMU'";
is scalar country ("060"), "Bermuda", "'060'";

# Bhutan
is scalar country ("BT"),  "Bhutan", "'BT'";
is scalar country ("BTN"), "Bhutan", "'BTN'";
is scalar country ("064"), "Bhutan", "'064'";

# Bolivia
is scalar country ("BO"),  "Bolivia", "'BO'";
is scalar country ("BOL"), "Bolivia", "'BOL'";
is scalar country ("068"), "Bolivia", "'068'";

# Bosnia and Herzegovina
is scalar country ("BA"),  "Bosnia and Herzegovina", "'BA'";
is scalar country ("BIH"), "Bosnia and Herzegovina", "'BIH'";
is scalar country ("070"), "Bosnia and Herzegovina", "'070'";

# Botswana
is scalar country ("BW"),  "Botswana", "'BW'";
is scalar country ("BWA"), "Botswana", "'BWA'";
is scalar country ("072"), "Botswana", "'072'";

# Brazil
is scalar country ("BR"),  "Brazil", "'BR'";
is scalar country ("BRA"), "Brazil", "'BRA'";
is scalar country ("076"), "Brazil", "'076'";

# Belize
is scalar country ("BZ"),  "Belize", "'BZ'";
is scalar country ("BLZ"), "Belize", "'BLZ'";
is scalar country ("084"), "Belize", "'084'";

# Solomon Islands
is scalar country ("SB"),  "Solomon Islands", "'SB'";
is scalar country ("SLB"), "Solomon Islands", "'SLB'";
is scalar country ("090"), "Solomon Islands", "'090'";

# British Virgin Islands
is scalar country ("VG"),  "British Virgin Islands", "'VG'";
is scalar country ("VGB"), "British Virgin Islands", "'VGB'";
is scalar country ("092"), "British Virgin Islands", "'092'";

# Brunei Darussalam
is scalar country ("BN"),  "Brunei Darussalam", "'BN'";
is scalar country ("BRN"), "Brunei Darussalam", "'BRN'";
is scalar country ("096"), "Brunei Darussalam", "'096'";

# Bulgaria
is scalar country ("BG"),  "Bulgaria", "'BG'";
is scalar country ("BGR"), "Bulgaria", "'BGR'";
is scalar country ("100"), "Bulgaria", "'100'";

# Myanmar
is scalar country ("MM"),  "Myanmar", "'MM'";
is scalar country ("MMR"), "Myanmar", "'MMR'";
is scalar country ("104"), "Myanmar", "'104'";

# Burundi
is scalar country ("BI"),  "Burundi", "'BI'";
is scalar country ("BDI"), "Burundi", "'BDI'";
is scalar country ("108"), "Burundi", "'108'";

# Belarus
is scalar country ("BY"),  "Belarus", "'BY'";
is scalar country ("BLR"), "Belarus", "'BLR'";
is scalar country ("112"), "Belarus", "'112'";

# Cambodia
is scalar country ("KH"),  "Cambodia", "'KH'";
is scalar country ("KHM"), "Cambodia", "'KHM'";
is scalar country ("116"), "Cambodia", "'116'";

# Cameroon
is scalar country ("CM"),  "Cameroon", "'CM'";
is scalar country ("CMR"), "Cameroon", "'CMR'";
is scalar country ("120"), "Cameroon", "'120'";

# Canada
is scalar country ("CA"),  "Canada", "'CA'";
is scalar country ("CAN"), "Canada", "'CAN'";
is scalar country ("124"), "Canada", "'124'";

# Cape Verde
is scalar country ("CV"),  "Cape Verde", "'CV'";
is scalar country ("CPV"), "Cape Verde", "'CPV'";
is scalar country ("132"), "Cape Verde", "'132'";

# Cayman Islands
is scalar country ("KY"),  "Cayman Islands", "'KY'";
is scalar country ("CYM"), "Cayman Islands", "'CYM'";
is scalar country ("136"), "Cayman Islands", "'136'";

# Central African Republic
is scalar country ("CF"),  "Central African Republic", "'CF'";
is scalar country ("CAF"), "Central African Republic", "'CAF'";
is scalar country ("140"), "Central African Republic", "'140'";

# Sri Lanka
is scalar country ("LK"),  "Sri Lanka", "'LK'";
is scalar country ("LKA"), "Sri Lanka", "'LKA'";
is scalar country ("144"), "Sri Lanka", "'144'";

# Chad
is scalar country ("TD"),  "Chad", "'TD'";
is scalar country ("TCD"), "Chad", "'TCD'";
is scalar country ("148"), "Chad", "'148'";

# Chile
is scalar country ("CL"),  "Chile", "'CL'";
is scalar country ("CHL"), "Chile", "'CHL'";
is scalar country ("152"), "Chile", "'152'";

# China
is scalar country ("CN"),  "China", "'CN'";
is scalar country ("CHN"), "China", "'CHN'";
is scalar country ("156"), "China", "'156'";

# Taiwan Province of China
is scalar country ("TW"),  "Taiwan Province of China", "'TW'";
is scalar country ("TWN"), "Taiwan Province of China", "'TWN'";
is scalar country ("158"), "Taiwan Province of China", "'158'";

# Colombia
is scalar country ("CO"),  "Colombia", "'CO'";
is scalar country ("COL"), "Colombia", "'COL'";
is scalar country ("170"), "Colombia", "'170'";

# Comoros
is scalar country ("KM"),  "Comoros", "'KM'";
is scalar country ("COM"), "Comoros", "'COM'";
is scalar country ("174"), "Comoros", "'174'";

# Congo
is scalar country ("CG"),  "Congo", "'CG'";
is scalar country ("COG"), "Congo", "'COG'";
is scalar country ("178"), "Congo", "'178'";

# Democratic Republic of the Congo
is scalar country ("CD"),  "Democratic Republic of the Congo", "'CD'";
is scalar country ("COD"), "Democratic Republic of the Congo", "'COD'";
is scalar country ("180"), "Democratic Republic of the Congo", "'180'";

# Cook Islands
is scalar country ("CK"),  "Cook Islands", "'CK'";
is scalar country ("COK"), "Cook Islands", "'COK'";
is scalar country ("184"), "Cook Islands", "'184'";

# Costa Rica
is scalar country ("CR"),  "Costa Rica", "'CR'";
is scalar country ("CRI"), "Costa Rica", "'CRI'";
is scalar country ("188"), "Costa Rica", "'188'";

# Croatia
is scalar country ("HR"),  "Croatia", "'HR'";
is scalar country ("HRV"), "Croatia", "'HRV'";
is scalar country ("191"), "Croatia", "'191'";

# Cuba
is scalar country ("CU"),  "Cuba", "'CU'";
is scalar country ("CUB"), "Cuba", "'CUB'";
is scalar country ("192"), "Cuba", "'192'";

# Cyprus
is scalar country ("CY"),  "Cyprus", "'CY'";
is scalar country ("CYP"), "Cyprus", "'CYP'";
is scalar country ("196"), "Cyprus", "'196'";

# Czech Republic
is scalar country ("CZ"),  "Czech Republic", "'CZ'";
is scalar country ("CZE"), "Czech Republic", "'CZE'";
is scalar country ("203"), "Czech Republic", "'203'";

# Benin
is scalar country ("BJ"),  "Benin", "'BJ'";
is scalar country ("BEN"), "Benin", "'BEN'";
is scalar country ("204"), "Benin", "'204'";

# Denmark
is scalar country ("DK"),  "Denmark", "'DK'";
is scalar country ("DNK"), "Denmark", "'DNK'";
is scalar country ("208"), "Denmark", "'208'";

# Dominica
is scalar country ("DM"),  "Dominica", "'DM'";
is scalar country ("DMA"), "Dominica", "'DMA'";
is scalar country ("212"), "Dominica", "'212'";

# Dominican Republic
is scalar country ("DO"),  "Dominican Republic", "'DO'";
is scalar country ("DOM"), "Dominican Republic", "'DOM'";
is scalar country ("214"), "Dominican Republic", "'214'";

# Ecuador
is scalar country ("EC"),  "Ecuador", "'EC'";
is scalar country ("ECU"), "Ecuador", "'ECU'";
is scalar country ("218"), "Ecuador", "'218'";

# El Salvador
is scalar country ("SV"),  "El Salvador", "'SV'";
is scalar country ("SLV"), "El Salvador", "'SLV'";
is scalar country ("222"), "El Salvador", "'222'";

# Equatorial Guinea
is scalar country ("GQ"),  "Equatorial Guinea", "'GQ'";
is scalar country ("GNQ"), "Equatorial Guinea", "'GNQ'";
is scalar country ("226"), "Equatorial Guinea", "'226'";

# Ethiopia
is scalar country ("ET"),  "Ethiopia", "'ET'";
is scalar country ("ETH"), "Ethiopia", "'ETH'";
is scalar country ("231"), "Ethiopia", "'231'";

# Eritrea
is scalar country ("ER"),  "Eritrea", "'ER'";
is scalar country ("ERI"), "Eritrea", "'ERI'";
is scalar country ("232"), "Eritrea", "'232'";

# Estonia
is scalar country ("EE"),  "Estonia", "'EE'";
is scalar country ("EST"), "Estonia", "'EST'";
is scalar country ("233"), "Estonia", "'233'";

# Faeroe Islands
is scalar country ("FO"),  "Faeroe Islands", "'FO'";
is scalar country ("FRO"), "Faeroe Islands", "'FRO'";
is scalar country ("234"), "Faeroe Islands", "'234'";

# Falkland Islands (Malvinas)
is scalar country ("FK"),  "Falkland Islands (Malvinas)", "'FK'";
is scalar country ("FLK"), "Falkland Islands (Malvinas)", "'FLK'";
is scalar country ("238"), "Falkland Islands (Malvinas)", "'238'";

# Fiji
is scalar country ("FJ"),  "Fiji", "'FJ'";
is scalar country ("FJI"), "Fiji", "'FJI'";
is scalar country ("242"), "Fiji", "'242'";

# Finland
is scalar country ("FI"),  "Finland", "'FI'";
is scalar country ("FIN"), "Finland", "'FIN'";
is scalar country ("246"), "Finland", "'246'";

# France
is scalar country ("FR"),  "France", "'FR'";
is scalar country ("FRA"), "France", "'FRA'";
is scalar country ("250"), "France", "'250'";

# French Guiana
is scalar country ("GF"),  "French Guiana", "'GF'";
is scalar country ("GUF"), "French Guiana", "'GUF'";
is scalar country ("254"), "French Guiana", "'254'";

# French Polynesia
is scalar country ("PF"),  "French Polynesia", "'PF'";
is scalar country ("PYF"), "French Polynesia", "'PYF'";
is scalar country ("258"), "French Polynesia", "'258'";

# Djibouti
is scalar country ("DJ"),  "Djibouti", "'DJ'";
is scalar country ("DJI"), "Djibouti", "'DJI'";
is scalar country ("262"), "Djibouti", "'262'";

# Gabon
is scalar country ("GA"),  "Gabon", "'GA'";
is scalar country ("GAB"), "Gabon", "'GAB'";
is scalar country ("266"), "Gabon", "'266'";

# Georgia
is scalar country ("GE"),  "Georgia", "'GE'";
is scalar country ("GEO"), "Georgia", "'GEO'";
is scalar country ("268"), "Georgia", "'268'";

# Gambia
is scalar country ("GM"),  "Gambia", "'GM'";
is scalar country ("GMB"), "Gambia", "'GMB'";
is scalar country ("270"), "Gambia", "'270'";

# Occupied Palestinian Territory
is scalar country ("PSE"), "Occupied Palestinian Territory", "'PSE'";
is scalar country ("275"), "Occupied Palestinian Territory", "'275'";

# Germany
is scalar country ("DE"),  "Germany", "'DE'";
is scalar country ("DEU"), "Germany", "'DEU'";
is scalar country ("276"), "Germany", "'276'";

# Ghana
is scalar country ("GH"),  "Ghana", "'GH'";
is scalar country ("GHA"), "Ghana", "'GHA'";
is scalar country ("288"), "Ghana", "'288'";

# Gibraltar
is scalar country ("GI"),  "Gibraltar", "'GI'";
is scalar country ("GIB"), "Gibraltar", "'GIB'";
is scalar country ("292"), "Gibraltar", "'292'";

# Kiribati
is scalar country ("KI"),  "Kiribati", "'KI'";
is scalar country ("KIR"), "Kiribati", "'KIR'";
is scalar country ("296"), "Kiribati", "'296'";

# Greece
is scalar country ("GR"),  "Greece", "'GR'";
is scalar country ("GRC"), "Greece", "'GRC'";
is scalar country ("300"), "Greece", "'300'";

# Greenland
is scalar country ("GL"),  "Greenland", "'GL'";
is scalar country ("GRL"), "Greenland", "'GRL'";
is scalar country ("304"), "Greenland", "'304'";

# Grenada
is scalar country ("GD"),  "Grenada", "'GD'";
is scalar country ("GRD"), "Grenada", "'GRD'";
is scalar country ("308"), "Grenada", "'308'";

# Guadeloupe
is scalar country ("GP"),  "Guadeloupe", "'GP'";
is scalar country ("GLP"), "Guadeloupe", "'GLP'";
is scalar country ("312"), "Guadeloupe", "'312'";

# Guam
is scalar country ("GU"),  "Guam", "'GU'";
is scalar country ("GUM"), "Guam", "'GUM'";
is scalar country ("316"), "Guam", "'316'";

# Guatemala
is scalar country ("GT"),  "Guatemala", "'GT'";
is scalar country ("GTM"), "Guatemala", "'GTM'";
is scalar country ("320"), "Guatemala", "'320'";

# Guinea
is scalar country ("GN"),  "Guinea", "'GN'";
is scalar country ("GIN"), "Guinea", "'GIN'";
is scalar country ("324"), "Guinea", "'324'";

# Guyana
is scalar country ("GY"),  "Guyana", "'GY'";
is scalar country ("GUY"), "Guyana", "'GUY'";
is scalar country ("328"), "Guyana", "'328'";

# Haiti
is scalar country ("HT"),  "Haiti", "'HT'";
is scalar country ("HTI"), "Haiti", "'HTI'";
is scalar country ("332"), "Haiti", "'332'";

# Holy See
is scalar country ("VA"),  "Holy See", "'VA'";
is scalar country ("VAT"), "Holy See", "'VAT'";
is scalar country ("336"), "Holy See", "'336'";

# Honduras
is scalar country ("HN"),  "Honduras", "'HN'";
is scalar country ("HND"), "Honduras", "'HND'";
is scalar country ("340"), "Honduras", "'340'";

# Hong Kong Special Administrative Region of China
is scalar country ("HK"),  "Hong Kong Special Administrative Region of China", "'HK'";
is scalar country ("HKG"), "Hong Kong Special Administrative Region of China", "'HKG'";
is scalar country ("344"), "Hong Kong Special Administrative Region of China", "'344'";

# Hungary
is scalar country ("HU"),  "Hungary", "'HU'";
is scalar country ("HUN"), "Hungary", "'HUN'";
is scalar country ("348"), "Hungary", "'348'";

# Iceland
is scalar country ("IS"),  "Iceland", "'IS'";
is scalar country ("ISL"), "Iceland", "'ISL'";
is scalar country ("352"), "Iceland", "'352'";

# India
is scalar country ("IN"),  "India", "'IN'";
is scalar country ("IND"), "India", "'IND'";
is scalar country ("356"), "India", "'356'";

# Indonesia
is scalar country ("ID"),  "Indonesia", "'ID'";
is scalar country ("IDN"), "Indonesia", "'IDN'";
is scalar country ("360"), "Indonesia", "'360'";

# Iran (Islamic Republic of)
is scalar country ("IR"),  "Iran (Islamic Republic of)", "'IR'";
is scalar country ("IRN"), "Iran (Islamic Republic of)", "'IRN'";
is scalar country ("364"), "Iran (Islamic Republic of)", "'364'";

# Iraq
is scalar country ("IQ"),  "Iraq", "'IQ'";
is scalar country ("IRQ"), "Iraq", "'IRQ'";
is scalar country ("368"), "Iraq", "'368'";

# Ireland
is scalar country ("IE"),  "Ireland", "'IE'";
is scalar country ("IRL"), "Ireland", "'IRL'";
is scalar country ("372"), "Ireland", "'372'";

# Israel
is scalar country ("IL"),  "Israel", "'IL'";
is scalar country ("ISR"), "Israel", "'ISR'";
is scalar country ("376"), "Israel", "'376'";

# Italy
is scalar country ("IT"),  "Italy", "'IT'";
is scalar country ("ITA"), "Italy", "'ITA'";
is scalar country ("380"), "Italy", "'380'";

# C\x{f4}te d'Ivoire
is scalar country ("CI"),  "C\x{f4}te d'Ivoire", "'CI'";
is scalar country ("CIV"), "C\x{f4}te d'Ivoire", "'CIV'";
is scalar country ("384"), "C\x{f4}te d'Ivoire", "'384'";

# Jamaica
is scalar country ("JM"),  "Jamaica", "'JM'";
is scalar country ("JAM"), "Jamaica", "'JAM'";
is scalar country ("388"), "Jamaica", "'388'";

# Japan
is scalar country ("JP"),  "Japan", "'JP'";
is scalar country ("JPN"), "Japan", "'JPN'";
is scalar country ("392"), "Japan", "'392'";

# Kazakhstan
is scalar country ("KZ"),  "Kazakhstan", "'KZ'";
is scalar country ("KAZ"), "Kazakhstan", "'KAZ'";
is scalar country ("398"), "Kazakhstan", "'398'";

# Jordan
is scalar country ("JO"),  "Jordan", "'JO'";
is scalar country ("JOR"), "Jordan", "'JOR'";
is scalar country ("400"), "Jordan", "'400'";

# Kenya
is scalar country ("KE"),  "Kenya", "'KE'";
is scalar country ("KEN"), "Kenya", "'KEN'";
is scalar country ("404"), "Kenya", "'404'";

# Democratic People's Republic of Korea
is scalar country ("KP"),  "Democratic People's Republic of Korea", "'KP'";
is scalar country ("PRK"), "Democratic People's Republic of Korea", "'PRK'";
is scalar country ("408"), "Democratic People's Republic of Korea", "'408'";

# Republic of Korea
is scalar country ("KR"),  "Republic of Korea", "'KR'";
is scalar country ("KOR"), "Republic of Korea", "'KOR'";
is scalar country ("410"), "Republic of Korea", "'410'";

# Kuwait
is scalar country ("KW"),  "Kuwait", "'KW'";
is scalar country ("KWT"), "Kuwait", "'KWT'";
is scalar country ("414"), "Kuwait", "'414'";

# Kyrgyzstan
is scalar country ("KG"),  "Kyrgyzstan", "'KG'";
is scalar country ("KGZ"), "Kyrgyzstan", "'KGZ'";
is scalar country ("417"), "Kyrgyzstan", "'417'";

# Lao People's Democratic Republic
is scalar country ("LA"),  "Lao People's Democratic Republic", "'LA'";
is scalar country ("LAO"), "Lao People's Democratic Republic", "'LAO'";
is scalar country ("418"), "Lao People's Democratic Republic", "'418'";

# Lebanon
is scalar country ("LB"),  "Lebanon", "'LB'";
is scalar country ("LBN"), "Lebanon", "'LBN'";
is scalar country ("422"), "Lebanon", "'422'";

# Lesotho
is scalar country ("LS"),  "Lesotho", "'LS'";
is scalar country ("LSO"), "Lesotho", "'LSO'";
is scalar country ("426"), "Lesotho", "'426'";

# Latvia
is scalar country ("LV"),  "Latvia", "'LV'";
is scalar country ("LVA"), "Latvia", "'LVA'";
is scalar country ("428"), "Latvia", "'428'";

# Liberia
is scalar country ("LR"),  "Liberia", "'LR'";
is scalar country ("LBR"), "Liberia", "'LBR'";
is scalar country ("430"), "Liberia", "'430'";

# Libyan Arab Jamahiriya
is scalar country ("LY"),  "Libyan Arab Jamahiriya", "'LY'";
is scalar country ("LBY"), "Libyan Arab Jamahiriya", "'LBY'";
is scalar country ("434"), "Libyan Arab Jamahiriya", "'434'";

# Liechtenstein
is scalar country ("LI"),  "Liechtenstein", "'LI'";
is scalar country ("LIE"), "Liechtenstein", "'LIE'";
is scalar country ("438"), "Liechtenstein", "'438'";

# Lithuania
is scalar country ("LT"),  "Lithuania", "'LT'";
is scalar country ("LTU"), "Lithuania", "'LTU'";
is scalar country ("440"), "Lithuania", "'440'";

# Luxembourg
is scalar country ("LU"),  "Luxembourg", "'LU'";
is scalar country ("LUX"), "Luxembourg", "'LUX'";
is scalar country ("442"), "Luxembourg", "'442'";

# Macau
is scalar country ("MO"),  "Macau", "'MO'";
is scalar country ("MAC"), "Macau", "'MAC'";
is scalar country ("446"), "Macau", "'446'";

# Madagascar
is scalar country ("MG"),  "Madagascar", "'MG'";
is scalar country ("MDG"), "Madagascar", "'MDG'";
is scalar country ("450"), "Madagascar", "'450'";

# Malawi
is scalar country ("MW"),  "Malawi", "'MW'";
is scalar country ("MWI"), "Malawi", "'MWI'";
is scalar country ("454"), "Malawi", "'454'";

# Malaysia
is scalar country ("MY"),  "Malaysia", "'MY'";
is scalar country ("MYS"), "Malaysia", "'MYS'";
is scalar country ("458"), "Malaysia", "'458'";

# Maldives
is scalar country ("MV"),  "Maldives", "'MV'";
is scalar country ("MDV"), "Maldives", "'MDV'";
is scalar country ("462"), "Maldives", "'462'";

# Mali
is scalar country ("ML"),  "Mali", "'ML'";
is scalar country ("MLI"), "Mali", "'MLI'";
is scalar country ("466"), "Mali", "'466'";

# Malta
is scalar country ("MT"),  "Malta", "'MT'";
is scalar country ("MLT"), "Malta", "'MLT'";
is scalar country ("470"), "Malta", "'470'";

# Martinique
is scalar country ("MQ"),  "Martinique", "'MQ'";
is scalar country ("MTQ"), "Martinique", "'MTQ'";
is scalar country ("474"), "Martinique", "'474'";

# Mauritania
is scalar country ("MR"),  "Mauritania", "'MR'";
is scalar country ("MRT"), "Mauritania", "'MRT'";
is scalar country ("478"), "Mauritania", "'478'";

# Mauritius
is scalar country ("MU"),  "Mauritius", "'MU'";
is scalar country ("MUS"), "Mauritius", "'MUS'";
is scalar country ("480"), "Mauritius", "'480'";

# Mexico
is scalar country ("MX"),  "Mexico", "'MX'";
is scalar country ("MEX"), "Mexico", "'MEX'";
is scalar country ("484"), "Mexico", "'484'";

# Monaco
is scalar country ("MC"),  "Monaco", "'MC'";
is scalar country ("MCO"), "Monaco", "'MCO'";
is scalar country ("492"), "Monaco", "'492'";

# Mongolia
is scalar country ("MN"),  "Mongolia", "'MN'";
is scalar country ("MNG"), "Mongolia", "'MNG'";
is scalar country ("496"), "Mongolia", "'496'";

# Republic of Moldova
is scalar country ("MD"),  "Republic of Moldova", "'MD'";
is scalar country ("MDA"), "Republic of Moldova", "'MDA'";
is scalar country ("498"), "Republic of Moldova", "'498'";

# Montserrat
is scalar country ("MS"),  "Montserrat", "'MS'";
is scalar country ("MSR"), "Montserrat", "'MSR'";
is scalar country ("500"), "Montserrat", "'500'";

# Morocco
is scalar country ("MA"),  "Morocco", "'MA'";
is scalar country ("MAR"), "Morocco", "'MAR'";
is scalar country ("504"), "Morocco", "'504'";

# Mozambique
is scalar country ("MZ"),  "Mozambique", "'MZ'";
is scalar country ("MOZ"), "Mozambique", "'MOZ'";
is scalar country ("508"), "Mozambique", "'508'";

# Oman
is scalar country ("OM"),  "Oman", "'OM'";
is scalar country ("OMN"), "Oman", "'OMN'";
is scalar country ("512"), "Oman", "'512'";

# Namibia
is scalar country ("NA"),  "Namibia", "'NA'";
is scalar country ("NAM"), "Namibia", "'NAM'";
is scalar country ("516"), "Namibia", "'516'";

# Nauru
is scalar country ("NR"),  "Nauru", "'NR'";
is scalar country ("NRU"), "Nauru", "'NRU'";
is scalar country ("520"), "Nauru", "'520'";

# Nepal
is scalar country ("NP"),  "Nepal", "'NP'";
is scalar country ("NPL"), "Nepal", "'NPL'";
is scalar country ("524"), "Nepal", "'524'";

# Netherlands
is scalar country ("NL"),  "Netherlands", "'NL'";
is scalar country ("NLD"), "Netherlands", "'NLD'";
is scalar country ("528"), "Netherlands", "'528'";

# Curaçao
is scalar country ("CW"),  "Cura\x{e7}ao", "'CW'";
is scalar country ("CUW"), "Cura\x{e7}ao", "'CUW'";
is scalar country ("531"), "Cura\x{e7}ao", "'531'";

# Aruba
is scalar country ("AW"),  "Aruba", "'AW'";
is scalar country ("ABW"), "Aruba", "'ABW'";
is scalar country ("533"), "Aruba", "'533'";

# New Caledonia
is scalar country ("NC"),  "New Caledonia", "'NC'";
is scalar country ("NCL"), "New Caledonia", "'NCL'";
is scalar country ("540"), "New Caledonia", "'540'";

# Vanuatu
is scalar country ("VU"),  "Vanuatu", "'VU'";
is scalar country ("VUT"), "Vanuatu", "'VUT'";
is scalar country ("548"), "Vanuatu", "'548'";

# New Zealand
is scalar country ("NZ"),  "New Zealand", "'NZ'";
is scalar country ("NZL"), "New Zealand", "'NZL'";
is scalar country ("554"), "New Zealand", "'554'";

# Nicaragua
is scalar country ("NI"),  "Nicaragua", "'NI'";
is scalar country ("NIC"), "Nicaragua", "'NIC'";
is scalar country ("558"), "Nicaragua", "'558'";

# Niger
is scalar country ("NE"),  "Niger", "'NE'";
is scalar country ("NER"), "Niger", "'NER'";
is scalar country ("562"), "Niger", "'562'";

# Nigeria
is scalar country ("NG"),  "Nigeria", "'NG'";
is scalar country ("NGA"), "Nigeria", "'NGA'";
is scalar country ("566"), "Nigeria", "'566'";

# Niue
is scalar country ("NU"),  "Niue", "'NU'";
is scalar country ("NIU"), "Niue", "'NIU'";
is scalar country ("570"), "Niue", "'570'";

# Norfolk Island
is scalar country ("NF"),  "Norfolk Island", "'NF'";
is scalar country ("NFK"), "Norfolk Island", "'NFK'";
is scalar country ("574"), "Norfolk Island", "'574'";

# Norway
is scalar country ("NO"),  "Norway", "'NO'";
is scalar country ("NOR"), "Norway", "'NOR'";
is scalar country ("578"), "Norway", "'578'";

# Northern Mariana Islands
is scalar country ("MP"),  "Northern Mariana Islands", "'MP'";
is scalar country ("MNP"), "Northern Mariana Islands", "'MNP'";
is scalar country ("580"), "Northern Mariana Islands", "'580'";

# Micronesia, Federated States of
is scalar country ("FM"),  "Micronesia, Federated States of", "'FM'";
is scalar country ("FSM"), "Micronesia, Federated States of", "'FSM'";
is scalar country ("583"), "Micronesia, Federated States of", "'583'";

# Marshall Islands
is scalar country ("MH"),  "Marshall Islands", "'MH'";
is scalar country ("MHL"), "Marshall Islands", "'MHL'";
is scalar country ("584"), "Marshall Islands", "'584'";

# Palau
is scalar country ("PW"),  "Palau", "'PW'";
is scalar country ("PLW"), "Palau", "'PLW'";
is scalar country ("585"), "Palau", "'585'";

# Pakistan
is scalar country ("PK"),  "Pakistan", "'PK'";
is scalar country ("PAK"), "Pakistan", "'PAK'";
is scalar country ("586"), "Pakistan", "'586'";

# Panama
is scalar country ("PA"),  "Panama", "'PA'";
is scalar country ("PAN"), "Panama", "'PAN'";
is scalar country ("591"), "Panama", "'591'";

# Papua New Guinea
is scalar country ("PG"),  "Papua New Guinea", "'PG'";
is scalar country ("PNG"), "Papua New Guinea", "'PNG'";
is scalar country ("598"), "Papua New Guinea", "'598'";

# Paraguay
is scalar country ("PY"),  "Paraguay", "'PY'";
is scalar country ("PRY"), "Paraguay", "'PRY'";
is scalar country ("600"), "Paraguay", "'600'";

# Peru
is scalar country ("PE"),  "Peru", "'PE'";
is scalar country ("PER"), "Peru", "'PER'";
is scalar country ("604"), "Peru", "'604'";

# Philippines
is scalar country ("PH"),  "Philippines", "'PH'";
is scalar country ("PHL"), "Philippines", "'PHL'";
is scalar country ("608"), "Philippines", "'608'";

# Pitcairn
is scalar country ("PN"),  "Pitcairn", "'PN'";
is scalar country ("PCN"), "Pitcairn", "'PCN'";
is scalar country ("612"), "Pitcairn", "'612'";

# Poland
is scalar country ("PL"),  "Poland", "'PL'";
is scalar country ("POL"), "Poland", "'POL'";
is scalar country ("616"), "Poland", "'616'";

# Portugal
is scalar country ("PT"),  "Portugal", "'PT'";
is scalar country ("PRT"), "Portugal", "'PRT'";
is scalar country ("620"), "Portugal", "'620'";

# Guinea-Bissau
is scalar country ("GW"),  "Guinea-Bissau", "'GW'";
is scalar country ("GNB"), "Guinea-Bissau", "'GNB'";
is scalar country ("624"), "Guinea-Bissau", "'624'";

# East Timor
is scalar country ("TL"),  "Timor-Leste", "'TL'";
is scalar country ("TLS"), "Timor-Leste", "'TLS'";
is scalar country ("626"), "Timor-Leste", "'626'";

# Puerto Rico
is scalar country ("PR"),  "Puerto Rico", "'PR'";
is scalar country ("PRI"), "Puerto Rico", "'PRI'";
is scalar country ("630"), "Puerto Rico", "'630'";

# Qatar
is scalar country ("QA"),  "Qatar", "'QA'";
is scalar country ("QAT"), "Qatar", "'QAT'";
is scalar country ("634"), "Qatar", "'634'";

# R\x{e9}union
is scalar country ("RE"),  "R\x{e9}union", "'RE'";
is scalar country ("REU"), "R\x{e9}union", "'REU'";
is scalar country ("638"), "R\x{e9}union", "'638'";

# Romania
is scalar country ("RO"),  "Romania", "'RO'";
is scalar country ("ROM"), "Romania", "'ROM'";
is scalar country ("642"), "Romania", "'642'";

# Russian Federation
is scalar country ("RU"),  "Russian Federation", "'RU'";
is scalar country ("RUS"), "Russian Federation", "'RUS'";
is scalar country ("643"), "Russian Federation", "'643'";

# Rwanda
is scalar country ("RW"),  "Rwanda", "'RW'";
is scalar country ("RWA"), "Rwanda", "'RWA'";
is scalar country ("646"), "Rwanda", "'646'";

# Saint Helena
is scalar country ("SH"),  "Saint Helena", "'SH'";
is scalar country ("SHN"), "Saint Helena", "'SHN'";
is scalar country ("654"), "Saint Helena", "'654'";

# Saint Kitts and Nevis
is scalar country ("KN"),  "Saint Kitts and Nevis", "'KN'";
is scalar country ("KNA"), "Saint Kitts and Nevis", "'KNA'";
is scalar country ("659"), "Saint Kitts and Nevis", "'659'";

# Anguilla
is scalar country ("AI"),  "Anguilla", "'AI'";
is scalar country ("AIA"), "Anguilla", "'AIA'";
is scalar country ("660"), "Anguilla", "'660'";

# Saint Lucia
is scalar country ("LC"),  "Saint Lucia", "'LC'";
is scalar country ("LCA"), "Saint Lucia", "'LCA'";
is scalar country ("662"), "Saint Lucia", "'662'";

# Saint Pierre and Miquelon
is scalar country ("PM"),  "Saint Pierre and Miquelon", "'PM'";
is scalar country ("SPM"), "Saint Pierre and Miquelon", "'SPM'";
is scalar country ("666"), "Saint Pierre and Miquelon", "'666'";

# Saint Vincent and the Grenadines
is scalar country ("VC"),  "Saint Vincent and the Grenadines", "'VC'";
is scalar country ("VCT"), "Saint Vincent and the Grenadines", "'VCT'";
is scalar country ("670"), "Saint Vincent and the Grenadines", "'670'";

# San Marino
is scalar country ("SM"),  "San Marino", "'SM'";
is scalar country ("SMR"), "San Marino", "'SMR'";
is scalar country ("674"), "San Marino", "'674'";

# Sao Tome and Principe
is scalar country ("ST"),  "Sao Tome and Principe", "'ST'";
is scalar country ("STP"), "Sao Tome and Principe", "'STP'";
is scalar country ("678"), "Sao Tome and Principe", "'678'";

# Saudi Arabia
is scalar country ("SA"),  "Saudi Arabia", "'SA'";
is scalar country ("SAU"), "Saudi Arabia", "'SAU'";
is scalar country ("682"), "Saudi Arabia", "'682'";

# Senegal
is scalar country ("SN"),  "Senegal", "'SN'";
is scalar country ("SEN"), "Senegal", "'SEN'";
is scalar country ("686"), "Senegal", "'686'";

# Seychelles
is scalar country ("SC"),  "Seychelles", "'SC'";
is scalar country ("SYC"), "Seychelles", "'SYC'";
is scalar country ("690"), "Seychelles", "'690'";

# Sierra Leone
is scalar country ("SL"),  "Sierra Leone", "'SL'";
is scalar country ("SLE"), "Sierra Leone", "'SLE'";
is scalar country ("694"), "Sierra Leone", "'694'";

# Singapore
is scalar country ("SG"),  "Singapore", "'SG'";
is scalar country ("SGP"), "Singapore", "'SGP'";
is scalar country ("702"), "Singapore", "'702'";

# Slovakia
is scalar country ("SK"),  "Slovakia", "'SK'";
is scalar country ("SVK"), "Slovakia", "'SVK'";
is scalar country ("703"), "Slovakia", "'703'";

# Viet Nam
is scalar country ("VN"),  "Viet Nam", "'VN'";
is scalar country ("VNM"), "Viet Nam", "'VNM'";
is scalar country ("704"), "Viet Nam", "'704'";

# Slovenia
is scalar country ("SI"),  "Slovenia", "'SI'";
is scalar country ("SVN"), "Slovenia", "'SVN'";
is scalar country ("705"), "Slovenia", "'705'";

# Somalia
is scalar country ("SO"),  "Somalia", "'SO'";
is scalar country ("SOM"), "Somalia", "'SOM'";
is scalar country ("706"), "Somalia", "'706'";

# South Africa
is scalar country ("ZA"),  "South Africa", "'ZA'";
is scalar country ("ZAF"), "South Africa", "'ZAF'";
is scalar country ("710"), "South Africa", "'710'";

# Zimbabwe
is scalar country ("ZW"),  "Zimbabwe", "'ZW'";
is scalar country ("ZWE"), "Zimbabwe", "'ZWE'";
is scalar country ("716"), "Zimbabwe", "'716'";

# Spain
is scalar country ("ES"),  "Spain", "'ES'";
is scalar country ("ESP"), "Spain", "'ESP'";
is scalar country ("724"), "Spain", "'724'";

# Western Sahara
is scalar country ("EH"),  "Western Sahara", "'EH'";
is scalar country ("ESH"), "Western Sahara", "'ESH'";
is scalar country ("732"), "Western Sahara", "'732'";

# Sudan
is scalar country ("SD"),  "Sudan", "'SD'";
is scalar country ("SDN"), "Sudan", "'SDN'";
is scalar country ("736"), "Sudan", "'736'";

# Suriname
is scalar country ("SR"),  "Suriname", "'SR'";
is scalar country ("SUR"), "Suriname", "'SUR'";
is scalar country ("740"), "Suriname", "'740'";

# Svalbard and Jan Mayen Islands
is scalar country ("SJ"),  "Svalbard and Jan Mayen Islands", "'SJ'";
is scalar country ("SJM"), "Svalbard and Jan Mayen Islands", "'SJM'";
is scalar country ("744"), "Svalbard and Jan Mayen Islands", "'744'";

# Swaziland
is scalar country ("SZ"),  "Swaziland", "'SZ'";
is scalar country ("SWZ"), "Swaziland", "'SWZ'";
is scalar country ("748"), "Swaziland", "'748'";

# Sweden
is scalar country ("SE"),  "Sweden", "'SE'";
is scalar country ("SWE"), "Sweden", "'SWE'";
is scalar country ("752"), "Sweden", "'752'";

# Switzerland
is scalar country ("CH"),  "Switzerland", "'CH'";
is scalar country ("CHE"), "Switzerland", "'CHE'";
is scalar country ("756"), "Switzerland", "'756'";

# Syrian Arab Republic
is scalar country ("SY"),  "Syrian Arab Republic", "'SY'";
is scalar country ("SYR"), "Syrian Arab Republic", "'SYR'";
is scalar country ("760"), "Syrian Arab Republic", "'760'";

# Tajikistan
is scalar country ("TJ"),  "Tajikistan", "'TJ'";
is scalar country ("TJK"), "Tajikistan", "'TJK'";
is scalar country ("762"), "Tajikistan", "'762'";

# Thailand
is scalar country ("TH"),  "Thailand", "'TH'";
is scalar country ("THA"), "Thailand", "'THA'";
is scalar country ("764"), "Thailand", "'764'";

# Togo
is scalar country ("TG"),  "Togo", "'TG'";
is scalar country ("TGO"), "Togo", "'TGO'";
is scalar country ("768"), "Togo", "'768'";

# Tokelau
is scalar country ("TK"),  "Tokelau", "'TK'";
is scalar country ("TKL"), "Tokelau", "'TKL'";
is scalar country ("772"), "Tokelau", "'772'";

# Tonga
is scalar country ("TO"),  "Tonga", "'TO'";
is scalar country ("TON"), "Tonga", "'TON'";
is scalar country ("776"), "Tonga", "'776'";

# Trinidad and Tobago
is scalar country ("TT"),  "Trinidad and Tobago", "'TT'";
is scalar country ("TTO"), "Trinidad and Tobago", "'TTO'";
is scalar country ("780"), "Trinidad and Tobago", "'780'";

# United Arab Emirates
is scalar country ("AE"),  "United Arab Emirates", "'AE'";
is scalar country ("ARE"), "United Arab Emirates", "'ARE'";
is scalar country ("784"), "United Arab Emirates", "'784'";

# Tunisia
is scalar country ("TN"),  "Tunisia", "'TN'";
is scalar country ("TUN"), "Tunisia", "'TUN'";
is scalar country ("788"), "Tunisia", "'788'";

# Turkey
is scalar country ("TR"),  "Turkey", "'TR'";
is scalar country ("TUR"), "Turkey", "'TUR'";
is scalar country ("792"), "Turkey", "'792'";

# Turkmenistan
is scalar country ("TM"),  "Turkmenistan", "'TM'";
is scalar country ("TKM"), "Turkmenistan", "'TKM'";
is scalar country ("795"), "Turkmenistan", "'795'";

# Turks and Caicos Islands
is scalar country ("TC"),  "Turks and Caicos Islands", "'TC'";
is scalar country ("TCA"), "Turks and Caicos Islands", "'TCA'";
is scalar country ("796"), "Turks and Caicos Islands", "'796'";

# Tuvalu
is scalar country ("TV"),  "Tuvalu", "'TV'";
is scalar country ("TUV"), "Tuvalu", "'TUV'";
is scalar country ("798"), "Tuvalu", "'798'";

# Uganda
is scalar country ("UG"),  "Uganda", "'UG'";
is scalar country ("UGA"), "Uganda", "'UGA'";
is scalar country ("800"), "Uganda", "'800'";

# Ukraine
is scalar country ("UA"),  "Ukraine", "'UA'";
is scalar country ("UKR"), "Ukraine", "'UKR'";
is scalar country ("804"), "Ukraine", "'804'";

# The former Yugoslav Republic of Macedonia
is scalar country ("MK"),  "The former Yugoslav Republic of Macedonia", "'MK'";
is scalar country ("MKD"), "The former Yugoslav Republic of Macedonia", "'MKD'";
is scalar country ("807"), "The former Yugoslav Republic of Macedonia", "'807'";

# Egypt
is scalar country ("EG"),  "Egypt", "'EG'";
is scalar country ("EGY"), "Egypt", "'EGY'";
is scalar country ("818"), "Egypt", "'818'";

# United Kingdom
is scalar country ("GB"),  "United Kingdom", "'GB'";
is scalar country ("GBR"), "United Kingdom", "'GBR'";
is scalar country ("826"), "United Kingdom", "'826'";

# Channel Islands
is scalar country ("830"), "Channel Islands", "'830'";

# Isle of Man
is scalar country ("IMY"), "Isle of Man", "'IMY'";
is scalar country ("833"), "Isle of Man", "'833'";

# United Republic of Tanzania
is scalar country ("TZ"),  "United Republic of Tanzania", "'TZ'";
is scalar country ("TZA"), "United Republic of Tanzania", "'TZA'";
is scalar country ("834"), "United Republic of Tanzania", "'834'";

# United States
is scalar country ("US"),  "United States", "'US'";
is scalar country ("USA"), "United States", "'USA'";
is scalar country ("840"), "United States", "'840'";

# United States Virgin Islands
is scalar country ("VI"),  "United States Virgin Islands", "'VI'";
is scalar country ("VIR"), "United States Virgin Islands", "'VIR'";
is scalar country ("850"), "United States Virgin Islands", "'850'";

# Burkina Faso
is scalar country ("BF"),  "Burkina Faso", "'BF'";
is scalar country ("BFA"), "Burkina Faso", "'BFA'";
is scalar country ("854"), "Burkina Faso", "'854'";

# Uruguay
is scalar country ("UY"),  "Uruguay", "'UY'";
is scalar country ("URY"), "Uruguay", "'URY'";
is scalar country ("858"), "Uruguay", "'858'";

# Uzbekistan
is scalar country ("UZ"),  "Uzbekistan", "'UZ'";
is scalar country ("UZB"), "Uzbekistan", "'UZB'";
is scalar country ("860"), "Uzbekistan", "'860'";

# Venezuela
is scalar country ("VE"),  "Venezuela", "'VE'";
is scalar country ("VEN"), "Venezuela", "'VEN'";
is scalar country ("862"), "Venezuela", "'862'";

# Wallis and Futuna Islands
is scalar country ("WF"),  "Wallis and Futuna Islands", "'WF'";
is scalar country ("WLF"), "Wallis and Futuna Islands", "'WLF'";
is scalar country ("876"), "Wallis and Futuna Islands", "'876'";

# Samoa
is scalar country ("WS"),  "Samoa", "'WS'";
is scalar country ("WSM"), "Samoa", "'WSM'";
is scalar country ("882"), "Samoa", "'882'";

# Yemen
is scalar country ("YE"),  "Yemen", "'YE'";
is scalar country ("YEM"), "Yemen", "'YEM'";
is scalar country ("887"), "Yemen", "'887'";

# Serbia
is scalar country ("RS"),  "Serbia", "'RS'";
is scalar country ("SRB"), "Serbia", "'SRB'";
is scalar country ("688"), "Serbia", "'688'";

# Zambia
is scalar country ("ZM"),  "Zambia", "'ZM'";
is scalar country ("ZMB"), "Zambia", "'ZMB'";
is scalar country ("894"), "Zambia", "'894'";

# Areas not elsewhere specified
is scalar country ("896"), "Areas not elsewhere specified", "'896'";

# Areas not specified
is scalar country ("898"), "Areas not specified", "'898'";

__END__
