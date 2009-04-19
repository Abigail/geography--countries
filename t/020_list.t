#!/usr/bin/perl

use strict;
use warnings;
no  warnings 'syntax';

use Test::More 'no_plan';

BEGIN {
    use_ok ("Geography::Countries");
}

my $FLAG = 1;


# Antarctica
is_deeply [country ("AQ") ],
          ["AQ", undef, undef, "Antarctica", $FLAG], "'AQ'";

# Bouvet Island
is_deeply [country ("BV") ],
          ["BV", undef, undef, "Bouvet Island", $FLAG], "'BV'";

# British Indian Ocean Territory
is_deeply [country ("IO") ],
          ["IO", undef, undef, "British Indian Ocean Territory", $FLAG], "'IO'";

# Christmas Island
is_deeply [country ("CX") ],
          ["CX", undef, undef, "Christmas Island", $FLAG], "'CX'";

# Cocos (keeling) Islands
is_deeply [country ("CC") ],
          ["CC", undef, undef, "Cocos (keeling) Islands", $FLAG], "'CC'";

# French Southern Territories
is_deeply [country ("TF") ],
          ["TF", undef, undef, "French Southern Territories", $FLAG], "'TF'";

# Heard Island And Mcdonald Islands
is_deeply [country ("HM") ],
          ["HM", undef, undef, "Heard Island And Mcdonald Islands", $FLAG], "'HM'";

# Mayotte
is_deeply [country ("YT") ],
          ["YT", undef, undef, "Mayotte", $FLAG], "'YT'";

# South Georgia And The South Sandwich Islands
is_deeply [country ("GS") ],
          ["GS", undef, undef, "South Georgia And The South Sandwich Islands", $FLAG], "'GS'";

# United States Minor Outlying Islands
is_deeply [country ("UM") ],
          ["UM", undef, undef, "United States Minor Outlying Islands", $FLAG], "'UM'";

# Afghanistan
is_deeply [country ("AF") ],
          ["AF", "AFG", "004", "Afghanistan", $FLAG], "'AF'";
is_deeply [country ("AFG")],
          ["AF", "AFG", "004", "Afghanistan", $FLAG], "'AFG'";
is_deeply [country ("004")],
          ["AF", "AFG", "004", "Afghanistan", $FLAG], "'004'";

# Albania
is_deeply [country ("AL") ],
          ["AL", "ALB", "008", "Albania", $FLAG], "'AL'";
is_deeply [country ("ALB")],
          ["AL", "ALB", "008", "Albania", $FLAG], "'ALB'";
is_deeply [country ("008")],
          ["AL", "ALB", "008", "Albania", $FLAG], "'008'";

# Algeria
is_deeply [country ("DZ") ],
          ["DZ", "DZA", "012", "Algeria", $FLAG], "'DZ'";
is_deeply [country ("DZA")],
          ["DZ", "DZA", "012", "Algeria", $FLAG], "'DZA'";
is_deeply [country ("012")],
          ["DZ", "DZA", "012", "Algeria", $FLAG], "'012'";

# American Samoa
is_deeply [country ("AS") ],
          ["AS", "ASM", "016", "American Samoa", $FLAG], "'AS'";
is_deeply [country ("ASM")],
          ["AS", "ASM", "016", "American Samoa", $FLAG], "'ASM'";
is_deeply [country ("016")],
          ["AS", "ASM", "016", "American Samoa", $FLAG], "'016'";

# Andorra
is_deeply [country ("AD") ],
          ["AD", "AND", "020", "Andorra", $FLAG], "'AD'";
is_deeply [country ("AND")],
          ["AD", "AND", "020", "Andorra", $FLAG], "'AND'";
is_deeply [country ("020")],
          ["AD", "AND", "020", "Andorra", $FLAG], "'020'";

# Angola
is_deeply [country ("AO") ],
          ["AO", "AGO", "024", "Angola", $FLAG], "'AO'";
is_deeply [country ("AGO")],
          ["AO", "AGO", "024", "Angola", $FLAG], "'AGO'";
is_deeply [country ("024")],
          ["AO", "AGO", "024", "Angola", $FLAG], "'024'";

# Antigua and Barbuda
is_deeply [country ("AG") ],
          ["AG", "ATG", "028", "Antigua and Barbuda", $FLAG], "'AG'";
is_deeply [country ("ATG")],
          ["AG", "ATG", "028", "Antigua and Barbuda", $FLAG], "'ATG'";
is_deeply [country ("028")],
          ["AG", "ATG", "028", "Antigua and Barbuda", $FLAG], "'028'";

# Azerbaijan
is_deeply [country ("AZ") ],
          ["AZ", "AZE", "031", "Azerbaijan", $FLAG], "'AZ'";
is_deeply [country ("AZE")],
          ["AZ", "AZE", "031", "Azerbaijan", $FLAG], "'AZE'";
is_deeply [country ("031")],
          ["AZ", "AZE", "031", "Azerbaijan", $FLAG], "'031'";

# Argentina
is_deeply [country ("AR") ],
          ["AR", "ARG", "032", "Argentina", $FLAG], "'AR'";
is_deeply [country ("ARG")],
          ["AR", "ARG", "032", "Argentina", $FLAG], "'ARG'";
is_deeply [country ("032")],
          ["AR", "ARG", "032", "Argentina", $FLAG], "'032'";

# Australia
is_deeply [country ("AU") ],
          ["AU", "AUS", "036", "Australia", $FLAG], "'AU'";
is_deeply [country ("AUS")],
          ["AU", "AUS", "036", "Australia", $FLAG], "'AUS'";
is_deeply [country ("036")],
          ["AU", "AUS", "036", "Australia", $FLAG], "'036'";

# Austria
is_deeply [country ("AT") ],
          ["AT", "AUT", "040", "Austria", $FLAG], "'AT'";
is_deeply [country ("AUT")],
          ["AT", "AUT", "040", "Austria", $FLAG], "'AUT'";
is_deeply [country ("040")],
          ["AT", "AUT", "040", "Austria", $FLAG], "'040'";

# Bahamas
is_deeply [country ("BS") ],
          ["BS", "BHS", "044", "Bahamas", $FLAG], "'BS'";
is_deeply [country ("BHS")],
          ["BS", "BHS", "044", "Bahamas", $FLAG], "'BHS'";
is_deeply [country ("044")],
          ["BS", "BHS", "044", "Bahamas", $FLAG], "'044'";

# Bahrain
is_deeply [country ("BH") ],
          ["BH", "BHR", "048", "Bahrain", $FLAG], "'BH'";
is_deeply [country ("BHR")],
          ["BH", "BHR", "048", "Bahrain", $FLAG], "'BHR'";
is_deeply [country ("048")],
          ["BH", "BHR", "048", "Bahrain", $FLAG], "'048'";

# Bangladesh
is_deeply [country ("BD") ],
          ["BD", "BGD", "050", "Bangladesh", $FLAG], "'BD'";
is_deeply [country ("BGD")],
          ["BD", "BGD", "050", "Bangladesh", $FLAG], "'BGD'";
is_deeply [country ("050")],
          ["BD", "BGD", "050", "Bangladesh", $FLAG], "'050'";

# Armenia
is_deeply [country ("AM") ],
          ["AM", "ARM", "051", "Armenia", $FLAG], "'AM'";
is_deeply [country ("ARM")],
          ["AM", "ARM", "051", "Armenia", $FLAG], "'ARM'";
is_deeply [country ("051")],
          ["AM", "ARM", "051", "Armenia", $FLAG], "'051'";

# Barbados
is_deeply [country ("BB") ],
          ["BB", "BRB", "052", "Barbados", $FLAG], "'BB'";
is_deeply [country ("BRB")],
          ["BB", "BRB", "052", "Barbados", $FLAG], "'BRB'";
is_deeply [country ("052")],
          ["BB", "BRB", "052", "Barbados", $FLAG], "'052'";

# Belgium
is_deeply [country ("BE") ],
          ["BE", "BEL", "056", "Belgium", $FLAG], "'BE'";
is_deeply [country ("BEL")],
          ["BE", "BEL", "056", "Belgium", $FLAG], "'BEL'";
is_deeply [country ("056")],
          ["BE", "BEL", "056", "Belgium", $FLAG], "'056'";

# Bermuda
is_deeply [country ("BM") ],
          ["BM", "BMU", "060", "Bermuda", $FLAG], "'BM'";
is_deeply [country ("BMU")],
          ["BM", "BMU", "060", "Bermuda", $FLAG], "'BMU'";
is_deeply [country ("060")],
          ["BM", "BMU", "060", "Bermuda", $FLAG], "'060'";

# Bhutan
is_deeply [country ("BT") ],
          ["BT", "BTN", "064", "Bhutan", $FLAG], "'BT'";
is_deeply [country ("BTN")],
          ["BT", "BTN", "064", "Bhutan", $FLAG], "'BTN'";
is_deeply [country ("064")],
          ["BT", "BTN", "064", "Bhutan", $FLAG], "'064'";

# Bolivia
is_deeply [country ("BO") ],
          ["BO", "BOL", "068", "Bolivia", $FLAG], "'BO'";
is_deeply [country ("BOL")],
          ["BO", "BOL", "068", "Bolivia", $FLAG], "'BOL'";
is_deeply [country ("068")],
          ["BO", "BOL", "068", "Bolivia", $FLAG], "'068'";

# Bosnia and Herzegovina
is_deeply [country ("BA") ],
          ["BA", "BIH", "070", "Bosnia and Herzegovina", $FLAG], "'BA'";
is_deeply [country ("BIH")],
          ["BA", "BIH", "070", "Bosnia and Herzegovina", $FLAG], "'BIH'";
is_deeply [country ("070")],
          ["BA", "BIH", "070", "Bosnia and Herzegovina", $FLAG], "'070'";

# Botswana
is_deeply [country ("BW") ],
          ["BW", "BWA", "072", "Botswana", $FLAG], "'BW'";
is_deeply [country ("BWA")],
          ["BW", "BWA", "072", "Botswana", $FLAG], "'BWA'";
is_deeply [country ("072")],
          ["BW", "BWA", "072", "Botswana", $FLAG], "'072'";

# Brazil
is_deeply [country ("BR") ],
          ["BR", "BRA", "076", "Brazil", $FLAG], "'BR'";
is_deeply [country ("BRA")],
          ["BR", "BRA", "076", "Brazil", $FLAG], "'BRA'";
is_deeply [country ("076")],
          ["BR", "BRA", "076", "Brazil", $FLAG], "'076'";

# Belize
is_deeply [country ("BZ") ],
          ["BZ", "BLZ", "084", "Belize", $FLAG], "'BZ'";
is_deeply [country ("BLZ")],
          ["BZ", "BLZ", "084", "Belize", $FLAG], "'BLZ'";
is_deeply [country ("084")],
          ["BZ", "BLZ", "084", "Belize", $FLAG], "'084'";

# Solomon Islands
is_deeply [country ("SB") ],
          ["SB", "SLB", "090", "Solomon Islands", $FLAG], "'SB'";
is_deeply [country ("SLB")],
          ["SB", "SLB", "090", "Solomon Islands", $FLAG], "'SLB'";
is_deeply [country ("090")],
          ["SB", "SLB", "090", "Solomon Islands", $FLAG], "'090'";

