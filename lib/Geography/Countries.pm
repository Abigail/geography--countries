package Geography::Countries;

use 5.006;

use strict;
use warnings;
no  warnings 'syntax';

use Exporter ();

our @ISA         = qw /Exporter/;
our @EXPORT      = qw /country/;
our @EXPORT_OK   = qw /code2         code3       numcode       countries
                       CNT_I_CODE2   CNT_I_CODE3 CNT_I_NUMCODE CNT_I_COUNTRY
                       CNT_I_FLAG
                       CNT_F_REGULAR CNT_F_OLD   CNT_F_REGION  CNT_F_ANY/;
our %EXPORT_TAGS = (LISTS   => [qw /code2 code3   numcode     countries/],
                    INDICES => [qw /CNT_I_CODE2   CNT_I_CODE3 CNT_I_NUMCODE
                                    CNT_I_COUNTRY CNT_I_FLAG/],
                    FLAGS   => [qw /CNT_F_REGULAR CNT_F_OLD
                                    CNT_F_REGION  CNT_F_ANY/],);

our $VERSION     = '2009041301';

sub init_data;

use constant CNT_I_CODE2   =>    0;
use constant CNT_I_CODE3   =>    1;
use constant CNT_I_NUMCODE =>    2;
use constant CNT_I_COUNTRY =>    3;
use constant CNT_I_FLAG    =>    4;

use constant CNT_F_REGULAR => 0x01;
use constant CNT_F_OLD     => 0x02;
use constant CNT_F_REGION  => 0x04;
use constant CNT_F_ANY     => CNT_F_REGULAR | CNT_F_OLD | CNT_F_REGION;

my (@code2, @code3, @numcode, @countries);

sub norm ($) {
    my $query = shift;
    die "Illegal argument to norm\n" unless defined $query;
    return sprintf "%03d" => $query  unless $query =~ /\D/;
    $query =  lc $query;
    $query =~ s/\s+//g;

    $query;
}

my $flag;
my %flags   = (
    Regular => CNT_F_REGULAR,
    Old     => CNT_F_OLD,
    Region  => CNT_F_REGION,
);
my %info = init_data;

@code2     = sort @code2;
@code3     = sort @code3;
@numcode   = sort @numcode;
@countries = sort @countries;

sub code2     {@code2}
sub code3     {@code3}
sub numcode   {@numcode}
sub countries {@countries}


sub country ($;$) {
    my $sub = (caller (0)) [3];

    die "No arguments for $sub.\n"           unless @_;
    die "Too many arguments for $sub.\n"     unless @_ <= 2;

    my ($query, $flags) = @_;

    die "Undefined argument for $sub.\n"     unless defined $query;

    $flags ||=  CNT_F_REGULAR;

    die "Illegal second argument to $sub.\n" if $flags =~ /\D/;

    my $info =  $info {norm $query} or return;

    return unless $info -> [CNT_I_FLAG] & $flags;

    wantarray ? @$info : $info -> [CNT_I_COUNTRY];

}

1;

=pod

=head1 NAME

Geography::Countries - 2-letter, 3-letter, and numerical codes for countries.

=head1 SYNOPSIS

    use Geography::Countries;

    $country = country 'DE';  # 'Germany'
    @list    = country  666;  # ('PM', 'SPM', 666,
                              #  'Saint Pierre and Miquelon', 1)

=head1 DESCRIPTION

This module maps country names, and their 2-letter, 3-letter and
numerical codes, as defined by the ISO-3166 maintenance agency [1],
and defined by the UNSD.

=head2 The C<country> subroutine.

This subroutine is exported by default. It takes a 2-letter, 3-letter or
numerical code, or a country name as argument. In scalar context, it will
return the country name, in list context, it will return a list consisting
of the 2-letter code, the 3-letter code, the numerical code, the country
name, and a flag, which is explained below. Note that not all countries
have all 3 codes; if a code is unknown, the undefined value is returned.