# British Virgin Islands
is_deeply [country ("VG") ],
          ["VG", "VGB", "092", "British Virgin Islands", $FLAG], "'VG'";
is_deeply [country ("VGB")],
          ["VG", "VGB", "092", "British Virgin Islands", $FLAG], "'VGB'";
is_deeply [country ("092")],
          ["VG", "VGB", "092", "British Virgin Islands", $FLAG], "'092'";

# Brunei Darussalam
is_deeply [country ("BN") ],
          ["BN", "BRN", "096", "Brunei Darussalam", $FLAG], "'BN'";
is_deeply [country ("BRN")],
          ["BN", "BRN", "096", "Brunei Darussalam", $FLAG], "'BRN'";
is_deeply [country ("096")],
          ["BN", "BRN", "096", "Brunei Darussalam", $FLAG], "'096'";

# Bulgaria
is_deeply [country ("BG") ],
          ["BG", "BGR", "100", "Bulgaria", $FLAG], "'BG'";
is_deeply [country ("BGR")],
          ["BG", "BGR", "100", "Bulgaria", $FLAG], "'BGR'";
is_deeply [country ("100")],
          ["BG", "BGR", "100", "Bulgaria", $FLAG], "'100'";

# Myanmar
is_deeply [country ("MM") ],
          ["MM", "MMR", "104", "Myanmar", $FLAG], "'MM'";
is_deeply [country ("MMR")],
          ["MM", "MMR", "104", "Myanmar", $FLAG], "'MMR'";
is_deeply [country ("104")],
          ["MM", "MMR", "104", "Myanmar", $FLAG], "'104'";

# Burundi
is_deeply [country ("BI") ],
          ["BI", "BDI", "108", "Burundi", $FLAG], "'BI'";
is_deeply [country ("BDI")],
          ["BI", "BDI", "108", "Burundi", $FLAG], "'BDI'";
is_deeply [country ("108")],
          ["BI", "BDI", "108", "Burundi", $FLAG], "'108'";

# Belarus
is_deeply [country ("BY") ],
          ["BY", "BLR", "112", "Belarus", $FLAG], "'BY'";
is_deeply [country ("BLR")],
          ["BY", "BLR", "112", "Belarus", $FLAG], "'BLR'";
is_deeply [country ("112")],
          ["BY", "BLR", "112", "Belarus", $FLAG], "'112'";

# Cambodia
is_deeply [country ("KH") ],
          ["KH", "KHM", "116", "Cambodia", $FLAG], "'KH'";
is_deeply [country ("KHM")],
          ["KH", "KHM", "116", "Cambodia", $FLAG], "'KHM'";
is_deeply [country ("116")],
          ["KH", "KHM", "116", "Cambodia", $FLAG], "'116'";

# Cameroon
is_deeply [country ("CM") ],
          ["CM", "CMR", "120", "Cameroon", $FLAG], "'CM'";
is_deeply [country ("CMR")],
          ["CM", "CMR", "120", "Cameroon", $FLAG], "'CMR'";
is_deeply [country ("120")],
          ["CM", "CMR", "120", "Cameroon", $FLAG], "'120'";

# Canada
is_deeply [country ("CA") ],
          ["CA", "CAN", "124", "Canada", $FLAG], "'CA'";
is_deeply [country ("CAN")],
          ["CA", "CAN", "124", "Canada", $FLAG], "'CAN'";
is_deeply [country ("124")],
          ["CA", "CAN", "124", "Canada", $FLAG], "'124'";

# Cape Verde
is_deeply [country ("CV") ],
          ["CV", "CPV", "132", "Cape Verde", $FLAG], "'CV'";
is_deeply [country ("CPV")],
          ["CV", "CPV", "132", "Cape Verde", $FLAG], "'CPV'";
is_deeply [country ("132")],
          ["CV", "CPV", "132", "Cape Verde", $FLAG], "'132'";

# Cayman Islands
is_deeply [country ("KY") ],
          ["KY", "CYM", "136", "Cayman Islands", $FLAG], "'KY'";
is_deeply [country ("CYM")],
          ["KY", "CYM", "136", "Cayman Islands", $FLAG], "'CYM'";
is_deeply [country ("136")],
          ["KY", "CYM", "136", "Cayman Islands", $FLAG], "'136'";

# Central African Republic
is_deeply [country ("CF") ],
          ["CF", "CAF", "140", "Central African Republic", $FLAG], "'CF'";
is_deeply [country ("CAF")],
          ["CF", "CAF", "140", "Central African Republic", $FLAG], "'CAF'";
is_deeply [country ("140")],
          ["CF", "CAF", "140", "Central African Republic", $FLAG], "'140'";

# Sri Lanka
is_deeply [country ("LK") ],
          ["LK", "LKA", "144", "Sri Lanka", $FLAG], "'LK'";
is_deeply [country ("LKA")],
          ["LK", "LKA", "144", "Sri Lanka", $FLAG], "'LKA'";
is_deeply [country ("144")],
          ["LK", "LKA", "144", "Sri Lanka", $FLAG], "'144'";

# Chad
is_deeply [country ("TD") ],
          ["TD", "TCD", "148", "Chad", $FLAG], "'TD'";
is_deeply [country ("TCD")],
          ["TD", "TCD", "148", "Chad", $FLAG], "'TCD'";
is_deeply [country ("148")],
          ["TD", "TCD", "148", "Chad", $FLAG], "'148'";

# Chile
is_deeply [country ("CL") ],
          ["CL", "CHL", "152", "Chile", $FLAG], "'CL'";
is_deeply [country ("CHL")],
          ["CL", "CHL", "152", "Chile", $FLAG], "'CHL'";
is_deeply [country ("152")],
          ["CL", "CHL", "152", "Chile", $FLAG], "'152'";

# China
is_deeply [country ("CN") ],
          ["CN", "CHN", "156", "China", $FLAG], "'CN'";
is_deeply [country ("CHN")],
          ["CN", "CHN", "156", "China", $FLAG], "'CHN'";
is_deeply [country ("156")],
          ["CN", "CHN", "156", "China", $FLAG], "'156'";

# Taiwan Province of China
is_deeply [country ("TW") ],
          ["TW", "TWN", "158", "Taiwan Province of China", $FLAG], "'TW'";
is_deeply [country ("TWN")],
          ["TW", "TWN", "158", "Taiwan Province of China", $FLAG], "'TWN'";
is_deeply [country ("158")],
          ["TW", "TWN", "158", "Taiwan Province of China", $FLAG], "'158'";

# Colombia
is_deeply [country ("CO") ],
          ["CO", "COL", "170", "Colombia", $FLAG], "'CO'";
is_deeply [country ("COL")],
          ["CO", "COL", "170", "Colombia", $FLAG], "'COL'";
is_deeply [country ("170")],
          ["CO", "COL", "170", "Colombia", $FLAG], "'170'";

# Comoros
is_deeply [country ("KM") ],
          ["KM", "COM", "174", "Comoros", $FLAG], "'KM'";
is_deeply [country ("COM")],
          ["KM", "COM", "174", "Comoros", $FLAG], "'COM'";
is_deeply [country ("174")],
          ["KM", "COM", "174", "Comoros", $FLAG], "'174'";

# Congo
is_deeply [country ("CG") ],
          ["CG", "COG", "178", "Congo", $FLAG], "'CG'";
is_deeply [country ("COG")],
          ["CG", "COG", "178", "Congo", $FLAG], "'COG'";
is_deeply [country ("178")],
          ["CG", "COG", "178", "Congo", $FLAG], "'178'";

# Democratic Republic of the Congo
is_deeply [country ("CD") ],
          ["CD", "COD", "180", "Democratic Republic of the Congo", $FLAG], "'CD'";
is_deeply [country ("COD")],
          ["CD", "COD", "180", "Democratic Republic of the Congo", $FLAG], "'COD'";
is_deeply [country ("180")],
          ["CD", "COD", "180", "Democratic Republic of the Congo", $FLAG], "'180'";

# Cook Islands
is_deeply [country ("CK") ],
          ["CK", "COK", "184", "Cook Islands", $FLAG], "'CK'";
is_deeply [country ("COK")],
          ["CK", "COK", "184", "Cook Islands", $FLAG], "'COK'";
is_deeply [country ("184")],
          ["CK", "COK", "184", "Cook Islands", $FLAG], "'184'";

# Costa Rica
is_deeply [country ("CR") ],
          ["CR", "CRI", "188", "Costa Rica", $FLAG], "'CR'";
is_deeply [country ("CRI")],
          ["CR", "CRI", "188", "Costa Rica", $FLAG], "'CRI'";
is_deeply [country ("188")],
          ["CR", "CRI", "188", "Costa Rica", $FLAG], "'188'";

# Croatia
is_deeply [country ("HR") ],
          ["HR", "HRV", "191", "Croatia", $FLAG], "'HR'";
is_deeply [country ("HRV")],
          ["HR", "HRV", "191", "Croatia", $FLAG], "'HRV'";
is_deeply [country ("191")],
          ["HR", "HRV", "191", "Croatia", $FLAG], "'191'";

# Cuba
is_deeply [country ("CU") ],
          ["CU", "CUB", "192", "Cuba", $FLAG], "'CU'";
is_deeply [country ("CUB")],
          ["CU", "CUB", "192", "Cuba", $FLAG], "'CUB'";
is_deeply [country ("192")],
          ["CU", "CUB", "192", "Cuba", $FLAG], "'192'";

# Cyprus
is_deeply [country ("CY") ],
          ["CY", "CYP", "196", "Cyprus", $FLAG], "'CY'";
is_deeply [country ("CYP")],
          ["CY", "CYP", "196", "Cyprus", $FLAG], "'CYP'";
is_deeply [country ("196")],
          ["CY", "CYP", "196", "Cyprus", $FLAG], "'196'";

# Czech Republic
is_deeply [country ("CZ") ],
          ["CZ", "CZE", "203", "Czech Republic", $FLAG], "'CZ'";
is_deeply [country ("CZE")],
          ["CZ", "CZE", "203", "Czech Republic", $FLAG], "'CZE'";
is_deeply [country ("203")],
          ["CZ", "CZE", "203", "Czech Republic", $FLAG], "'203'";

# Benin
is_deeply [country ("BJ") ],
          ["BJ", "BEN", "204", "Benin", $FLAG], "'BJ'";
is_deeply [country ("BEN")],
          ["BJ", "BEN", "204", "Benin", $FLAG], "'BEN'";
is_deeply [country ("204")],
          ["BJ", "BEN", "204", "Benin", $FLAG], "'204'";

# Denmark
is_deeply [country ("DK") ],
          ["DK", "DNK", "208", "Denmark", $FLAG], "'DK'";
is_deeply [country ("DNK")],
          ["DK", "DNK", "208", "Denmark", $FLAG], "'DNK'";
is_deeply [country ("208")],
          ["DK", "DNK", "208", "Denmark", $FLAG], "'208'";

# Dominica
is_deeply [country ("DM") ],
          ["DM", "DMA", "212", "Dominica", $FLAG], "'DM'";
is_deeply [country ("DMA")],
          ["DM", "DMA", "212", "Dominica", $FLAG], "'DMA'";
is_deeply [country ("212")],
          ["DM", "DMA", "212", "Dominica", $FLAG], "'212'";

# Dominican Republic
is_deeply [country ("DO") ],
          ["DO", "DOM", "214", "Dominican Republic", $FLAG], "'DO'";
is_deeply [country ("DOM")],
          ["DO", "DOM", "214", "Dominican Republic", $FLAG], "'DOM'";
is_deeply [country ("214")],
          ["DO", "DOM", "214", "Dominican Republic", $FLAG], "'214'";

# Ecuador
is_deeply [country ("EC") ],
          ["EC", "ECU", "218", "Ecuador", $FLAG], "'EC'";
is_deeply [country ("ECU")],
          ["EC", "ECU", "218", "Ecuador", $FLAG], "'ECU'";
is_deeply [country ("218")],
          ["EC", "ECU", "218", "Ecuador", $FLAG], "'218'";

# El Salvador
is_deeply [country ("SV") ],
          ["SV", "SLV", "222", "El Salvador", $FLAG], "'SV'";
is_deeply [country ("SLV")],
          ["SV", "SLV", "222", "El Salvador", $FLAG], "'SLV'";
is_deeply [country ("222")],
          ["SV", "SLV", "222", "El Salvador", $FLAG], "'222'";

# Equatorial Guinea
is_deeply [country ("GQ") ],
          ["GQ", "GNQ", "226", "Equatorial Guinea", $FLAG], "'GQ'";
is_deeply [country ("GNQ")],
          ["GQ", "GNQ", "226", "Equatorial Guinea", $FLAG], "'GNQ'";
is_deeply [country ("226")],
          ["GQ", "GNQ", "226", "Equatorial Guinea", $FLAG], "'226'";

# Ethiopia
is_deeply [country ("ET") ],
          ["ET", "ETH", "231", "Ethiopia", $FLAG], "'ET'";
is_deeply [country ("ETH")],
          ["ET", "ETH", "231", "Ethiopia", $FLAG], "'ETH'";
is_deeply [country ("231")],
          ["ET", "ETH", "231", "Ethiopia", $FLAG], "'231'";

# Eritrea
is_deeply [country ("ER") ],
          ["ER", "ERI", "232", "Eritrea", $FLAG], "'ER'";
is_deeply [country ("ERI")],
          ["ER", "ERI", "232", "Eritrea", $FLAG], "'ERI'";
is_deeply [country ("232")],
          ["ER", "ERI", "232", "Eritrea", $FLAG], "'232'";

# Estonia
is_deeply [country ("EE") ],
          ["EE", "EST", "233", "Estonia", $FLAG], "'EE'";
is_deeply [country ("EST")],
          ["EE", "EST", "233", "Estonia", $FLAG], "'EST'";
is_deeply [country ("233")],
          ["EE", "EST", "233", "Estonia", $FLAG], "'233'";

# Faeroe Islands
is_deeply [country ("FO") ],
          ["FO", "FRO", "234", "Faeroe Islands", $FLAG], "'FO'";
is_deeply [country ("FRO")],
          ["FO", "FRO", "234", "Faeroe Islands", $FLAG], "'FRO'";
is_deeply [country ("234")],
          ["FO", "FRO", "234", "Faeroe Islands", $FLAG], "'234'";

# Falkland Islands (Malvinas)
is_deeply [country ("FK") ],
          ["FK", "FLK", "238", "Falkland Islands (Malvinas)", $FLAG], "'FK'";
is_deeply [country ("FLK")],
          ["FK", "FLK", "238", "Falkland Islands (Malvinas)", $FLAG], "'FLK'";
is_deeply [country ("238")],
          ["FK", "FLK", "238", "Falkland Islands (Malvinas)", $FLAG], "'238'";

# Fiji
is_deeply [country ("FJ") ],
          ["FJ", "FJI", "242", "Fiji", $FLAG], "'FJ'";
is_deeply [country ("FJI")],
          ["FJ", "FJI", "242", "Fiji", $FLAG], "'FJI'";
is_deeply [country ("242")],
          ["FJ", "FJI", "242", "Fiji", $FLAG], "'242'";

# Finland
is_deeply [country ("FI") ],
          ["FI", "FIN", "246", "Finland", $FLAG], "'FI'";
is_deeply [country ("FIN")],
          ["FI", "FIN", "246", "Finland", $FLAG], "'FIN'";
is_deeply [country ("246")],
          ["FI", "FIN", "246", "Finland", $FLAG], "'246'";

# France
is_deeply [country ("FR") ],
          ["FR", "FRA", "250", "France", $FLAG], "'FR'";
is_deeply [country ("FRA")],
          ["FR", "FRA", "250", "France", $FLAG], "'FRA'";
is_deeply [country ("250")],
          ["FR", "FRA", "250", "France", $FLAG], "'250'";

# French Guiana
is_deeply [country ("GF") ],
          ["GF", "GUF", "254", "French Guiana", $FLAG], "'GF'";
is_deeply [country ("GUF")],
          ["GF", "GUF", "254", "French Guiana", $FLAG], "'GUF'";
is_deeply [country ("254")],
          ["GF", "GUF", "254", "French Guiana", $FLAG], "'254'";

# French Polynesia
is_deeply [country ("PF") ],
          ["PF", "PYF", "258", "French Polynesia", $FLAG], "'PF'";
is_deeply [country ("PYF")],
          ["PF", "PYF", "258", "French Polynesia", $FLAG], "'PYF'";
is_deeply [country ("258")],
          ["PF", "PYF", "258", "French Polynesia", $FLAG], "'258'";

# Djibouti
is_deeply [country ("DJ") ],
          ["DJ", "DJI", "262", "Djibouti", $FLAG], "'DJ'";
is_deeply [country ("DJI")],
          ["DJ", "DJI", "262", "Djibouti", $FLAG], "'DJI'";
is_deeply [country ("262")],
          ["DJ", "DJI", "262", "Djibouti", $FLAG], "'262'";

# Gabon
is_deeply [country ("GA") ],
          ["GA", "GAB", "266", "Gabon", $FLAG], "'GA'";
is_deeply [country ("GAB")],
          ["GA", "GAB", "266", "Gabon", $FLAG], "'GAB'";
is_deeply [country ("266")],
          ["GA", "GAB", "266", "Gabon", $FLAG], "'266'";

# Georgia
is_deeply [country ("GE") ],
          ["GE", "GEO", "268", "Georgia", $FLAG], "'GE'";
is_deeply [country ("GEO")],
          ["GE", "GEO", "268", "Georgia", $FLAG], "'GEO'";
is_deeply [country ("268")],
          ["GE", "GEO", "268", "Georgia", $FLAG], "'268'";

# Gambia
is_deeply [country ("GM") ],
          ["GM", "GMB", "270", "Gambia", $FLAG], "'GM'";
is_deeply [country ("GMB")],
          ["GM", "GMB", "270", "Gambia", $FLAG], "'GMB'";
is_deeply [country ("270")],
          ["GM", "GMB", "270", "Gambia", $FLAG], "'270'";

# Occupied Palestinian Territory
is_deeply [country ("PSE")],
          [undef, "PSE", "275", "Occupied Palestinian Territory", $FLAG], "'PSE'";
is_deeply [country ("275")],
          [undef, "PSE", "275", "Occupied Palestinian Territory", $FLAG], "'275'";

# Germany
is_deeply [country ("DE") ],
          ["DE", "DEU", "276", "Germany", $FLAG], "'DE'";
is_deeply [country ("DEU")],
          ["DE", "DEU", "276", "Germany", $FLAG], "'DEU'";
is_deeply [country ("276")],
          ["DE", "DEU", "276", "Germany", $FLAG], "'276'";

# Ghana
is_deeply [country ("GH") ],
          ["GH", "GHA", "288", "Ghana", $FLAG], "'GH'";
is_deeply [country ("GHA")],
          ["GH", "GHA", "288", "Ghana", $FLAG], "'GHA'";
is_deeply [country ("288")],
          ["GH", "GHA", "288", "Ghana", $FLAG], "'288'";

# Gibraltar
is_deeply [country ("GI") ],
          ["GI", "GIB", "292", "Gibraltar", $FLAG], "'GI'";
is_deeply [country ("GIB")],
          ["GI", "GIB", "292", "Gibraltar", $FLAG], "'GIB'";
is_deeply [country ("292")],
          ["GI", "GIB", "292", "Gibraltar", $FLAG], "'292'";

# Kiribati
is_deeply [country ("KI") ],
          ["KI", "KIR", "296", "Kiribati", $FLAG], "'KI'";
is_deeply [country ("KIR")],
          ["KI", "KIR", "296", "Kiribati", $FLAG], "'KIR'";
is_deeply [country ("296")],
          ["KI", "KIR", "296", "Kiribati", $FLAG], "'296'";

# Greece
is_deeply [country ("GR") ],
          ["GR", "GRC", "300", "Greece", $FLAG], "'GR'";
is_deeply [country ("GRC")],
          ["GR", "GRC", "300", "Greece", $FLAG], "'GRC'";
is_deeply [country ("300")],
          ["GR", "GRC", "300", "Greece", $FLAG], "'300'";

# Greenland
is_deeply [country ("GL") ],
          ["GL", "GRL", "304", "Greenland", $FLAG], "'GL'";
is_deeply [country ("GRL")],
          ["GL", "GRL", "304", "Greenland", $FLAG], "'GRL'";
is_deeply [country ("304")],
          ["GL", "GRL", "304", "Greenland", $FLAG], "'304'";

# Grenada
is_deeply [country ("GD") ],
          ["GD", "GRD", "308", "Grenada", $FLAG], "'GD'";
is_deeply [country ("GRD")],
          ["GD", "GRD", "308", "Grenada", $FLAG], "'GRD'";
is_deeply [country ("308")],
          ["GD", "GRD", "308", "Grenada", $FLAG], "'308'";

# Guadeloupe
is_deeply [country ("GP") ],
          ["GP", "GLP", "312", "Guadeloupe", $FLAG], "'GP'";
is_deeply [country ("GLP")],
          ["GP", "GLP", "312", "Guadeloupe", $FLAG], "'GLP'";
is_deeply [country ("312")],
          ["GP", "GLP", "312", "Guadeloupe", $FLAG], "'312'";

# Guam
is_deeply [country ("GU") ],
          ["GU", "GUM", "316", "Guam", $FLAG], "'GU'";
is_deeply [country ("GUM")],
          ["GU", "GUM", "316", "Guam", $FLAG], "'GUM'";
is_deeply [country ("316")],
          ["GU", "GUM", "316", "Guam", $FLAG], "'316'";

# Guatemala
is_deeply [country ("GT") ],
          ["GT", "GTM", "320", "Guatemala", $FLAG], "'GT'";
is_deeply [country ("GTM")],
          ["GT", "GTM", "320", "Guatemala", $FLAG], "'GTM'";
is_deeply [country ("320")],
          ["GT", "GTM", "320", "Guatemala", $FLAG], "'320'";

# Guinea
is_deeply [country ("GN") ],
          ["GN", "GIN", "324", "Guinea", $FLAG], "'GN'";
is_deeply [country ("GIN")],
          ["GN", "GIN", "324", "Guinea", $FLAG], "'GIN'";