There are 3 categories of countries. The largest category are the 
current countries. Then there is a small set of countries that no
longer exist. The final set consists of areas consisting of multiple
countries, like I<Africa>. No 2-letter or 3-letter codes are available
for the second two sets. (ISO 3166-3 [3] defines 4 letter codes for the
set of countries that no longer exist, but the author of this module
was unable to get her hands on that standard.) By default, C<country>
only returns countries from the first set, but this can be changed
by giving C<country> an optional second argument.

The module optionally exports the constants C<CNT_F_REGULAR>,
C<CNT_F_OLD>, C<CNT_F_REGION> and C<CNT_F_ANY>. These constants can also
be important all at once by using the tag C<:FLAGS>. C<CNT_F_ANY> is just
the binary or of the three other flags. The second argument of C<country>
should be the binary or of a subset of the flags C<CNT_F_REGULAR>,
C<CNT_F_OLD>, and C<CNT_F_REGION> - if no, or a false, second argument is
given, C<CNT_F_REGULAR> is assumed. If C<CNT_F_REGULAR> is set, regular
(current) countries will be returned; if C<CNT_F_OLD> is set, old,
no longer existing, countries will be returned, while C<CNT_F_REGION>
is used in case a region (not necessarely) a country might be returned.
If C<country> is used in list context, the fifth returned element is
one of C<CNT_F_REGULAR>, C<CNT_F_OLD> and C<CNT_F_REGION>, indicating
whether the result is a regular country, an old country, or a region.

In list context, C<country> returns a 5 element list. To avoid having
to remember which element is in which index, the constants C<CNT_I_CODE2>,
C<CNT_I_CODE3>, C<CNT_I_NUMCODE>, C<CNT_I_COUNTRY> and C<CNT_I_FLAG>
can be imported. Those constants contain the indices of the 2-letter code,
the 3-letter code, the numerical code, the country, and the flag explained
above, respectively. All index constants can be imported by using the
C<:INDICES> tag.

=head2 The C<code2>, C<code3>, C<numcode> and C<countries> routines.

All known 2-letter codes, 3-letter codes, numerical codes and country
names can be returned by the routines C<code2>, C<code3>, C<numcode> and
C<countries>. None of these methods is exported by default; all need to
be imported if one wants to use them. The tag C<:LISTS> imports them 
all. In scalar context, the number of known codes or countries is returned.

=head1 REFERENCES

The 2-letter codes come from the ISO 3166-1:1997 standard [2]. ISO 3166
bases its list of country names on the list of names published by
the United Nations. This list is published by the Statistical Division
of the United Nations [4]. The UNSD uses 3-letter codes, and numerical
codes [5]. The information about old countries [6] and regions [7] also
comes from the United Nations.

In a few cases, there was a conflict between the way how the United 
Nations spelled a name, and how ISO 3166 spells it. In most cases,
is was word order (for instance whether I<The republic of> should
preceed the name, or come after the name. A few cases had minor
spelling variations. In all such cases, the method in which the UN
spelled the name was choosen; ISO 3166 claims to take the names from
the UN, so we consider the UN authoritative.

=over 4

=item [1]

ISO Maintenance Agency (ISO 3166/MA)
I<http://www.din.de/gremien/nas/nabd/iso3166ma/index.html>.

=item [2]

I<Country codes>,
I<http://www.din.de/gremien/nas/nabd/iso3166ma/codlstp1.html>,
7 September 1999.

=item [3]

ISO 3166-3, I<Code for formerly used country names>.
I<http://www.din.de/gremien/nas/nabd/iso3166ma/info_pt3.html>.

=item [4]

United Nations, Statistics Division.
I<http://www.un.org/Depts/unsd/statdiv.htm>.

=item [5]

I<Country or area codes in alphabetical order>.
I<http://www.un.org/Depts/unsd/methods/m49alpha.htm>,
26 August 1999.

=item [6]

I<Codes added or changed>.
I<http://www.un.org/Depts/unsd/methods/m49chang.htm>,
26 August 1999.

=item [7]

I<Geographical regions>.
I<http://www.un.org/Depts/unsd/methods/m49regin.htm>,
26 August 1999.

=back

=head1 BUGS

Looking up information using country names is far from perfect.
Except for case and the amount of white space, the exact name as it
appears on the list has to be given. I<USA> will not return anything,
but I<United States> will.

=head1 DEVELOPMENT
    
The current sources of this module are found on github,
L<< git://github.com/Abigail/geography--countries.git >>.
    
=head1 AUTHOR
    
Abigail L<< mailto:geography-countries@abigail.be >>.
    
=head1 COPYRIGHT and LICENSE
       
Copyright (C) 1999, 2009 by Abigail
    
Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the "Software"),
to deal in the Software without restriction, including without limitation
the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
THE AUTHOR BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT
OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