is_deeply [country ("324")],
          ["GN", "GIN", "324", "Guinea", $FLAG], "'324'";

# Guyana
is_deeply [country ("GY") ],
          ["GY", "GUY", "328", "Guyana", $FLAG], "'GY'";
is_deeply [country ("GUY")],
          ["GY", "GUY", "328", "Guyana", $FLAG], "'GUY'";
is_deeply [country ("328")],
          ["GY", "GUY", "328", "Guyana", $FLAG], "'328'";

# Haiti
is_deeply [country ("HT") ],
          ["HT", "HTI", "332", "Haiti", $FLAG], "'HT'";
is_deeply [country ("HTI")],
          ["HT", "HTI", "332", "Haiti", $FLAG], "'HTI'";
is_deeply [country ("332")],
          ["HT", "HTI", "332", "Haiti", $FLAG], "'332'";

# Holy See
is_deeply [country ("VA") ],
          ["VA", "VAT", "336", "Holy See", $FLAG], "'VA'";
is_deeply [country ("VAT")],
          ["VA", "VAT", "336", "Holy See", $FLAG], "'VAT'";
is_deeply [country ("336")],
          ["VA", "VAT", "336", "Holy See", $FLAG], "'336'";

# Honduras
is_deeply [country ("HN") ],
          ["HN", "HND", "340", "Honduras", $FLAG], "'HN'";
is_deeply [country ("HND")],
          ["HN", "HND", "340", "Honduras", $FLAG], "'HND'";
is_deeply [country ("340")],
          ["HN", "HND", "340", "Honduras", $FLAG], "'340'";

# Hong Kong Special Administrative Region of China
is_deeply [country ("HK") ],
          ["HK", "HKG", "344", "Hong Kong Special Administrative Region of China", $FLAG], "'HK'";
is_deeply [country ("HKG")],
          ["HK", "HKG", "344", "Hong Kong Special Administrative Region of China", $FLAG], "'HKG'";
is_deeply [country ("344")],
          ["HK", "HKG", "344", "Hong Kong Special Administrative Region of China", $FLAG], "'344'";

# Hungary
is_deeply [country ("HU") ],
          ["HU", "HUN", "348", "Hungary", $FLAG], "'HU'";
is_deeply [country ("HUN")],
          ["HU", "HUN", "348", "Hungary", $FLAG], "'HUN'";
is_deeply [country ("348")],
          ["HU", "HUN", "348", "Hungary", $FLAG], "'348'";

# Iceland
is_deeply [country ("IS") ],
          ["IS", "ISL", "352", "Iceland", $FLAG], "'IS'";
is_deeply [country ("ISL")],
          ["IS", "ISL", "352", "Iceland", $FLAG], "'ISL'";
is_deeply [country ("352")],
          ["IS", "ISL", "352", "Iceland", $FLAG], "'352'";

# India
is_deeply [country ("IN") ],
          ["IN", "IND", "356", "India", $FLAG], "'IN'";
is_deeply [country ("IND")],
          ["IN", "IND", "356", "India", $FLAG], "'IND'";
is_deeply [country ("356")],
          ["IN", "IND", "356", "India", $FLAG], "'356'";

# Indonesia
is_deeply [country ("ID") ],
          ["ID", "IDN", "360", "Indonesia", $FLAG], "'ID'";
is_deeply [country ("IDN")],
          ["ID", "IDN", "360", "Indonesia", $FLAG], "'IDN'";
is_deeply [country ("360")],
          ["ID", "IDN", "360", "Indonesia", $FLAG], "'360'";

# Iran (Islamic Republic of)
is_deeply [country ("IR") ],
          ["IR", "IRN", "364", "Iran (Islamic Republic of)", $FLAG], "'IR'";
is_deeply [country ("IRN")],
          ["IR", "IRN", "364", "Iran (Islamic Republic of)", $FLAG], "'IRN'";
is_deeply [country ("364")],
          ["IR", "IRN", "364", "Iran (Islamic Republic of)", $FLAG], "'364'";

# Iraq
is_deeply [country ("IQ") ],
          ["IQ", "IRQ", "368", "Iraq", $FLAG], "'IQ'";
is_deeply [country ("IRQ")],
          ["IQ", "IRQ", "368", "Iraq", $FLAG], "'IRQ'";
is_deeply [country ("368")],
          ["IQ", "IRQ", "368", "Iraq", $FLAG], "'368'";

# Ireland
is_deeply [country ("IE") ],
          ["IE", "IRL", "372", "Ireland", $FLAG], "'IE'";
is_deeply [country ("IRL")],
          ["IE", "IRL", "372", "Ireland", $FLAG], "'IRL'";
is_deeply [country ("372")],
          ["IE", "IRL", "372", "Ireland", $FLAG], "'372'";

# Israel
is_deeply [country ("IL") ],
          ["IL", "ISR", "376", "Israel", $FLAG], "'IL'";
is_deeply [country ("ISR")],
          ["IL", "ISR", "376", "Israel", $FLAG], "'ISR'";
is_deeply [country ("376")],
          ["IL", "ISR", "376", "Israel", $FLAG], "'376'";

# Italy
is_deeply [country ("IT") ],
          ["IT", "ITA", "380", "Italy", $FLAG], "'IT'";
is_deeply [country ("ITA")],
          ["IT", "ITA", "380", "Italy", $FLAG], "'ITA'";
is_deeply [country ("380")],
          ["IT", "ITA", "380", "Italy", $FLAG], "'380'";

# C\x{f4}te d'Ivoire
is_deeply [country ("CI") ],
          ["CI", "CIV", "384", "C\x{f4}te d'Ivoire", $FLAG], "'CI'";
is_deeply [country ("CIV")],
          ["CI", "CIV", "384", "C\x{f4}te d'Ivoire", $FLAG], "'CIV'";
is_deeply [country ("384")],
          ["CI", "CIV", "384", "C\x{f4}te d'Ivoire", $FLAG], "'384'";

# Jamaica
is_deeply [country ("JM") ],
          ["JM", "JAM", "388", "Jamaica", $FLAG], "'JM'";
is_deeply [country ("JAM")],
          ["JM", "JAM", "388", "Jamaica", $FLAG], "'JAM'";
is_deeply [country ("388")],
          ["JM", "JAM", "388", "Jamaica", $FLAG], "'388'";

# Japan
is_deeply [country ("JP") ],
          ["JP", "JPN", "392", "Japan", $FLAG], "'JP'";
is_deeply [country ("JPN")],
          ["JP", "JPN", "392", "Japan", $FLAG], "'JPN'";
is_deeply [country ("392")],
          ["JP", "JPN", "392", "Japan", $FLAG], "'392'";

# Kazakhstan
is_deeply [country ("KZ") ],
          ["KZ", "KAZ", "398", "Kazakhstan", $FLAG], "'KZ'";
is_deeply [country ("KAZ")],
          ["KZ", "KAZ", "398", "Kazakhstan", $FLAG], "'KAZ'";
is_deeply [country ("398")],
          ["KZ", "KAZ", "398", "Kazakhstan", $FLAG], "'398'";

# Jordan
is_deeply [country ("JO") ],
          ["JO", "JOR", "400", "Jordan", $FLAG], "'JO'";
is_deeply [country ("JOR")],
          ["JO", "JOR", "400", "Jordan", $FLAG], "'JOR'";
is_deeply [country ("400")],
          ["JO", "JOR", "400", "Jordan", $FLAG], "'400'";

# Kenya
is_deeply [country ("KE") ],
          ["KE", "KEN", "404", "Kenya", $FLAG], "'KE'";
is_deeply [country ("KEN")],
          ["KE", "KEN", "404", "Kenya", $FLAG], "'KEN'";
is_deeply [country ("404")],
          ["KE", "KEN", "404", "Kenya", $FLAG], "'404'";

# Democratic People's Republic of Korea
is_deeply [country ("KP") ],
          ["KP", "PRK", "408", "Democratic People's Republic of Korea", $FLAG], "'KP'";
is_deeply [country ("PRK")],
          ["KP", "PRK", "408", "Democratic People's Republic of Korea", $FLAG], "'PRK'";
is_deeply [country ("408")],
          ["KP", "PRK", "408", "Democratic People's Republic of Korea", $FLAG], "'408'";

# Republic of Korea
is_deeply [country ("KR") ],
          ["KR", "KOR", "410", "Republic of Korea", $FLAG], "'KR'";
is_deeply [country ("KOR")],
          ["KR", "KOR", "410", "Republic of Korea", $FLAG], "'KOR'";
is_deeply [country ("410")],
          ["KR", "KOR", "410", "Republic of Korea", $FLAG], "'410'";

# Kuwait
is_deeply [country ("KW") ],
          ["KW", "KWT", "414", "Kuwait", $FLAG], "'KW'";
is_deeply [country ("KWT")],
          ["KW", "KWT", "414", "Kuwait", $FLAG], "'KWT'";
is_deeply [country ("414")],
          ["KW", "KWT", "414", "Kuwait", $FLAG], "'414'";

# Kyrgyzstan
is_deeply [country ("KG") ],
          ["KG", "KGZ", "417", "Kyrgyzstan", $FLAG], "'KG'";
is_deeply [country ("KGZ")],
          ["KG", "KGZ", "417", "Kyrgyzstan", $FLAG], "'KGZ'";
is_deeply [country ("417")],
          ["KG", "KGZ", "417", "Kyrgyzstan", $FLAG], "'417'";

# Lao People's Democratic Republic
is_deeply [country ("LA") ],
          ["LA", "LAO", "418", "Lao People's Democratic Republic", $FLAG], "'LA'";
is_deeply [country ("LAO")],
          ["LA", "LAO", "418", "Lao People's Democratic Republic", $FLAG], "'LAO'";
is_deeply [country ("418")],
          ["LA", "LAO", "418", "Lao People's Democratic Republic", $FLAG], "'418'";

# Lebanon
is_deeply [country ("LB") ],
          ["LB", "LBN", "422", "Lebanon", $FLAG], "'LB'";
is_deeply [country ("LBN")],
          ["LB", "LBN", "422", "Lebanon", $FLAG], "'LBN'";
is_deeply [country ("422")],
          ["LB", "LBN", "422", "Lebanon", $FLAG], "'422'";

# Lesotho
is_deeply [country ("LS") ],
          ["LS", "LSO", "426", "Lesotho", $FLAG], "'LS'";
is_deeply [country ("LSO")],
          ["LS", "LSO", "426", "Lesotho", $FLAG], "'LSO'";
is_deeply [country ("426")],
          ["LS", "LSO", "426", "Lesotho", $FLAG], "'426'";

# Latvia
is_deeply [country ("LV") ],
          ["LV", "LVA", "428", "Latvia", $FLAG], "'LV'";
is_deeply [country ("LVA")],
          ["LV", "LVA", "428", "Latvia", $FLAG], "'LVA'";
is_deeply [country ("428")],
          ["LV", "LVA", "428", "Latvia", $FLAG], "'428'";

# Liberia
is_deeply [country ("LR") ],
          ["LR", "LBR", "430", "Liberia", $FLAG], "'LR'";
is_deeply [country ("LBR")],
          ["LR", "LBR", "430", "Liberia", $FLAG], "'LBR'";
is_deeply [country ("430")],
          ["LR", "LBR", "430", "Liberia", $FLAG], "'430'";

# Libyan Arab Jamahiriya
is_deeply [country ("LY") ],
          ["LY", "LBY", "434", "Libyan Arab Jamahiriya", $FLAG], "'LY'";
is_deeply [country ("LBY")],
          ["LY", "LBY", "434", "Libyan Arab Jamahiriya", $FLAG], "'LBY'";
is_deeply [country ("434")],
          ["LY", "LBY", "434", "Libyan Arab Jamahiriya", $FLAG], "'434'";

# Liechtenstein
is_deeply [country ("LI") ],
          ["LI", "LIE", "438", "Liechtenstein", $FLAG], "'LI'";
is_deeply [country ("LIE")],
          ["LI", "LIE", "438", "Liechtenstein", $FLAG], "'LIE'";
is_deeply [country ("438")],
          ["LI", "LIE", "438", "Liechtenstein", $FLAG], "'438'";

# Lithuania
is_deeply [country ("LT") ],
          ["LT", "LTU", "440", "Lithuania", $FLAG], "'LT'";
is_deeply [country ("LTU")],
          ["LT", "LTU", "440", "Lithuania", $FLAG], "'LTU'";
is_deeply [country ("440")],
          ["LT", "LTU", "440", "Lithuania", $FLAG], "'440'";

# Luxembourg
is_deeply [country ("LU") ],
          ["LU", "LUX", "442", "Luxembourg", $FLAG], "'LU'";
is_deeply [country ("LUX")],
          ["LU", "LUX", "442", "Luxembourg", $FLAG], "'LUX'";
is_deeply [country ("442")],
          ["LU", "LUX", "442", "Luxembourg", $FLAG], "'442'";

# Macau
is_deeply [country ("MO") ],
          ["MO", "MAC", "446", "Macau", $FLAG], "'MO'";
is_deeply [country ("MAC")],
          ["MO", "MAC", "446", "Macau", $FLAG], "'MAC'";
is_deeply [country ("446")],
          ["MO", "MAC", "446", "Macau", $FLAG], "'446'";

# Madagascar
is_deeply [country ("MG") ],
          ["MG", "MDG", "450", "Madagascar", $FLAG], "'MG'";
is_deeply [country ("MDG")],
          ["MG", "MDG", "450", "Madagascar", $FLAG], "'MDG'";
is_deeply [country ("450")],
          ["MG", "MDG", "450", "Madagascar", $FLAG], "'450'";

# Malawi
is_deeply [country ("MW") ],
          ["MW", "MWI", "454", "Malawi", $FLAG], "'MW'";
is_deeply [country ("MWI")],
          ["MW", "MWI", "454", "Malawi", $FLAG], "'MWI'";
is_deeply [country ("454")],
          ["MW", "MWI", "454", "Malawi", $FLAG], "'454'";

# Malaysia
is_deeply [country ("MY") ],
          ["MY", "MYS", "458", "Malaysia", $FLAG], "'MY'";
is_deeply [country ("MYS")],
          ["MY", "MYS", "458", "Malaysia", $FLAG], "'MYS'";
is_deeply [country ("458")],
          ["MY", "MYS", "458", "Malaysia", $FLAG], "'458'";

# Maldives
is_deeply [country ("MV") ],
          ["MV", "MDV", "462", "Maldives", $FLAG], "'MV'";
is_deeply [country ("MDV")],
          ["MV", "MDV", "462", "Maldives", $FLAG], "'MDV'";
is_deeply [country ("462")],
          ["MV", "MDV", "462", "Maldives", $FLAG], "'462'";

# Mali
is_deeply [country ("ML") ],
          ["ML", "MLI", "466", "Mali", $FLAG], "'ML'";
is_deeply [country ("MLI")],
          ["ML", "MLI", "466", "Mali", $FLAG], "'MLI'";
is_deeply [country ("466")],
          ["ML", "MLI", "466", "Mali", $FLAG], "'466'";

# Malta
is_deeply [country ("MT") ],
          ["MT", "MLT", "470", "Malta", $FLAG], "'MT'";
is_deeply [country ("MLT")],
          ["MT", "MLT", "470", "Malta", $FLAG], "'MLT'";
is_deeply [country ("470")],
          ["MT", "MLT", "470", "Malta", $FLAG], "'470'";

# Martinique
is_deeply [country ("MQ") ],
          ["MQ", "MTQ", "474", "Martinique", $FLAG], "'MQ'";
is_deeply [country ("MTQ")],
          ["MQ", "MTQ", "474", "Martinique", $FLAG], "'MTQ'";
is_deeply [country ("474")],
          ["MQ", "MTQ", "474", "Martinique", $FLAG], "'474'";

# Mauritania
is_deeply [country ("MR") ],
          ["MR", "MRT", "478", "Mauritania", $FLAG], "'MR'";
is_deeply [country ("MRT")],
          ["MR", "MRT", "478", "Mauritania", $FLAG], "'MRT'";
is_deeply [country ("478")],
          ["MR", "MRT", "478", "Mauritania", $FLAG], "'478'";

# Mauritius
is_deeply [country ("MU") ],
          ["MU", "MUS", "480", "Mauritius", $FLAG], "'MU'";
is_deeply [country ("MUS")],
          ["MU", "MUS", "480", "Mauritius", $FLAG], "'MUS'";
is_deeply [country ("480")],
          ["MU", "MUS", "480", "Mauritius", $FLAG], "'480'";

# Mexico
is_deeply [country ("MX") ],
          ["MX", "MEX", "484", "Mexico", $FLAG], "'MX'";
is_deeply [country ("MEX")],
          ["MX", "MEX", "484", "Mexico", $FLAG], "'MEX'";
is_deeply [country ("484")],
          ["MX", "MEX", "484", "Mexico", $FLAG], "'484'";

# Monaco
is_deeply [country ("MC") ],
          ["MC", "MCO", "492", "Monaco", $FLAG], "'MC'";
is_deeply [country ("MCO")],
          ["MC", "MCO", "492", "Monaco", $FLAG], "'MCO'";
is_deeply [country ("492")],
          ["MC", "MCO", "492", "Monaco", $FLAG], "'492'";

# Mongolia
is_deeply [country ("MN") ],
          ["MN", "MNG", "496", "Mongolia", $FLAG], "'MN'";
is_deeply [country ("MNG")],
          ["MN", "MNG", "496", "Mongolia", $FLAG], "'MNG'";
is_deeply [country ("496")],
          ["MN", "MNG", "496", "Mongolia", $FLAG], "'496'";

# Republic of Moldova
is_deeply [country ("MD") ],
          ["MD", "MDA", "498", "Republic of Moldova", $FLAG], "'MD'";
is_deeply [country ("MDA")],
          ["MD", "MDA", "498", "Republic of Moldova", $FLAG], "'MDA'";
is_deeply [country ("498")],
          ["MD", "MDA", "498", "Republic of Moldova", $FLAG], "'498'";

# Montserrat
is_deeply [country ("MS") ],
          ["MS", "MSR", "500", "Montserrat", $FLAG], "'MS'";
is_deeply [country ("MSR")],
          ["MS", "MSR", "500", "Montserrat", $FLAG], "'MSR'";
is_deeply [country ("500")],
          ["MS", "MSR", "500", "Montserrat", $FLAG], "'500'";

# Morocco
is_deeply [country ("MA") ],
          ["MA", "MAR", "504", "Morocco", $FLAG], "'MA'";
is_deeply [country ("MAR")],
          ["MA", "MAR", "504", "Morocco", $FLAG], "'MAR'";
is_deeply [country ("504")],
          ["MA", "MAR", "504", "Morocco", $FLAG], "'504'";

# Mozambique
is_deeply [country ("MZ") ],
          ["MZ", "MOZ", "508", "Mozambique", $FLAG], "'MZ'";
is_deeply [country ("MOZ")],
          ["MZ", "MOZ", "508", "Mozambique", $FLAG], "'MOZ'";
is_deeply [country ("508")],
          ["MZ", "MOZ", "508", "Mozambique", $FLAG], "'508'";

# Oman
is_deeply [country ("OM") ],
          ["OM", "OMN", "512", "Oman", $FLAG], "'OM'";
is_deeply [country ("OMN")],
          ["OM", "OMN", "512", "Oman", $FLAG], "'OMN'";
is_deeply [country ("512")],
          ["OM", "OMN", "512", "Oman", $FLAG], "'512'";

# Namibia
is_deeply [country ("NA") ],
          ["NA", "NAM", "516", "Namibia", $FLAG], "'NA'";
is_deeply [country ("NAM")],
          ["NA", "NAM", "516", "Namibia", $FLAG], "'NAM'";
is_deeply [country ("516")],
          ["NA", "NAM", "516", "Namibia", $FLAG], "'516'";

# Nauru
is_deeply [country ("NR") ],
          ["NR", "NRU", "520", "Nauru", $FLAG], "'NR'";
is_deeply [country ("NRU")],
          ["NR", "NRU", "520", "Nauru", $FLAG], "'NRU'";
is_deeply [country ("520")],
          ["NR", "NRU", "520", "Nauru", $FLAG], "'520'";

# Nepal
is_deeply [country ("NP") ],
          ["NP", "NPL", "524", "Nepal", $FLAG], "'NP'";
is_deeply [country ("NPL")],
          ["NP", "NPL", "524", "Nepal", $FLAG], "'NPL'";
is_deeply [country ("524")],
          ["NP", "NPL", "524", "Nepal", $FLAG], "'524'";

# Netherlands
is_deeply [country ("NL") ],
          ["NL", "NLD", "528", "Netherlands", $FLAG], "'NL'";
is_deeply [country ("NLD")],
          ["NL", "NLD", "528", "Netherlands", $FLAG], "'NLD'";
is_deeply [country ("528")],
          ["NL", "NLD", "528", "Netherlands", $FLAG], "'528'";

# Netherlands Antilles
is_deeply [country ("AN") ],
          ["AN", "ANT", "530", "Netherlands Antilles", $FLAG], "'AN'";
is_deeply [country ("ANT")],
          ["AN", "ANT", "530", "Netherlands Antilles", $FLAG], "'ANT'";
is_deeply [country ("530")],
          ["AN", "ANT", "530", "Netherlands Antilles", $FLAG], "'530'";

# Aruba
is_deeply [country ("AW") ],
          ["AW", "ABW", "533", "Aruba", $FLAG], "'AW'";
is_deeply [country ("ABW")],
          ["AW", "ABW", "533", "Aruba", $FLAG], "'ABW'";
is_deeply [country ("533")],
          ["AW", "ABW", "533", "Aruba", $FLAG], "'533'";

# New Caledonia
is_deeply [country ("NC") ],
          ["NC", "NCL", "540", "New Caledonia", $FLAG], "'NC'";
is_deeply [country ("NCL")],
          ["NC", "NCL", "540", "New Caledonia", $FLAG], "'NCL'";
is_deeply [country ("540")],
          ["NC", "NCL", "540", "New Caledonia", $FLAG], "'540'";

# Vanuatu
is_deeply [country ("VU") ],
          ["VU", "VUT", "548", "Vanuatu", $FLAG], "'VU'";
is_deeply [country ("VUT")],
          ["VU", "VUT", "548", "Vanuatu", $FLAG], "'VUT'";