=cut

sub init_data {
    my   @data;

    # "Regular" countries.
    push @data => [ 'AF', 'AFG', '004', "Afghanistan"];
    push @data => [ 'AL', 'ALB', '008', "Albania"];
    push @data => [ 'DZ', 'DZA', '012', "Algeria"];
    push @data => [ 'AS', 'ASM', '016', "American Samoa"];
    push @data => [ 'AD', 'AND', '020', "Andorra"];
    push @data => [ 'AO', 'AGO', '024', "Angola"];
    push @data => [ 'AI', 'AIA', '660', "Anguilla"];
    push @data => [ 'AQ', undef, undef, "Antarctica"];
    push @data => [ 'AG', 'ATG', '028', "Antigua and Barbuda"];
    push @data => [undef, undef, '896', "Areas not elsewhere specified"];
    push @data => [undef, undef, '898', "Areas not specified"];
    push @data => [ 'AR', 'ARG', '032', "Argentina"];
    push @data => [ 'AM', 'ARM', '051', "Armenia"];
    push @data => [ 'AW', 'ABW', '533', "Aruba"];
    push @data => [ 'AU', 'AUS', '036', "Australia"];
    push @data => [ 'AT', 'AUT', '040', "Austria"];
    push @data => [ 'AZ', 'AZE', '031', "Azerbaijan"];
    push @data => [ 'BS', 'BHS', '044', "Bahamas"];
    push @data => [ 'BH', 'BHR', '048', "Bahrain"];
    push @data => [ 'BD', 'BGD', '050', "Bangladesh"];
    push @data => [ 'BB', 'BRB', '052', "Barbados"];
    push @data => [ 'BY', 'BLR', '112', "Belarus"];
    push @data => [ 'BE', 'BEL', '056', "Belgium"];
    push @data => [ 'BZ', 'BLZ', '084', "Belize"];
    push @data => [ 'BJ', 'BEN', '204', "Benin"];
    push @data => [ 'BM', 'BMU', '060', "Bermuda"];
    push @data => [ 'BT', 'BTN', '064', "Bhutan"];
    push @data => [ 'BO', 'BOL', '068', "Bolivia"];
    push @data => [ 'BA', 'BIH', '070', "Bosnia and Herzegovina"];
    push @data => [ 'BW', 'BWA', '072', "Botswana"];
    push @data => [ 'BV', undef, undef, "Bouvet Island"];
    push @data => [ 'BR', 'BRA', '076', "Brazil"];
    push @data => [ 'IO', undef, undef, "British Indian Ocean Territory"];
    push @data => [ 'VG', 'VGB', '092', "British Virgin Islands"];
    push @data => [ 'BN', 'BRN', '096', "Brunei Darussalam"];
    push @data => [ 'BG', 'BGR', '100', "Bulgaria"];
    push @data => [ 'BF', 'BFA', '854', "Burkina Faso"];
    push @data => [ 'BI', 'BDI', '108', "Burundi"];
    push @data => [ 'KH', 'KHM', '116', "Cambodia"];
    push @data => [ 'CM', 'CMR', '120', "Cameroon"];
    push @data => [ 'CA', 'CAN', '124', "Canada"];
    push @data => [ 'CV', 'CPV', '132', "Cape Verde"];
    push @data => [ 'KY', 'CYM', '136', "Cayman Islands"];
    push @data => [ 'CF', 'CAF', '140', "Central African Republic"];
    push @data => [ 'TD', 'TCD', '148', "Chad"];
    push @data => [undef, undef, '830', "Channel Islands"];
    push @data => [ 'CL', 'CHL', '152', "Chile"];
    push @data => [ 'CN', 'CHN', '156', "China"];
    push @data => [ 'CX', undef, undef, "Christmas Island"];
    push @data => [ 'CC', undef, undef, "Cocos (keeling) Islands"];
    push @data => [ 'CO', 'COL', '170', "Colombia"];
    push @data => [ 'KM', 'COM', '174', "Comoros"];
    push @data => [ 'CG', 'COG', '178', "Congo"];
    push @data => [ 'CK', 'COK', '184', "Cook Islands"];
    push @data => [ 'CR', 'CRI', '188', "Costa Rica"];
    push @data => [ 'CI', 'CIV', '384', "C\x{f4}te d'Ivoire"];
    push @data => [ 'HR', 'HRV', '191', "Croatia"];
    push @data => [ 'CU', 'CUB', '192', "Cuba"];
    push @data => [ 'CY', 'CYP', '196', "Cyprus"];
    push @data => [ 'CZ', 'CZE', '203', "Czech Republic"];
    push @data => [ 'KP', 'PRK', '408',
                                 "Democratic People's Republic of Korea"];
    push @data => [ 'CD', 'COD', '180', "Democratic Republic of the Congo"];
    push @data => [ 'DK', 'DNK', '208', "Denmark"];
    push @data => [ 'DJ', 'DJI', '262', "Djibouti"];
    push @data => [ 'DM', 'DMA', '212', "Dominica"];
    push @data => [ 'DO', 'DOM', '214', "Dominican Republic"];
    push @data => [ 'TP', 'TMP', '626', "East Timor"];
    push @data => [ 'EC', 'ECU', '218', "Ecuador"];
    push @data => [ 'EG', 'EGY', '818', "Egypt"];
    push @data => [ 'SV', 'SLV', '222', "El Salvador"];
    push @data => [ 'GQ', 'GNQ', '226', "Equatorial Guinea"];
    push @data => [ 'ER', 'ERI', '232', "Eritrea"];
    push @data => [ 'EE', 'EST', '233', "Estonia"];
    push @data => [ 'ET', 'ETH', '231', "Ethiopia"];
    push @data => [ 'FO', 'FRO', '234', "Faeroe Islands"];
    push @data => [ 'FK', 'FLK', '238', "Falkland Islands (Malvinas)"];
    push @data => [ 'FM', 'FSM', '583', "Micronesia, Federated States of"];
    push @data => [ 'FJ', 'FJI', '242', "Fiji"];
    push @data => [ 'FI', 'FIN', '246', "Finland"];
    push @data => [ 'MK', 'MKD', '807',
                                 "The former Yugoslav Republic of Macedonia"];
    push @data => [ 'FR', 'FRA', '250', "France"];
    push @data => [ 'GF', 'GUF', '254', "French Guiana"];
    push @data => [ 'PF', 'PYF', '258', "French Polynesia"];
    push @data => [ 'TF', undef, undef, "French Southern Territories"];
    push @data => [ 'GA', 'GAB', '266', "Gabon"];
    push @data => [ 'GM', 'GMB', '270', "Gambia"];
    push @data => [ 'GE', 'GEO', '268', "Georgia"];
    push @data => [ 'DE', 'DEU', '276', "Germany"];
    push @data => [ 'GH', 'GHA', '288', "Ghana"];
    push @data => [ 'GI', 'GIB', '292', "Gibraltar"];
    push @data => [ 'GR', 'GRC', '300', "Greece"];
    push @data => [ 'GL', 'GRL', '304', "Greenland"];
    push @data => [ 'GD', 'GRD', '308', "Grenada"];
    push @data => [ 'GP', 'GLP', '312', "Guadeloupe"];
    push @data => [ 'GU', 'GUM', '316', "Guam"];
    push @data => [ 'GT', 'GTM', '320', "Guatemala"];
    push @data => [ 'GN', 'GIN', '324', "Guinea"];
    push @data => [ 'GW', 'GNB', '624', "Guinea-Bissau"];
    push @data => [ 'GY', 'GUY', '328', "Guyana"];
    push @data => [ 'HT', 'HTI', '332', "Haiti"];
    push @data => [ 'HM', undef, undef, "Heard Island And Mcdonald Islands"];
    push @data => [ 'VA', 'VAT', '336', "Holy See"];
    push @data => [ 'HN', 'HND', '340', "Honduras"];
    push @data => [ 'HK', 'HKG', '344',
                          "Hong Kong Special Administrative Region of China"];
    push @data => [ 'HU', 'HUN', '348', "Hungary"];
    push @data => [ 'IS', 'ISL', '352', "Iceland"];
    push @data => [ 'IN', 'IND', '356', "India"];
    push @data => [ 'ID', 'IDN', '360', "Indonesia"];
    push @data => [ 'IR', 'IRN', '364', "Iran (Islamic Republic of)"];
    push @data => [ 'IQ', 'IRQ', '368', "Iraq"];
    push @data => [ 'IE', 'IRL', '372', "Ireland"];
    push @data => [undef, 'IMY', '833', "Isle of Man"];
    push @data => [ 'IL', 'ISR', '376', "Israel"];
    push @data => [ 'IT', 'ITA', '380', "Italy"];
    push @data => [ 'JM', 'JAM', '388', "Jamaica"];
    push @data => [ 'JP', 'JPN', '392', "Japan"];
    push @data => [ 'JO', 'JOR', '400', "Jordan"];
    push @data => [ 'KZ', 'KAZ', '398', "Kazakhstan"];
    push @data => [ 'KE', 'KEN', '404', "Kenya"];
    push @data => [ 'KI', 'KIR', '296', "Kiribati"];
    push @data => [ 'KW', 'KWT', '414', "Kuwait"];
    push @data => [ 'KG', 'KGZ', '417', "Kyrgyzstan"];
    push @data => [ 'LA', 'LAO', '418', "Lao People's Democratic Republic"];
    push @data => [ 'LV', 'LVA', '428', "Latvia"];
    push @data => [ 'LB', 'LBN', '422', "Lebanon"];
    push @data => [ 'LS', 'LSO', '426', "Lesotho"];
    push @data => [ 'LR', 'LBR', '430', "Liberia"];
    push @data => [ 'LY', 'LBY', '434', "Libyan Arab Jamahiriya"];
    push @data => [ 'LI', 'LIE', '438', "Liechtenstein"];
    push @data => [ 'LT', 'LTU', '440', "Lithuania"];
    push @data => [ 'LU', 'LUX', '442', "Luxembourg"];
    push @data => [ 'MO', 'MAC', '446', "Macau"];
    push @data => [ 'MG', 'MDG', '450', "Madagascar"];
    push @data => [ 'MW', 'MWI', '454', "Malawi"];
    push @data => [ 'MY', 'MYS', '458', "Malaysia"];
    push @data => [ 'MV', 'MDV', '462', "Maldives"];
    push @data => [ 'ML', 'MLI', '466', "Mali"];
    push @data => [ 'MT', 'MLT', '470', "Malta"];
    push @data => [ 'MH', 'MHL', '584', "Marshall Islands"];
    push @data => [ 'MQ', 'MTQ', '474', "Martinique"];
    push @data => [ 'MR', 'MRT', '478', "Mauritania"];
    push @data => [ 'MU', 'MUS', '480', "Mauritius"];
    push @data => [ 'YT', undef, undef, "Mayotte"];
    push @data => [ 'MX', 'MEX', '484', "Mexico"];
    push @data => [ 'MC', 'MCO', '492', "Monaco"];
    push @data => [ 'MN', 'MNG', '496', "Mongolia"];
    push @data => [ 'MS', 'MSR', '500', "Montserrat"];
    push @data => [ 'MA', 'MAR', '504', "Morocco"];
    push @data => [ 'MZ', 'MOZ', '508', "Mozambique"];
    push @data => [ 'MM', 'MMR', '104', "Myanmar"];
    push @data => [ 'NA', 'NAM', '516', "Namibia"];
    push @data => [ 'NR', 'NRU', '520', "Nauru"];
    push @data => [ 'NP', 'NPL', '524', "Nepal"];
    push @data => [ 'NL', 'NLD', '528', "Netherlands"];
    push @data => [ 'AN', 'ANT', '530', "Netherlands Antilles"];
    push @data => [ 'NC', 'NCL', '540', "New Caledonia"];
    push @data => [ 'NZ', 'NZL', '554', "New Zealand"];
    push @data => [ 'NI', 'NIC', '558', "Nicaragua"];
    push @data => [ 'NE', 'NER', '562', "Niger"];
    push @data => [ 'NG', 'NGA', '566', "Nigeria"];
    push @data => [ 'NU', 'NIU', '570', "Niue"];
    push @data => [ 'NF', 'NFK', '574', "Norfolk Island"];
    push @data => [ 'MP', 'MNP', '580', "Northern Mariana Islands"];
    push @data => [ 'NO', 'NOR', '578', "Norway"];
    push @data => [undef, 'PSE', '275', "Occupied Palestinian Territory"];
    push @data => [ 'OM', 'OMN', '512', "Oman"];
    push @data => [ 'PK', 'PAK', '586', "Pakistan"];
    push @data => [ 'PW', 'PLW', '585', "Palau"];
    push @data => [ 'PA', 'PAN', '591', "Panama"];
    push @data => [ 'PG', 'PNG', '598', "Papua New Guinea"];
    push @data => [ 'PY', 'PRY', '600', "Paraguay"];
    push @data => [ 'PE', 'PER', '604', "Peru"];
    push @data => [ 'PH', 'PHL', '608', "Philippines"];
    push @data => [ 'PN', 'PCN', '612', "Pitcairn"];
    push @data => [ 'PL', 'POL', '616', "Poland"];
    push @data => [ 'PT', 'PRT', '620', "Portugal"];
    push @data => [ 'PR', 'PRI', '630', "Puerto Rico"];
    push @data => [ 'QA', 'QAT', '634', "Qatar"];
    push @data => [ 'KR', 'KOR', '410', "Republic of Korea"];
    push @data => [ 'MD', 'MDA', '498', "Republic of Moldova"];
    push @data => [ 'RO', 'ROM', '642', "Romania"];
    push @data => [ 'RE', 'REU', '638', "R\x{e9}union"];
    push @data => [ 'RU', 'RUS', '643', "Russian Federation"];
    push @data => [ 'RW', 'RWA', '646', "Rwanda"];
    push @data => [ 'SH', 'SHN', '654', "Saint Helena"];
    push @data => [ 'KN', 'KNA', '659', "Saint Kitts and Nevis"];
    push @data => [ 'LC', 'LCA', '662', "Saint Lucia"];
    push @data => [ 'PM', 'SPM', '666', "Saint Pierre and Miquelon"];
    push @data => [ 'VC', 'VCT', '670', "Saint Vincent and the Grenadines"];
    push @data => [ 'WS', 'WSM', '882', "Samoa"];
    push @data => [ 'SM', 'SMR', '674', "San Marino"];
    push @data => [ 'ST', 'STP', '678', "Sao Tome and Principe"];
    push @data => [ 'SA', 'SAU', '682', "Saudi Arabia"];
    push @data => [ 'SN', 'SEN', '686', "Senegal"];
    push @data => [ 'SC', 'SYC', '690', "Seychelles"];
    push @data => [ 'SL', 'SLE', '694', "Sierra Leone"];
    push @data => [ 'SG', 'SGP', '702', "Singapore"];
    push @data => [ 'SK', 'SVK', '703', "Slovakia"];
    push @data => [ 'SI', 'SVN', '705', "Slovenia"];
    push @data => [ 'SB', 'SLB', '090', "Solomon Islands"];
    push @data => [ 'SO', 'SOM', '706', "Somalia"];
    push @data => [ 'ZA', 'ZAF', '710', "South Africa"];
    push @data => [ 'GS', undef, undef,
                          "South Georgia And The South Sandwich Islands"];
    push @data => [ 'ES', 'ESP', '724', "Spain"];
    push @data => [ 'LK', 'LKA', '144', "Sri Lanka"];
    push @data => [ 'SD', 'SDN', '736', "Sudan"];
    push @data => [ 'SR', 'SUR', '740', "Suriname"];
    push @data => [ 'SJ', 'SJM', '744', "Svalbard and Jan Mayen Islands"];
    push @data => [ 'SZ', 'SWZ', '748', "Swaziland"];
    push @data => [ 'SE', 'SWE', '752', "Sweden"];
    push @data => [ 'CH', 'CHE', '756', "Switzerland"];
    push @data => [ 'SY', 'SYR', '760', "Syrian Arab Republic"];
    push @data => [ 'TW', 'TWN', '158', "Taiwan Province of China"];
    push @data => [ 'TJ', 'TJK', '762', "Tajikistan"];
    push @data => [ 'TH', 'THA', '764', "Thailand"];
    push @data => [ 'TG', 'TGO', '768', "Togo"];
    push @data => [ 'TK', 'TKL', '772', "Tokelau"];
    push @data => [ 'TO', 'TON', '776', "Tonga"];
    push @data => [ 'TT', 'TTO', '780', "Trinidad and Tobago"];
    push @data => [ 'TN', 'TUN', '788', "Tunisia"];
    push @data => [ 'TR', 'TUR', '792', "Turkey"];
    push @data => [ 'TM', 'TKM', '795', "Turkmenistan"];
    push @data => [ 'TC', 'TCA', '796', "Turks and Caicos Islands"];
    push @data => [ 'TV', 'TUV', '798', "Tuvalu"];
    push @data => [ 'UG', 'UGA', '800', "Uganda"];
    push @data => [ 'UA', 'UKR', '804', "Ukraine"];
    push @data => [ 'AE', 'ARE', '784', "United Arab Emirates"];
    push @data => [ 'GB', 'GBR', '826', "United Kingdom"];
    push @data => [ 'TZ', 'TZA', '834', "United Republic of Tanzania"];
    push @data => [ 'US', 'USA', '840', "United States"];
    push @data => [ 'UM', undef, undef, "United States Minor Outlying Islands"];
    push @data => [ 'VI', 'VIR', '850', "United States Virgin Islands"];
    push @data => [ 'UY', 'URY', '858', "Uruguay"];
    push @data => [ 'UZ', 'UZB', '860', "Uzbekistan"];
    push @data => [ 'VU', 'VUT', '548', "Vanuatu"];
    push @data => [ 'VE', 'VEN', '862', "Venezuela"];
    push @data => [ 'VN', 'VNM', '704', "Viet Nam"];
    push @data => [ 'WF', 'WLF', '876', "Wallis and Futuna Islands"];
    push @data => [ 'EH', 'ESH', '732', "Western Sahara"];
    push @data => [ 'YE', 'YEM', '887', "Yemen"];
    push @data => [ 'YU', 'YUG', '891', "Yugoslavia"];
    push @data => [ 'ZM', 'ZMB', '894', "Zambia"];
    push @data => [ 'ZW', 'ZWE', '716', "Zimbabwe"];

    # "Old" Countries.
    push @data => [undef, undef, '104', "Burma",                 CNT_F_OLD];
    push @data => [undef, undef, '200', "Czechoslovakia",        CNT_F_OLD];
    push @data => [undef, undef, '116', "Democratic Kampuchea",  CNT_F_OLD];
    push @data => [undef, undef, '720', "Democratic Yemen",      CNT_F_OLD];
    push @data => [undef, undef, '230', "Ethiopia",              CNT_F_OLD];
    push @data => [undef, undef, '280', "Federal Republic of Germany",
                                                                 CNT_F_OLD];
    push @data => [undef, undef, '278', "German Democratic Republic",
                                                                 CNT_F_OLD];
    push @data => [undef, undef, '384', "Ivory Coast",           CNT_F_OLD];
    push @data => [undef, undef, '532', "Netherlands Antilles",  CNT_F_OLD];
    push @data => [undef, undef, '582', "Pacific Islands (Trust Territory)",
                                                                 CNT_F_OLD];
    push @data => [undef, undef, '890',
                   "Socialist Federal Republic of Yugoslavia",   CNT_F_OLD];
    push @data => [undef, undef, '810',
                          "Union of Soviet Socialist Republics", CNT_F_OLD];
    push @data => [undef, undef, '854', "Upper Volta",           CNT_F_OLD];
    push @data => [undef, undef, '886', "Yemen",                 CNT_F_OLD];
    push @data => [undef, undef, '180', "Zaire",                 CNT_F_OLD];

    # Regions
    push @data => [undef, undef, '002', "Africa",                CNT_F_REGION];
    push @data => [undef, undef, '019', "Americas",              CNT_F_REGION];
    push @data => [undef, undef, '142', "Asia",                  CNT_F_REGION];
    push @data => [undef, undef, '053', "Australia and New Zealand",
                                                                 CNT_F_REGION];
    push @data => [undef, undef, '029', "Caribbean",             CNT_F_REGION];
    push @data => [undef, undef, '013', "Central America",       CNT_F_REGION];
    push @data => [undef, undef, '014', "Eastern Africa",        CNT_F_REGION];
    push @data => [undef, undef, '030', "Eastern Asia",          CNT_F_REGION];
    push @data => [undef, undef, '151', "Eastern Europe",        CNT_F_REGION];
    push @data => [undef, undef, '150', "Europe",                CNT_F_REGION];
    push @data => [undef, undef, '419', "Latin America and the Caribbean",
                                                                 CNT_F_REGION];
    push @data => [undef, undef, '054', "Melanesia",             CNT_F_REGION];
    push @data => [undef, undef, '057', "Micronesia",            CNT_F_REGION];
    push @data => [undef, undef, '055', "Micronesia-Polynesia",  CNT_F_REGION];
    push @data => [undef, undef, '017', "Middle Africa",         CNT_F_REGION];
    push @data => [undef, undef, '015', "Northern Africa",       CNT_F_REGION];
    push @data => [undef, undef, '021', "Northern America",      CNT_F_REGION];
    push @data => [undef, undef, '154', "Northern Europe",       CNT_F_REGION];
    push @data => [undef, undef, '009', "Oceania",               CNT_F_REGION];
    push @data => [undef, undef, '061', "Polynesia",             CNT_F_REGION];
    push @data => [undef, undef, '005', "South America",         CNT_F_REGION];
    push @data => [undef, undef, '062', "South-central Asia",    CNT_F_REGION];
    push @data => [undef, undef, '035', "South-eastern Asia",    CNT_F_REGION];
    push @data => [undef, undef, '018', "Southern Africa",       CNT_F_REGION];
    push @data => [undef, undef, '039', "Southern Europe",       CNT_F_REGION];
    push @data => [undef, undef, '011', "Western Africa",        CNT_F_REGION];
    push @data => [undef, undef, '145', "Western Asia",          CNT_F_REGION];
    push @data => [undef, undef, '155', "Western Europe",        CNT_F_REGION];

    my %data;
    foreach my $item (@data) {
        foreach my $thingy (@$item [CNT_I_CODE2 .. CNT_I_COUNTRY]) {
            next unless defined $thingy;
            $data {norm $thingy} ||= [@$item [CNT_I_CODE2 .. CNT_I_COUNTRY],
                                      $$item [CNT_I_FLAG] || CNT_F_REGULAR];
        }
    }
    %data;
}

__END__