is_deeply [country ("548")],
          ["VU", "VUT", "548", "Vanuatu", $FLAG], "'548'";

# New Zealand
is_deeply [country ("NZ") ],
          ["NZ", "NZL", "554", "New Zealand", $FLAG], "'NZ'";
is_deeply [country ("NZL")],
          ["NZ", "NZL", "554", "New Zealand", $FLAG], "'NZL'";
is_deeply [country ("554")],
          ["NZ", "NZL", "554", "New Zealand", $FLAG], "'554'";

# Nicaragua
is_deeply [country ("NI") ],
          ["NI", "NIC", "558", "Nicaragua", $FLAG], "'NI'";
is_deeply [country ("NIC")],
          ["NI", "NIC", "558", "Nicaragua", $FLAG], "'NIC'";
is_deeply [country ("558")],
          ["NI", "NIC", "558", "Nicaragua", $FLAG], "'558'";

# Niger
is_deeply [country ("NE") ],
          ["NE", "NER", "562", "Niger", $FLAG], "'NE'";
is_deeply [country ("NER")],
          ["NE", "NER", "562", "Niger", $FLAG], "'NER'";
is_deeply [country ("562")],
          ["NE", "NER", "562", "Niger", $FLAG], "'562'";

# Nigeria
is_deeply [country ("NG") ],
          ["NG", "NGA", "566", "Nigeria", $FLAG], "'NG'";
is_deeply [country ("NGA")],
          ["NG", "NGA", "566", "Nigeria", $FLAG], "'NGA'";
is_deeply [country ("566")],
          ["NG", "NGA", "566", "Nigeria", $FLAG], "'566'";

# Niue
is_deeply [country ("NU") ],
          ["NU", "NIU", "570", "Niue", $FLAG], "'NU'";
is_deeply [country ("NIU")],
          ["NU", "NIU", "570", "Niue", $FLAG], "'NIU'";
is_deeply [country ("570")],
          ["NU", "NIU", "570", "Niue", $FLAG], "'570'";

# Norfolk Island
is_deeply [country ("NF") ],
          ["NF", "NFK", "574", "Norfolk Island", $FLAG], "'NF'";
is_deeply [country ("NFK")],
          ["NF", "NFK", "574", "Norfolk Island", $FLAG], "'NFK'";
is_deeply [country ("574")],
          ["NF", "NFK", "574", "Norfolk Island", $FLAG], "'574'";

# Norway
is_deeply [country ("NO") ],
          ["NO", "NOR", "578", "Norway", $FLAG], "'NO'";
is_deeply [country ("NOR")],
          ["NO", "NOR", "578", "Norway", $FLAG], "'NOR'";
is_deeply [country ("578")],
          ["NO", "NOR", "578", "Norway", $FLAG], "'578'";

# Northern Mariana Islands
is_deeply [country ("MP") ],
          ["MP", "MNP", "580", "Northern Mariana Islands", $FLAG], "'MP'";
is_deeply [country ("MNP")],
          ["MP", "MNP", "580", "Northern Mariana Islands", $FLAG], "'MNP'";
is_deeply [country ("580")],
          ["MP", "MNP", "580", "Northern Mariana Islands", $FLAG], "'580'";

# Micronesia, Federated States of
is_deeply [country ("FM") ],
          ["FM", "FSM", "583", "Micronesia, Federated States of", $FLAG], "'FM'";
is_deeply [country ("FSM")],
          ["FM", "FSM", "583", "Micronesia, Federated States of", $FLAG], "'FSM'";
is_deeply [country ("583")],
          ["FM", "FSM", "583", "Micronesia, Federated States of", $FLAG], "'583'";

# Marshall Islands
is_deeply [country ("MH") ],
          ["MH", "MHL", "584", "Marshall Islands", $FLAG], "'MH'";
is_deeply [country ("MHL")],
          ["MH", "MHL", "584", "Marshall Islands", $FLAG], "'MHL'";
is_deeply [country ("584")],
          ["MH", "MHL", "584", "Marshall Islands", $FLAG], "'584'";

# Palau
is_deeply [country ("PW") ],
          ["PW", "PLW", "585", "Palau", $FLAG], "'PW'";
is_deeply [country ("PLW")],
          ["PW", "PLW", "585", "Palau", $FLAG], "'PLW'";
is_deeply [country ("585")],
          ["PW", "PLW", "585", "Palau", $FLAG], "'585'";

# Pakistan
is_deeply [country ("PK") ],
          ["PK", "PAK", "586", "Pakistan", $FLAG], "'PK'";
is_deeply [country ("PAK")],
          ["PK", "PAK", "586", "Pakistan", $FLAG], "'PAK'";
is_deeply [country ("586")],
          ["PK", "PAK", "586", "Pakistan", $FLAG], "'586'";

# Panama
is_deeply [country ("PA") ],
          ["PA", "PAN", "591", "Panama", $FLAG], "'PA'";
is_deeply [country ("PAN")],
          ["PA", "PAN", "591", "Panama", $FLAG], "'PAN'";
is_deeply [country ("591")],
          ["PA", "PAN", "591", "Panama", $FLAG], "'591'";

# Papua New Guinea
is_deeply [country ("PG") ],
          ["PG", "PNG", "598", "Papua New Guinea", $FLAG], "'PG'";
is_deeply [country ("PNG")],
          ["PG", "PNG", "598", "Papua New Guinea", $FLAG], "'PNG'";
is_deeply [country ("598")],
          ["PG", "PNG", "598", "Papua New Guinea", $FLAG], "'598'";

# Paraguay
is_deeply [country ("PY") ],
          ["PY", "PRY", "600", "Paraguay", $FLAG], "'PY'";
is_deeply [country ("PRY")],
          ["PY", "PRY", "600", "Paraguay", $FLAG], "'PRY'";
is_deeply [country ("600")],
          ["PY", "PRY", "600", "Paraguay", $FLAG], "'600'";

# Peru
is_deeply [country ("PE") ],
          ["PE", "PER", "604", "Peru", $FLAG], "'PE'";
is_deeply [country ("PER")],
          ["PE", "PER", "604", "Peru", $FLAG], "'PER'";
is_deeply [country ("604")],
          ["PE", "PER", "604", "Peru", $FLAG], "'604'";

# Philippines
is_deeply [country ("PH") ],
          ["PH", "PHL", "608", "Philippines", $FLAG], "'PH'";
is_deeply [country ("PHL")],
          ["PH", "PHL", "608", "Philippines", $FLAG], "'PHL'";
is_deeply [country ("608")],
          ["PH", "PHL", "608", "Philippines", $FLAG], "'608'";

# Pitcairn
is_deeply [country ("PN") ],
          ["PN", "PCN", "612", "Pitcairn", $FLAG], "'PN'";
is_deeply [country ("PCN")],
          ["PN", "PCN", "612", "Pitcairn", $FLAG], "'PCN'";
is_deeply [country ("612")],
          ["PN", "PCN", "612", "Pitcairn", $FLAG], "'612'";

# Poland
is_deeply [country ("PL") ],
          ["PL", "POL", "616", "Poland", $FLAG], "'PL'";
is_deeply [country ("POL")],
          ["PL", "POL", "616", "Poland", $FLAG], "'POL'";
is_deeply [country ("616")],
          ["PL", "POL", "616", "Poland", $FLAG], "'616'";

# Portugal
is_deeply [country ("PT") ],
          ["PT", "PRT", "620", "Portugal", $FLAG], "'PT'";
is_deeply [country ("PRT")],
          ["PT", "PRT", "620", "Portugal", $FLAG], "'PRT'";
is_deeply [country ("620")],
          ["PT", "PRT", "620", "Portugal", $FLAG], "'620'";

# Guinea-Bissau
is_deeply [country ("GW") ],
          ["GW", "GNB", "624", "Guinea-Bissau", $FLAG], "'GW'";
is_deeply [country ("GNB")],
          ["GW", "GNB", "624", "Guinea-Bissau", $FLAG], "'GNB'";
is_deeply [country ("624")],
          ["GW", "GNB", "624", "Guinea-Bissau", $FLAG], "'624'";

# East Timor
is_deeply [country ("TP") ],
          ["TP", "TMP", "626", "East Timor", $FLAG], "'TP'";
is_deeply [country ("TMP")],
          ["TP", "TMP", "626", "East Timor", $FLAG], "'TMP'";
is_deeply [country ("626")],
          ["TP", "TMP", "626", "East Timor", $FLAG], "'626'";

# Puerto Rico
is_deeply [country ("PR") ],
          ["PR", "PRI", "630", "Puerto Rico", $FLAG], "'PR'";
is_deeply [country ("PRI")],
          ["PR", "PRI", "630", "Puerto Rico", $FLAG], "'PRI'";
is_deeply [country ("630")],
          ["PR", "PRI", "630", "Puerto Rico", $FLAG], "'630'";

# Qatar
is_deeply [country ("QA") ],
          ["QA", "QAT", "634", "Qatar", $FLAG], "'QA'";
is_deeply [country ("QAT")],
          ["QA", "QAT", "634", "Qatar", $FLAG], "'QAT'";
is_deeply [country ("634")],
          ["QA", "QAT", "634", "Qatar", $FLAG], "'634'";

# R\x{e9}union
is_deeply [country ("RE") ],
          ["RE", "REU", "638", "R\x{e9}union", $FLAG], "'RE'";
is_deeply [country ("REU")],
          ["RE", "REU", "638", "R\x{e9}union", $FLAG], "'REU'";
is_deeply [country ("638")],
          ["RE", "REU", "638", "R\x{e9}union", $FLAG], "'638'";

# Romania
is_deeply [country ("RO") ],
          ["RO", "ROM", "642", "Romania", $FLAG], "'RO'";
is_deeply [country ("ROM")],
          ["RO", "ROM", "642", "Romania", $FLAG], "'ROM'";
is_deeply [country ("642")],
          ["RO", "ROM", "642", "Romania", $FLAG], "'642'";

# Russian Federation
is_deeply [country ("RU") ],
          ["RU", "RUS", "643", "Russian Federation", $FLAG], "'RU'";
is_deeply [country ("RUS")],
          ["RU", "RUS", "643", "Russian Federation", $FLAG], "'RUS'";
is_deeply [country ("643")],
          ["RU", "RUS", "643", "Russian Federation", $FLAG], "'643'";

# Rwanda
is_deeply [country ("RW") ],
          ["RW", "RWA", "646", "Rwanda", $FLAG], "'RW'";
is_deeply [country ("RWA")],
          ["RW", "RWA", "646", "Rwanda", $FLAG], "'RWA'";
is_deeply [country ("646")],
          ["RW", "RWA", "646", "Rwanda", $FLAG], "'646'";

# Saint Helena
is_deeply [country ("SH") ],
          ["SH", "SHN", "654", "Saint Helena", $FLAG], "'SH'";
is_deeply [country ("SHN")],
          ["SH", "SHN", "654", "Saint Helena", $FLAG], "'SHN'";
is_deeply [country ("654")],
          ["SH", "SHN", "654", "Saint Helena", $FLAG], "'654'";

# Saint Kitts and Nevis
is_deeply [country ("KN") ],
          ["KN", "KNA", "659", "Saint Kitts and Nevis", $FLAG], "'KN'";
is_deeply [country ("KNA")],
          ["KN", "KNA", "659", "Saint Kitts and Nevis", $FLAG], "'KNA'";
is_deeply [country ("659")],
          ["KN", "KNA", "659", "Saint Kitts and Nevis", $FLAG], "'659'";

# Anguilla
is_deeply [country ("AI") ],
          ["AI", "AIA", "660", "Anguilla", $FLAG], "'AI'";
is_deeply [country ("AIA")],
          ["AI", "AIA", "660", "Anguilla", $FLAG], "'AIA'";
is_deeply [country ("660")],
          ["AI", "AIA", "660", "Anguilla", $FLAG], "'660'";

# Saint Lucia
is_deeply [country ("LC") ],
          ["LC", "LCA", "662", "Saint Lucia", $FLAG], "'LC'";
is_deeply [country ("LCA")],
          ["LC", "LCA", "662", "Saint Lucia", $FLAG], "'LCA'";
is_deeply [country ("662")],
          ["LC", "LCA", "662", "Saint Lucia", $FLAG], "'662'";

# Saint Pierre and Miquelon
is_deeply [country ("PM") ],
          ["PM", "SPM", "666", "Saint Pierre and Miquelon", $FLAG], "'PM'";
is_deeply [country ("SPM")],
          ["PM", "SPM", "666", "Saint Pierre and Miquelon", $FLAG], "'SPM'";
is_deeply [country ("666")],
          ["PM", "SPM", "666", "Saint Pierre and Miquelon", $FLAG], "'666'";

# Saint Vincent and the Grenadines
is_deeply [country ("VC") ],
          ["VC", "VCT", "670", "Saint Vincent and the Grenadines", $FLAG], "'VC'";
is_deeply [country ("VCT")],
          ["VC", "VCT", "670", "Saint Vincent and the Grenadines", $FLAG], "'VCT'";
is_deeply [country ("670")],
          ["VC", "VCT", "670", "Saint Vincent and the Grenadines", $FLAG], "'670'";

# San Marino
is_deeply [country ("SM") ],
          ["SM", "SMR", "674", "San Marino", $FLAG], "'SM'";
is_deeply [country ("SMR")],
          ["SM", "SMR", "674", "San Marino", $FLAG], "'SMR'";
is_deeply [country ("674")],
          ["SM", "SMR", "674", "San Marino", $FLAG], "'674'";

# Sao Tome and Principe
is_deeply [country ("ST") ],
          ["ST", "STP", "678", "Sao Tome and Principe", $FLAG], "'ST'";
is_deeply [country ("STP")],
          ["ST", "STP", "678", "Sao Tome and Principe", $FLAG], "'STP'";
is_deeply [country ("678")],
          ["ST", "STP", "678", "Sao Tome and Principe", $FLAG], "'678'";

# Saudi Arabia
is_deeply [country ("SA") ],
          ["SA", "SAU", "682", "Saudi Arabia", $FLAG], "'SA'";
is_deeply [country ("SAU")],
          ["SA", "SAU", "682", "Saudi Arabia", $FLAG], "'SAU'";
is_deeply [country ("682")],
          ["SA", "SAU", "682", "Saudi Arabia", $FLAG], "'682'";

# Senegal
is_deeply [country ("SN") ],
          ["SN", "SEN", "686", "Senegal", $FLAG], "'SN'";
is_deeply [country ("SEN")],
          ["SN", "SEN", "686", "Senegal", $FLAG], "'SEN'";
is_deeply [country ("686")],
          ["SN", "SEN", "686", "Senegal", $FLAG], "'686'";

# Seychelles
is_deeply [country ("SC") ],
          ["SC", "SYC", "690", "Seychelles", $FLAG], "'SC'";
is_deeply [country ("SYC")],
          ["SC", "SYC", "690", "Seychelles", $FLAG], "'SYC'";
is_deeply [country ("690")],
          ["SC", "SYC", "690", "Seychelles", $FLAG], "'690'";

# Sierra Leone
is_deeply [country ("SL") ],
          ["SL", "SLE", "694", "Sierra Leone", $FLAG], "'SL'";
is_deeply [country ("SLE")],
          ["SL", "SLE", "694", "Sierra Leone", $FLAG], "'SLE'";
is_deeply [country ("694")],
          ["SL", "SLE", "694", "Sierra Leone", $FLAG], "'694'";

# Singapore
is_deeply [country ("SG") ],
          ["SG", "SGP", "702", "Singapore", $FLAG], "'SG'";
is_deeply [country ("SGP")],
          ["SG", "SGP", "702", "Singapore", $FLAG], "'SGP'";
is_deeply [country ("702")],
          ["SG", "SGP", "702", "Singapore", $FLAG], "'702'";

# Slovakia
is_deeply [country ("SK") ],
          ["SK", "SVK", "703", "Slovakia", $FLAG], "'SK'";
is_deeply [country ("SVK")],
          ["SK", "SVK", "703", "Slovakia", $FLAG], "'SVK'";
is_deeply [country ("703")],
          ["SK", "SVK", "703", "Slovakia", $FLAG], "'703'";

# Viet Nam
is_deeply [country ("VN") ],
          ["VN", "VNM", "704", "Viet Nam", $FLAG], "'VN'";
is_deeply [country ("VNM")],
          ["VN", "VNM", "704", "Viet Nam", $FLAG], "'VNM'";
is_deeply [country ("704")],
          ["VN", "VNM", "704", "Viet Nam", $FLAG], "'704'";

# Slovenia
is_deeply [country ("SI") ],
          ["SI", "SVN", "705", "Slovenia", $FLAG], "'SI'";
is_deeply [country ("SVN")],
          ["SI", "SVN", "705", "Slovenia", $FLAG], "'SVN'";
is_deeply [country ("705")],
          ["SI", "SVN", "705", "Slovenia", $FLAG], "'705'";

# Somalia
is_deeply [country ("SO") ],
          ["SO", "SOM", "706", "Somalia", $FLAG], "'SO'";
is_deeply [country ("SOM")],
          ["SO", "SOM", "706", "Somalia", $FLAG], "'SOM'";
is_deeply [country ("706")],
          ["SO", "SOM", "706", "Somalia", $FLAG], "'706'";

# South Africa
is_deeply [country ("ZA") ],
          ["ZA", "ZAF", "710", "South Africa", $FLAG], "'ZA'";
is_deeply [country ("ZAF")],
          ["ZA", "ZAF", "710", "South Africa", $FLAG], "'ZAF'";
is_deeply [country ("710")],
          ["ZA", "ZAF", "710", "South Africa", $FLAG], "'710'";

# Zimbabwe
is_deeply [country ("ZW") ],
          ["ZW", "ZWE", "716", "Zimbabwe", $FLAG], "'ZW'";
is_deeply [country ("ZWE")],
          ["ZW", "ZWE", "716", "Zimbabwe", $FLAG], "'ZWE'";
is_deeply [country ("716")],
          ["ZW", "ZWE", "716", "Zimbabwe", $FLAG], "'716'";

# Spain
is_deeply [country ("ES") ],
          ["ES", "ESP", "724", "Spain", $FLAG], "'ES'";
is_deeply [country ("ESP")],
          ["ES", "ESP", "724", "Spain", $FLAG], "'ESP'";
is_deeply [country ("724")],
          ["ES", "ESP", "724", "Spain", $FLAG], "'724'";

# Western Sahara
is_deeply [country ("EH") ],
          ["EH", "ESH", "732", "Western Sahara", $FLAG], "'EH'";
is_deeply [country ("ESH")],
          ["EH", "ESH", "732", "Western Sahara", $FLAG], "'ESH'";
is_deeply [country ("732")],
          ["EH", "ESH", "732", "Western Sahara", $FLAG], "'732'";

# Sudan
is_deeply [country ("SD") ],
          ["SD", "SDN", "736", "Sudan", $FLAG], "'SD'";
is_deeply [country ("SDN")],
          ["SD", "SDN", "736", "Sudan", $FLAG], "'SDN'";
is_deeply [country ("736")],
          ["SD", "SDN", "736", "Sudan", $FLAG], "'736'";

# Suriname
is_deeply [country ("SR") ],
          ["SR", "SUR", "740", "Suriname", $FLAG], "'SR'";
is_deeply [country ("SUR")],
          ["SR", "SUR", "740", "Suriname", $FLAG], "'SUR'";
is_deeply [country ("740")],
          ["SR", "SUR", "740", "Suriname", $FLAG], "'740'";

# Svalbard and Jan Mayen Islands
is_deeply [country ("SJ") ],
          ["SJ", "SJM", "744", "Svalbard and Jan Mayen Islands", $FLAG], "'SJ'";
is_deeply [country ("SJM")],
          ["SJ", "SJM", "744", "Svalbard and Jan Mayen Islands", $FLAG], "'SJM'";
is_deeply [country ("744")],
          ["SJ", "SJM", "744", "Svalbard and Jan Mayen Islands", $FLAG], "'744'";

# Swaziland
is_deeply [country ("SZ") ],
          ["SZ", "SWZ", "748", "Swaziland", $FLAG], "'SZ'";
is_deeply [country ("SWZ")],
          ["SZ", "SWZ", "748", "Swaziland", $FLAG], "'SWZ'";
is_deeply [country ("748")],
          ["SZ", "SWZ", "748", "Swaziland", $FLAG], "'748'";

# Sweden
is_deeply [country ("SE") ],
          ["SE", "SWE", "752", "Sweden", $FLAG], "'SE'";
is_deeply [country ("SWE")],
          ["SE", "SWE", "752", "Sweden", $FLAG], "'SWE'";
is_deeply [country ("752")],
          ["SE", "SWE", "752", "Sweden", $FLAG], "'752'";

# Switzerland
is_deeply [country ("CH") ],
          ["CH", "CHE", "756", "Switzerland", $FLAG], "'CH'";
is_deeply [country ("CHE")],
          ["CH", "CHE", "756", "Switzerland", $FLAG], "'CHE'";
is_deeply [country ("756")],
          ["CH", "CHE", "756", "Switzerland", $FLAG], "'756'";

# Syrian Arab Republic
is_deeply [country ("SY") ],
          ["SY", "SYR", "760", "Syrian Arab Republic", $FLAG], "'SY'";
is_deeply [country ("SYR")],
          ["SY", "SYR", "760", "Syrian Arab Republic", $FLAG], "'SYR'";
is_deeply [country ("760")],
          ["SY", "SYR", "760", "Syrian Arab Republic", $FLAG], "'760'";

# Tajikistan
is_deeply [country ("TJ") ],
          ["TJ", "TJK", "762", "Tajikistan", $FLAG], "'TJ'";
is_deeply [country ("TJK")],
          ["TJ", "TJK", "762", "Tajikistan", $FLAG], "'TJK'";
is_deeply [country ("762")],
          ["TJ", "TJK", "762", "Tajikistan", $FLAG], "'762'";

# Thailand
is_deeply [country ("TH") ],
          ["TH", "THA", "764", "Thailand", $FLAG], "'TH'";
is_deeply [country ("THA")],
          ["TH", "THA", "764", "Thailand", $FLAG], "'THA'";
is_deeply [country ("764")],
          ["TH", "THA", "764", "Thailand", $FLAG], "'764'";

# Togo
is_deeply [country ("TG") ],
          ["TG", "TGO", "768", "Togo", $FLAG], "'TG'";
is_deeply [country ("TGO")],
          ["TG", "TGO", "768", "Togo", $FLAG], "'TGO'";
is_deeply [country ("768")],
          ["TG", "TGO", "768", "Togo", $FLAG], "'768'";

# Tokelau
is_deeply [country ("TK") ],
          ["TK", "TKL", "772", "Tokelau", $FLAG], "'TK'";
is_deeply [country ("TKL")],
          ["TK", "TKL", "772", "Tokelau", $FLAG], "'TKL'";
is_deeply [country ("772")],
          ["TK", "TKL", "772", "Tokelau", $FLAG], "'772'";

# Tonga
is_deeply [country ("TO") ],
          ["TO", "TON", "776", "Tonga", $FLAG], "'TO'";
is_deeply [country ("TON")],
          ["TO", "TON", "776", "Tonga", $FLAG], "'TON'";
is_deeply [country ("776")],
          ["TO", "TON", "776", "Tonga", $FLAG], "'776'";

# Trinidad and Tobago
is_deeply [country ("TT") ],
          ["TT", "TTO", "780", "Trinidad and Tobago", $FLAG], "'TT'";
is_deeply [country ("TTO")],
          ["TT", "TTO", "780", "Trinidad and Tobago", $FLAG], "'TTO'";
is_deeply [country ("780")],
          ["TT", "TTO", "780", "Trinidad and Tobago", $FLAG], "'780'";

# United Arab Emirates
is_deeply [country ("AE") ],
          ["AE", "ARE", "784", "United Arab Emirates", $FLAG], "'AE'";
is_deeply [country ("ARE")],
          ["AE", "ARE", "784", "United Arab Emirates", $FLAG], "'ARE'";
is_deeply [country ("784")],
          ["AE", "ARE", "784", "United Arab Emirates", $FLAG], "'784'";

# Tunisia
is_deeply [country ("TN") ],
          ["TN", "TUN", "788", "Tunisia", $FLAG], "'TN'";
is_deeply [country ("TUN")],
          ["TN", "TUN", "788", "Tunisia", $FLAG], "'TUN'";
is_deeply [country ("788")],
          ["TN", "TUN", "788", "Tunisia", $FLAG], "'788'";

# Turkey
is_deeply [country ("TR") ],
          ["TR", "TUR", "792", "Turkey", $FLAG], "'TR'";
is_deeply [country ("TUR")],
          ["TR", "TUR", "792", "Turkey", $FLAG], "'TUR'";
is_deeply [country ("792")],
          ["TR", "TUR", "792", "Turkey", $FLAG], "'792'";

# Turkmenistan
is_deeply [country ("TM") ],
          ["TM", "TKM", "795", "Turkmenistan", $FLAG], "'TM'";
is_deeply [country ("TKM")],
          ["TM", "TKM", "795", "Turkmenistan", $FLAG], "'TKM'";
is_deeply [country ("795")],
          ["TM", "TKM", "795", "Turkmenistan", $FLAG], "'795'";

# Turks and Caicos Islands
is_deeply [country ("TC") ],
          ["TC", "TCA", "796", "Turks and Caicos Islands", $FLAG], "'TC'";
is_deeply [country ("TCA")],
          ["TC", "TCA", "796", "Turks and Caicos Islands", $FLAG], "'TCA'";
is_deeply [country ("796")],
          ["TC", "TCA", "796", "Turks and Caicos Islands", $FLAG], "'796'";

# Tuvalu
is_deeply [country ("TV") ],
          ["TV", "TUV", "798", "Tuvalu", $FLAG], "'TV'";
is_deeply [country ("TUV")],
          ["TV", "TUV", "798", "Tuvalu", $FLAG], "'TUV'";
is_deeply [country ("798")],
          ["TV", "TUV", "798", "Tuvalu", $FLAG], "'798'";

# Uganda
is_deeply [country ("UG") ],
          ["UG", "UGA", "800", "Uganda", $FLAG], "'UG'";
is_deeply [country ("UGA")],
          ["UG", "UGA", "800", "Uganda", $FLAG], "'UGA'";
is_deeply [country ("800")],
          ["UG", "UGA", "800", "Uganda", $FLAG], "'800'";

# Ukraine
is_deeply [country ("UA") ],
          ["UA", "UKR", "804", "Ukraine", $FLAG], "'UA'";
is_deeply [country ("UKR")],
          ["UA", "UKR", "804", "Ukraine", $FLAG], "'UKR'";
is_deeply [country ("804")],
          ["UA", "UKR", "804", "Ukraine", $FLAG], "'804'";

# The former Yugoslav Republic of Macedonia
is_deeply [country ("MK") ],
          ["MK", "MKD", "807", "The former Yugoslav Republic of Macedonia", $FLAG], "'MK'";
is_deeply [country ("MKD")],
          ["MK", "MKD", "807", "The former Yugoslav Republic of Macedonia", $FLAG], "'MKD'";
is_deeply [country ("807")],
          ["MK", "MKD", "807", "The former Yugoslav Republic of Macedonia", $FLAG], "'807'";

# Egypt
is_deeply [country ("EG") ],
          ["EG", "EGY", "818", "Egypt", $FLAG], "'EG'";
is_deeply [country ("EGY")],
          ["EG", "EGY", "818", "Egypt", $FLAG], "'EGY'";
is_deeply [country ("818")],
          ["EG", "EGY", "818", "Egypt", $FLAG], "'818'";

# United Kingdom
is_deeply [country ("GB") ],
          ["GB", "GBR", "826", "United Kingdom", $FLAG], "'GB'";
is_deeply [country ("GBR")],
          ["GB", "GBR", "826", "United Kingdom", $FLAG], "'GBR'";
is_deeply [country ("826")],
          ["GB", "GBR", "826", "United Kingdom", $FLAG], "'826'";

# Channel Islands
is_deeply [country ("830")],
          [undef, undef, "830", "Channel Islands", $FLAG], "'830'";

# Isle of Man
is_deeply [country ("IMY")],
          [undef, "IMY", "833", "Isle of Man", $FLAG], "'IMY'";
is_deeply [country ("833")],
          [undef, "IMY", "833", "Isle of Man", $FLAG], "'833'";

# United Republic of Tanzania
is_deeply [country ("TZ") ],
          ["TZ", "TZA", "834", "United Republic of Tanzania", $FLAG], "'TZ'";
is_deeply [country ("TZA")],
          ["TZ", "TZA", "834", "United Republic of Tanzania", $FLAG], "'TZA'";
is_deeply [country ("834")],
          ["TZ", "TZA", "834", "United Republic of Tanzania", $FLAG], "'834'";

# United States
is_deeply [country ("US") ],
          ["US", "USA", "840", "United States", $FLAG], "'US'";
is_deeply [country ("USA")],
          ["US", "USA", "840", "United States", $FLAG], "'USA'";
is_deeply [country ("840")],
          ["US", "USA", "840", "United States", $FLAG], "'840'";

# United States Virgin Islands
is_deeply [country ("VI") ],
          ["VI", "VIR", "850", "United States Virgin Islands", $FLAG], "'VI'";
is_deeply [country ("VIR")],
          ["VI", "VIR", "850", "United States Virgin Islands", $FLAG], "'VIR'";
is_deeply [country ("850")],
          ["VI", "VIR", "850", "United States Virgin Islands", $FLAG], "'850'";

# Burkina Faso
is_deeply [country ("BF") ],
          ["BF", "BFA", "854", "Burkina Faso", $FLAG], "'BF'";
is_deeply [country ("BFA")],
          ["BF", "BFA", "854", "Burkina Faso", $FLAG], "'BFA'";
is_deeply [country ("854")],
          ["BF", "BFA", "854", "Burkina Faso", $FLAG], "'854'";

# Uruguay
is_deeply [country ("UY") ],
          ["UY", "URY", "858", "Uruguay", $FLAG], "'UY'";
is_deeply [country ("URY")],
          ["UY", "URY", "858", "Uruguay", $FLAG], "'URY'";
is_deeply [country ("858")],
          ["UY", "URY", "858", "Uruguay", $FLAG], "'858'";

# Uzbekistan
is_deeply [country ("UZ") ],
          ["UZ", "UZB", "860", "Uzbekistan", $FLAG], "'UZ'";
is_deeply [country ("UZB")],
          ["UZ", "UZB", "860", "Uzbekistan", $FLAG], "'UZB'";
is_deeply [country ("860")],
          ["UZ", "UZB", "860", "Uzbekistan", $FLAG], "'860'";

# Venezuela
is_deeply [country ("VE") ],
          ["VE", "VEN", "862", "Venezuela", $FLAG], "'VE'";
is_deeply [country ("VEN")],
          ["VE", "VEN", "862", "Venezuela", $FLAG], "'VEN'";
is_deeply [country ("862")],
          ["VE", "VEN", "862", "Venezuela", $FLAG], "'862'";

# Wallis and Futuna Islands
is_deeply [country ("WF") ],
          ["WF", "WLF", "876", "Wallis and Futuna Islands", $FLAG], "'WF'";
is_deeply [country ("WLF")],
          ["WF", "WLF", "876", "Wallis and Futuna Islands", $FLAG], "'WLF'";
is_deeply [country ("876")],
          ["WF", "WLF", "876", "Wallis and Futuna Islands", $FLAG], "'876'";

# Samoa
is_deeply [country ("WS") ],
          ["WS", "WSM", "882", "Samoa", $FLAG], "'WS'";
is_deeply [country ("WSM")],
          ["WS", "WSM", "882", "Samoa", $FLAG], "'WSM'";
is_deeply [country ("882")],
          ["WS", "WSM", "882", "Samoa", $FLAG], "'882'";

# Yemen
is_deeply [country ("YE") ],
          ["YE", "YEM", "887", "Yemen", $FLAG], "'YE'";
is_deeply [country ("YEM")],
          ["YE", "YEM", "887", "Yemen", $FLAG], "'YEM'";
is_deeply [country ("887")],
          ["YE", "YEM", "887", "Yemen", $FLAG], "'887'";

# Yugoslavia
is_deeply [country ("YU") ],
          ["YU", "YUG", "891", "Yugoslavia", $FLAG], "'YU'";
is_deeply [country ("YUG")],
          ["YU", "YUG", "891", "Yugoslavia", $FLAG], "'YUG'";
is_deeply [country ("891")],
          ["YU", "YUG", "891", "Yugoslavia", $FLAG], "'891'";

# Zambia
is_deeply [country ("ZM") ],
          ["ZM", "ZMB", "894", "Zambia", $FLAG], "'ZM'";
is_deeply [country ("ZMB")],
          ["ZM", "ZMB", "894", "Zambia", $FLAG], "'ZMB'";
is_deeply [country ("894")],
          ["ZM", "ZMB", "894", "Zambia", $FLAG], "'894'";

# Areas not elsewhere specified
is_deeply [country ("896")],
          [undef, undef, "896", "Areas not elsewhere specified", $FLAG], "'896'";

# Areas not specified
is_deeply [country ("898")],
          [undef, undef, "898", "Areas not specified", $FLAG], "'898'";

__END__
