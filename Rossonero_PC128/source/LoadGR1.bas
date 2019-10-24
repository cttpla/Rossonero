
'read sprites dictionary
0100 BANK 5
0110 OPEN "O",#1,"GRPART1"
0260 FOR I=&H6000 TO &H6000 + (2001 * 5)  
0370 READ A$
0375 WRITE #1, A$
0380 'POKE I, VAL("&H"+A$)       
0390 NEXT I   
0400 CLOSE #1

'' navigli
2050 DATA 14, 64 
2051 DATA 08,1F,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FE,1F,F9,FF
2052 DATA 18,0F,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,3F,F9,FF
2053 DATA 8C,07,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF
2054 DATA 80,07,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FB,FF
2055 DATA 80,03,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,F9,FF
2056 DATA 80,01,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF
2057 DATA 94,01,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FD,FF
2058 DATA 9A,00,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,9F,FF,FF,FF,FD,FF
2059 DATA 9C,00,7F,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,9F,FF,7F,FF,FB,FF
2060 DATA 9C,00,7F,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,9F,FF,FF,FF,FF,FF
2061 DATA 88,00,3F,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,9F,FF,FF,FF,FF,FF
2062 DATA 18,00,1F,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,9F,FF,FF,FF,FF,FF
2063 DATA 10,00,1F,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,9F,FF,FF,FF,FF,FF
2064 DATA 08,00,0F,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,0F,FF,7F,FF,FF,FF
2065 DATA 8C,00,3F,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FE,01,FE,3F,FF,FF,FF
2066 DATA D4,00,3F,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,F8,00,FE,3F,FF,FF,FF
2067 DATA 3C,00,3F,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,F0,00,7C,3F,FF,FF,FF
2068 DATA 1C,00,3F,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,C0,00,00,3F,FF,FF,FF
2069 DATA 0C,00,3F,FF,FF,FF,FF,FF,FF,FF,FC,FF,FF,00,D4,00,3B,FF,FB,FF
2070 DATA 00,00,03,FF,FF,FF,FF,FF,FF,FF,F8,0F,FC,00,A1,00,01,FF,FB,FF
2071 DATA 00,00,21,FF,FF,FF,FF,FF,FF,FF,F8,00,E0,10,D0,90,01,FF,FF,FF
2072 DATA 90,00,31,FF,FF,FF,FF,FF,FF,FF,F8,00,00,00,E1,11,00,FF,FF,FF
2073 DATA 50,00,78,FF,FF,FF,FF,FF,FF,FF,FC,00,00,10,61,09,9A,3F,FF,FF
2074 DATA 94,00,3C,7F,FF,FF,FF,FF,FF,FF,F8,00,08,10,F1,01,89,7F,FF,FF
2075 DATA 98,00,3E,7F,FF,FF,FF,FF,FF,FF,F8,00,00,10,02,88,80,BF,FF,FF
2076 DATA 90,00,7F,3F,FF,FF,FF,FF,FF,FF,FA,00,00,12,A8,10,80,7F,FF,FF
2077 DATA 10,00,3F,1B,FF,FF,FF,FF,FF,FF,FF,00,00,9A,DA,81,80,3F,FF,FF
2078 DATA 00,00,7F,03,FF,FF,FF,FF,FF,FF,FC,00,00,29,E2,90,00,7F,FF,FF
2079 DATA 00,00,3F,01,FF,FF,FF,FF,FF,FF,F0,00,06,90,91,8D,00,3F,FF,FF
2080 DATA 00,00,3F,00,FF,FF,FF,FF,FF,FF,E0,00,28,08,E1,09,04,FF,FF,FF
2081 DATA 00,00,3F,01,FF,FF,FF,FF,FF,FF,F0,00,40,00,D0,88,81,7F,FF,FF
2082 DATA 00,00,3F,01,FF,FF,FF,FF,FF,FF,E0,03,00,18,E0,88,00,7F,FF,FF
2083 DATA 00,00,3F,01,BF,FF,FF,FF,FF,FF,E0,02,10,13,F4,00,00,3F,FF,FF
2084 DATA 00,00,3F,00,0F,FF,FF,FF,FF,FF,F0,00,00,18,C1,10,00,3F,FF,FF
2085 DATA 00,00,3F,00,83,FF,FF,FF,FF,FF,F8,80,07,0F,A9,08,00,3F,FF,FF
2086 DATA 00,00,3F,00,81,FF,FF,FF,EF,FE,20,00,70,F1,E0,A0,00,3F,FF,FF
2087 DATA 00,00,3F,00,01,FF,FF,E1,9F,9E,20,00,2F,11,71,00,00,3F,FE,FF
2088 DATA 00,00,2F,00,01,FF,FF,E1,1F,0C,20,00,18,10,D0,00,00,3F,F8,1F
2089 DATA 00,00,3F,00,07,FF,FF,E7,38,1C,20,00,48,90,A0,00,00,3E,80,3F
2090 DATA 00,00,1A,00,03,FF,FF,87,08,00,20,00,40,08,D0,00,00,3E,00,3F
2091 DATA 20,00,0B,00,00,FF,FF,80,54,61,00,00,41,08,C8,00,00,3F,8B,FF
2092 DATA 30,00,05,00,00,FF,FF,83,04,03,18,00,40,21,C8,00,00,3F,FF,FF
2093 DATA 00,10,0A,00,00,FF,FE,40,10,90,88,00,00,37,E8,00,00,3F,F1,BF
2094 DATA 00,00,07,00,00,3F,E0,00,22,84,20,08,32,2F,F0,00,00,3F,00,47
2095 DATA 00,00,03,80,00,7F,10,08,43,0C,60,03,E0,07,E0,00,00,3E,00,1F
2096 DATA 00,00,00,00,00,00,00,13,F7,FF,F1,04,F0,19,F0,00,00,3F,84,3F
2097 DATA 00,00,00,00,02,11,C0,0A,81,00,07,00,F9,00,E0,00,00,3F,94,3F
2098 DATA 00,00,00,87,C0,8B,00,80,05,E4,00,38,5F,11,F0,00,00,3F,FF,FF
2099 DATA 00,00,00,00,01,11,80,00,06,80,00,07,1F,13,F1,00,00,3F,FF,FF
2100 DATA 00,00,00,00,01,4A,20,04,07,80,00,00,FF,9F,FB,80,00,3F,FF,FF
2101 DATA 00,00,00,00,01,55,00,2C,07,80,00,00,3F,BF,F9,90,00,3F,FF,FF
2102 DATA 00,00,00,00,00,D1,00,00,02,D0,02,00,1F,F0,36,40,40,3F,FF,7F
2103 DATA 00,00,00,00,02,83,00,00,00,00,00,00,0F,F0,01,A0,80,3F,DF,FF
2104 DATA 00,00,00,00,30,83,C0,00,00,08,00,00,0B,70,00,00,00,7F,C0,3F
2105 DATA 00,00,00,00,F0,0F,C0,00,00,00,00,00,20,F8,1F,FC,5E,FF,F0,3F
2106 DATA 00,00,00,01,C5,07,F0,00,00,00,00,00,00,04,3F,FE,7F,FF,FF,FF
2107 DATA 00,00,00,04,00,03,F0,00,00,00,00,00,00,14,07,FC,7F,FF,FF,FF
2108 DATA 00,00,00,14,00,03,F0,00,02,00,00,00,00,04,00,01,FF,FF,FF,FF
2109 DATA 00,00,00,00,00,07,F0,00,00,00,00,00,00,00,00,00,1F,FF,FF,FF
2110 DATA 00,00,00,00,00,07,F8,00,00,00,00,00,00,00,00,D0,10,7F,FF,FF
2111 DATA 00,00,00,00,00,07,FC,00,00,1C,00,00,00,00,00,1F,89,00,3F,FF
2112 DATA 00,00,00,00,00,07,FF,00,00,0C,00,00,00,00,00,0C,FF,FF,40,00
2113 DATA 00,00,00,0C,40,07,FF,00,00,0C,00,00,00,00,00,28,10,15,FF,88
2114 DATA 00,00,01,13,00,07,FF,00,00,0C,10,00,00,00,00,00,EE,00,0B,FB
2115 DATA 00,00,00,02,00,07,FF,80,00,0C,21,90,00,00,00,00,06,0C,14,20
2116 DATA 00,00,01,10,00,07,FF,80,00,0C,00,00,00,00,00,00,00,09,6F,DB
2117 DATA 00,00,00,08,00,07,FF,C0,00,08,00,00,00,00,00,00,00,00,0F,DB
2118 DATA 00,00,00,40,00,03,FF,F0,00,08,00,00,02,00,00,00,00,00,07,ED
2119 DATA 00,00,00,00,00,03,FF,FF,80,14,00,00,09,00,00,00,00,00,00,02
2120 DATA 00,00,00,00,00,03,FF,FF,E4,04,00,00,12,00,00,00,00,00,00,00
2121 DATA 00,00,10,00,10,03,FF,FF,F4,08,00,00,10,00,00,00,00,00,03,00
2122 DATA 00,00,00,00,00,03,FF,FF,FE,90,00,00,0A,00,00,00,00,00,03,00
2123 DATA 00,00,00,00,00,03,C0,FF,FE,00,00,00,00,00,00,00,00,00,00,00
2124 DATA 00,00,00,00,00,01,C0,00,00,00,00,00,00,00,00,00,00,30,00,00
2125 DATA 00,00,00,00,00,01,E0,00,00,00,00,00,00,00,00,00,00,3F,00,00
2126 DATA 00,00,00,00,00,01,E0,00,00,00,00,00,00,00,00,00,00,3F,00,00
2127 DATA 00,00,00,00,00,01,E0,00,00,00,00,00,00,00,00,00,00,1C,00,00
2128 DATA 00,00,00,00,00,01,F0,00,00,00,00,00,00,00,40,00,00,3E,00,1E
2129 DATA 00,00,00,00,80,01,F8,00,00,00,00,00,00,00,00,00,00,3F,00,13
2130 DATA 00,00,00,00,00,01,FC,10,00,40,00,00,00,00,00,00,00,1E,C0,07
2131 DATA 00,00,00,00,00,00,F8,18,43,00,00,00,00,00,00,00,00,2A,10,07
2132 DATA 00,00,00,01,00,00,F8,00,00,00,00,00,00,00,00,00,00,3E,02,CF
2133 DATA 00,00,00,01,00,00,FE,00,00,00,08,00,10,00,00,00,00,3E,00,EF
2134 DATA 00,00,00,06,80,00,FF,FF,FF,FC,20,00,00,00,00,00,00,3E,00,0F
2135 DATA 20,00,20,24,AA,00,FF,FF,FF,FC,00,00,00,00,00,00,00,3F,00,1F
2136 DATA 00,02,24,28,20,00,FF,FF,FF,FC,00,00,00,00,00,00,00,3F,A0,0F
2137 DATA 00,00,04,00,00,00,7F,FF,FF,FC,00,00,00,00,00,00,00,3F,E0,1C
2138 DATA 00,81,0A,14,04,00,7F,FF,FF,FE,00,00,00,00,00,00,00,3F,E0,1F
2139 DATA 0A,C8,80,0C,05,00,7F,FF,FF,FC,00,06,00,00,00,00,00,3F,F1,BF
2140 DATA 20,00,02,10,09,80,7F,FF,FF,FE,00,7F,00,00,00,00,00,3F,F5,DF
2141 DATA 00,20,11,08,00,00,3F,FF,FF,FF,03,FF,00,00,00,00,00,3F,F5,FE
2142 DATA 00,00,00,38,00,00,3F,FF,FF,FF,8F,FF,C0,00,00,00,00,7F,F1,FF
2143 DATA 00,00,08,30,00,00,3F,FF,FF,FF,CF,FF,E0,00,00,00,01,FF,F1,FF
2144 DATA 42,40,24,20,01,E0,3F,FF,FF,FF,DF,FF,F8,00,00,00,0F,FF,F3,FF
2145 DATA 49,01,04,00,07,60,3F,FF,FF,FF,FF,FF,FC,00,00,00,3F,FF,F1,FF
2146 DATA 00,00,09,16,0E,80,1F,FF,FF,FF,FF,FF,FF,00,00,00,7F,FF,F5,FF
2147 DATA 00,00,14,75,4D,A0,9F,FF,FF,FF,FF,FF,FF,80,00,00,7F,FF,CB,FF
2148 DATA 20,00,21,79,CC,00,1F,FF,FF,FF,FF,FF,FF,C0,00,0C,7F,FF,F3,FF
2149 DATA 49,10,23,EB,C5,00,1F,FF,FF,FF,FF,FF,FF,F0,00,7C,7F,FF,FD,FF
2150 DATA 42,42,02,FE,D8,20,1F,FF,FF,FF,FF,FF,FF,F8,01,FE,7F,FF,FE,7F
''
''cadavere
2160 DATA 14,64
2161 DATA FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF
2162 DATA 5B,7F,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FE,DA
2163 DATA FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF
2164 DATA AA,EF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,F7,55
2165 DATA FF,FD,FF,FF,BF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FD,FF,FF,BF,FF
2166 DATA 45,57,55,AE,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,75,AA,EA,A2
2167 DATA FF,FD,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,BF,FF
2168 DATA 5F,F7,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,EF,FA
2169 DATA BA,BD,FF,FE,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,7F,FF,BD,5D
2170 DATA 77,D7,6D,BF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FD,B6,EB,EE
2171 DATA DD,FB,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,DF,BB
2172 DATA 6E,AD,57,FB,FD,FE,FF,FF,FF,FF,FF,FF,FF,DF,FF,7F,DF,EA,B5,76
2173 DATA FB,B7,FF,FF,F7,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,ED,DF
2174 DATA AA,DD,BE,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,F7,FF,FF,FF,7D,BB,55
2175 DATA AF,77,F7,F7,DE,FF,FF,FF,FF,FF,FF,FF,FF,FD,FF,FF,EF,EF,EE,F5
2176 DATA B5,FE,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,EF,FF,FF,FF,FF,7F,AD
2177 DATA EF,5F,FF,EF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,F7,FF,FA,F7
2178 DATA 14,D2,AA,BF,76,7A,DD,E3,75,EF,B4,EF,F6,B5,03,69,7D,55,4B,28
2179 DATA FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF
2180 DATA AA,AB,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,D5,55
2181 DATA 7F,FF,FF,FF,FF,FF,FF,FF,FF,FF,FF,DF,FF,FF,FF,FF,FF,FF,FF,FE
2182 DATA AA,EF,FF,FF,FF,FF,FF,FF,FF,FF,FA,01,FF,FF,FF,FF,FF,FF,F7,55
2183 DATA DF,BD,FF,FF,FF,FF,FF,FF,FF,FF,80,2E,7F,FF,FF,FF,FF,FF,BD,FB
2184 DATA B5,FF,FF,7F,FF,FF,FF,FF,FF,FA,00,59,9F,FF,FF,FF,FE,FF,FF,AD
2185 DATA BF,6F,FF,FF,FF,FF,FF,FF,FF,D0,01,3F,EF,FF,FF,FF,FF,FF,F6,FD
2186 DATA 6B,FF,FF,FF,FF,FF,FF,FF,FC,00,04,7F,FB,FF,FF,FF,FF,FF,FF,D6
2187 DATA DE,DF,FD,FF,FF,FF,FF,DD,50,00,08,F7,FD,FF,FF,FF,FF,BF,FB,7B
2188 DATA BB,FD,FF,BF,FF,FF,A0,00,00,00,10,FF,FF,FF,FF,FF,FD,FF,BF,DD
2189 DATA EF,7F,B7,FF,FF,FA,10,00,00,00,01,F7,FF,7F,FF,FF,FF,ED,FE,F7
2190 DATA BD,FF,FF,FF,FF,C0,03,00,00,00,01,FF,FF,FF,FF,FF,FF,FF,FF,BD
2191 DATA EF,FF,F7,EF,FF,20,00,00,00,00,03,DF,FF,DF,FF,FF,F7,EF,FF,F7
2192 DATA 5A,D6,DF,FF,FE,00,00,00,00,00,04,BF,FF,FF,FF,FF,FF,FB,6B,5A
2193 DATA 55,6B,B4,AB,F8,00,00,00,00,00,07,FF,FF,EF,FF,B3,D5,2D,D6,AA
2194 DATA AB,DD,7F,FF,EE,00,00,00,00,00,0F,FF,FF,EF,FF,FF,FF,FE,BB,D5
2195 DATA F6,B7,DF,FF,FE,00,00,00,00,00,1F,FF,FF,FF,FF,FF,FF,FB,ED,6F
2196 DATA 5B,FD,7B,7F,FE,C0,00,00,00,00,1F,FF,FF,EF,FF,FF,FE,DE,BF,DA
2197 DATA FD,5F,DF,FF,FE,C0,00,00,00,00,3F,FF,FF,DF,FF,FF,FF,FB,FA,BF
2198 DATA FF,FF,FF,FF,FC,80,00,00,00,00,3F,FF,FF,AF,FF,FF,FF,FE,B7,EB
2199 DATA 7F,FF,FF,FF,FE,80,00,00,00,02,7F,FF,FF,D7,FF,FF,FF,FD,DE,AD
2200 DATA E7,FF,FF,FF,7E,C0,00,00,02,00,7F,FF,FF,4F,FF,FF,FF,FF,7B,EB
2201 DATA FF,FF,FF,FF,7D,80,00,00,01,08,7F,FF,FF,A7,FF,FF,FF,FF,FF,B6
2202 DATA DF,FF,FF,FE,35,00,00,00,00,60,7F,FF,FE,87,FF,FF,FF,FE,BF,FD
2203 DATA FF,FF,FF,FE,3F,D0,00,00,00,00,FF,FF,FB,C7,FF,FF,FF,FF,EF,F7
2204 DATA FF,FF,FF,F0,1A,F0,00,00,00,00,FF,FF,FE,87,FF,FF,FF,FF,BB,FD
2205 DATA FF,FF,FF,A8,1F,F0,00,00,00,00,FF,FF,FA,8F,FF,FF,FF,FF,FF,DF
2206 DATA BF,FF,FC,40,0B,B8,00,00,00,00,FF,FF,FE,87,FF,FF,FF,FF,5F,FB
2207 DATA FF,FF,F1,00,05,F8,00,00,00,00,FF,FF,FA,0F,FF,FF,FF,FF,F7,FF
2208 DATA FF,FF,80,00,07,F8,00,00,00,00,FF,FF,FA,87,FF,FF,FF,FF,EF,FF
2209 DATA FF,FE,00,00,05,E0,00,00,00,00,FF,FF,EA,0F,FF,FF,FF,FF,FE,FF
2210 DATA FF,F8,00,00,01,C0,00,00,00,01,FF,FF,F2,07,FF,FF,FF,FF,EB,DB
2211 DATA FF,F0,00,00,00,80,00,00,00,00,FF,FF,F0,0F,FF,FF,FF,FF,BF,FF
2212 DATA FF,E0,00,00,00,00,00,00,00,00,FF,FF,C0,07,FF,EB,FF,FE,D5,55
2213 DATA FF,C0,00,00,00,00,00,00,00,01,FF,FF,E0,0F,FF,E9,7F,FB,DA,EA
2214 DATA FF,C0,00,00,00,00,00,00,00,03,7F,FF,C0,07,FF,55,57,FF,F7,BF
2215 DATA FF,80,00,00,00,00,00,00,00,07,FF,FF,00,3F,FD,22,85,7F,FE,ED
2216 DATA FF,80,00,00,00,00,00,00,00,0F,7F,FF,BF,FF,FC,84,7A,BF,FB,FF
2217 DATA FF,80,00,00,00,80,00,00,00,0F,FF,FF,7F,FF,F8,01,02,8F,FF,AB
2218 DATA FF,80,00,00,02,40,00,00,00,1F,FF,FF,FF,FF,EC,04,28,A7,FA,FF
2219 DATA FF,80,00,00,15,04,00,00,00,3F,7F,FF,FF,FF,EE,02,00,09,FF,AD
2220 DATA FF,C0,00,00,28,0E,00,00,00,3F,FF,FE,FF,FF,EC,14,04,24,FF,FF
2221 DATA FF,80,00,00,A4,1D,00,00,00,7F,7F,FF,FF,F7,E8,01,40,13,7E,AB
2222 DATA FF,C0,00,00,50,1B,40,00,00,FF,FF,FF,FF,DD,E0,00,10,00,BF,FE
2223 DATA FF,80,00,00,38,37,A0,00,01,FF,7F,FF,FF,FF,C0,00,00,05,3F,6B
2224 DATA FF,80,00,00,F0,4C,50,00,01,FF,7F,FF,DE,AD,00,00,00,00,5F,FF
2225 DATA FF,C0,00,00,00,19,C0,00,07,FF,FF,FE,FF,40,00,00,00,00,1F,B5
2226 DATA FF,C0,00,00,00,12,00,00,07,FF,FF,FE,BA,20,00,00,00,00,1F,FF
2227 DATA FF,C0,00,00,00,02,00,00,0F,FF,FF,FD,E8,85,54,05,E1,E0,0F,F5
2228 DATA FF,E0,00,00,01,68,B8,00,5F,FF,7F,FD,52,3F,FB,AA,41,40,0F,FE
2229 DATA FF,E0,00,00,0D,B7,00,0B,FF,FF,FF,F2,80,7F,ED,A4,A1,60,1F,FD
2230 DATA FF,F0,00,00,17,EC,00,1F,DF,FF,DF,F4,41,7F,DE,A9,41,A0,1F,F6
2231 DATA FF,F8,00,00,3F,A0,00,3F,FF,FF,EF,E9,03,FF,D4,12,01,60,1F,FD
2232 DATA FF,FC,00,00,EC,00,00,6F,FF,FF,F7,50,0F,FF,C0,2A,80,88,3F,FE
2233 DATA FF,FF,00,01,B0,00,00,7F,FF,FF,F8,48,2D,7F,D0,00,40,DE,5F,FF
2234 DATA FF,FF,C0,02,E0,00,00,7F,FF,FF,FE,01,5B,FF,C4,00,40,9F,DF,F6
2235 DATA FF,FF,E0,03,80,00,00,0F,FF,FF,FF,AA,77,FF,90,A0,20,7F,FF,FF
2236 DATA FF,FF,DD,5F,80,00,00,07,DF,FF,FD,EB,EF,EE,80,89,40,BF,EF,FB
2237 DATA FF,FF,EF,FF,00,00,00,07,FF,FF,FF,FE,DF,3D,40,00,20,5F,FF,EF
2238 DATA BE,D5,49,00,00,00,00,03,6F,FF,DF,AF,BA,98,00,00,40,5F,FF,7A
2239 DATA FF,FF,DF,F0,00,00,00,01,BF,FE,AA,FA,B5,08,00,00,10,40,94,82
2240 DATA FF,FF,BF,F0,00,00,00,01,EA,AB,5F,55,4A,03,00,00,04,27,FF,FD
2241 DATA FF,FF,BF,F0,00,00,00,01,BC,84,A0,40,02,80,00,00,00,26,FF,FF
2242 DATA FF,FF,BF,F8,00,00,00,07,FE,00,00,00,00,00,00,00,00,2B,FF,EF
2243 DATA FF,FF,7F,F8,00,00,00,07,DF,F4,08,00,55,6C,04,00,00,27,FF,FF
2244 DATA FF,FF,7F,F8,00,00,00,0F,BF,55,EB,FF,BF,DB,C0,00,00,45,FF,FD
2245 DATA EE,FF,FF,FF,00,00,00,0F,BF,FC,5D,52,D5,6D,50,40,00,53,FE,FF
2246 DATA FF,FE,FF,FF,00,00,00,01,FF,FF,6B,AD,7F,BF,C2,84,00,45,FF,FF
2247 DATA FB,BE,FF,FF,F0,00,00,01,DF,F7,BE,F6,EA,F6,C3,4C,00,43,7F,FD
2248 DATA FF,FE,FF,FF,F6,00,00,01,FF,FF,EF,BD,BF,BF,8B,CE,00,82,FF,DF
2249 DATA DF,FD,FF,FF,FF,80,00,03,DF,FF,FF,F7,6A,EB,1A,DD,00,01,FF,FD
2250 DATA FB,BD,FD,FF,FF,F0,00,BF,BF,FF,FF,FD,F8,1C,35,9F,40,82,AE,D7
2251 DATA FF,FD,FF,FF,EE,EE,00,FF,BF,FF,FF,F7,A2,00,B6,9B,C0,01,7F,FD
2252 DATA DD,EB,DF,FF,FF,FF,00,7F,DF,FF,FF,DD,E6,AB,F5,9F,40,00,DB,56
2253 DATA F7,7D,FB,FB,BF,FF,80,7F,BF,FF,FF,FF,55,FE,DB,0F,E0,01,3F,F5
2254 DATA BF,D7,FF,7F,FF,FD,C0,07,BF,FF,FF,FB,FE,AB,F4,3B,A0,00,D6,D6
2255 DATA FA,FB,B7,FF,FB,FF,F0,01,FF,FF,FF,FE,D5,FF,B0,3F,E0,01,2F,75
2256 DATA B7,B7,FF,DD,DF,DF,FE,00,5F,FF,FE,FF,FF,54,00,EE,E0,00,D5,AA
2257 DATA DE,F6,F6,FF,FF,FF,EF,80,3F,FF,FB,FB,AA,FF,BA,BF,B0,02,15,B5
2258 DATA F5,A7,BF,F7,7E,FF,7E,D0,05,DD,E3,FF,FF,AA,EA,EB,E8,00,AA,D5
2259 DATA AE,E6,FB,DF,FF,FB,FF,F8,00,FF,F7,FF,F6,FF,BD,3F,B8,00,2A,AA
2260 DATA FB,AD,AE,FB,F7,FF,FB,FC,00,00,FF,AE,FF,B5,EA,EA,E8,01,4A,B4
'
''imbarco:
''investiga per udire testimoni
''trova delle tracce di suola con la scientifica
''deduce la misura scarpe piccola, donna?
''no, enrichetto giovane militante msi
'
''circolo
''indizio sul fatto che avesse memoria corta e usava cose facili
''da ricordare (data presa cuba) da compagno
'
''quattromori
''
''int_ragazza
''int_esecutore
''int_mandante
'
2280 DATA 14,64
2300 DATA FF,FF,FF,6A,A7,40,1D,CF,FF,FF,FF,FF,FF,FF,FF,FD,7F,7F,FF,FF
2301 DATA FE,BF,FF,FF,DF,FF,FF,CF,FF,FF,FF,FF,FF,FF,FF,F0,00,1C,0F,F5
2302 DATA F9,4B,FF,D7,EF,FF,FF,9F,FF,FF,FF,FF,FF,FF,FF,B8,08,1A,00,00
2303 DATA FC,0F,FC,25,DF,A2,FF,9F,FF,FF,FF,FF,FF,FF,FF,E8,00,A0,14,25
2304 DATA F8,07,F8,00,1E,00,1F,BF,FF,FF,FF,FF,FF,FF,FC,00,15,40,25,94
2305 DATA F8,0F,F0,00,1D,40,3F,9F,FF,FF,FF,FF,FF,EA,00,01,4A,AE,90,02
2306 DATA F8,0F,F0,00,3C,00,9F,3F,FF,FF,FF,FF,F4,0A,D4,04,37,F4,00,10
2307 DATA F8,1F,F0,20,3C,40,3F,3F,FF,FF,FF,00,03,D4,00,20,F8,BC,00,0A
2308 DATA F0,0F,F0,00,3D,00,3F,7F,FF,FF,A0,A4,1C,B8,0A,01,D8,7F,00,20
2309 DATA F0,1F,E0,20,38,21,3F,7F,FF,44,80,00,69,7A,02,87,60,1F,80,41
2310 DATA F0,1F,E0,00,7C,00,7E,7F,E0,1A,80,00,B0,6A,03,AD,C0,1F,C0,00
2311 DATA F0,1F,E0,00,78,82,7E,24,11,EF,80,82,C0,7E,80,0E,80,0F,60,02
2312 DATA F0,3F,E0,40,78,01,01,A8,02,C5,40,B3,40,1B,20,3B,00,43,F8,01
2313 DATA E0,1F,F0,00,70,48,EC,80,2F,07,90,5E,80,7F,40,EC,00,13,F0,02
2314 DATA D2,5F,F0,0B,75,2B,13,81,FA,82,C0,6A,00,85,D0,B8,00,00,BE,03
2315 DATA FF,FF,F0,0A,52,80,31,80,DC,03,D0,58,03,1F,47,C2,04,01,F4,02
2316 DATA FD,4F,F0,09,54,00,A0,C1,68,00,E1,70,06,25,D5,A0,10,03,5F,07
2317 DATA 49,CF,FF,05,68,0F,01,80,E2,05,EA,C0,15,07,57,00,20,2D,56,BF
2318 DATA FF,7F,FC,A8,84,05,00,C1,40,07,B3,80,0A,4A,ED,10,00,05,1B,4A
2319 DATA FB,FF,42,01,08,08,01,CF,80,0D,6D,2A,ED,F7,5B,D7,BB,74,EA,BD
2320 DATA D7,7C,08,04,05,14,00,6A,00,2A,77,DB,B7,AD,BE,AD,4A,C5,55,6B
2321 DATA 0A,C1,40,10,08,60,01,BD,7A,B5,CE,AA,BD,FB,6B,DB,6D,7A,B6,DE
2322 DATA 00,00,28,10,09,40,16,EA,D6,AB,AD,25,00,00,00,00,00,00,0A,A9
2323 DATA 40,40,90,40,0A,BF,EB,BF,F9,00,00,00,00,00,00,00,02,05,40,0B
2324 DATA 40,01,01,00,0A,82,B7,40,00,00,00,00,00,00,04,02,FC,06,80,0F
2325 DATA A9,00,11,00,35,5A,00,00,00,00,00,00,00,01,5C,0B,50,0D,A5,7A
2326 DATA 01,02,02,04,DA,00,00,00,00,00,00,00,45,42,08,02,F0,05,00,16
2327 DATA 54,08,12,B5,00,00,00,00,00,00,00,04,A4,A0,00,0B,50,0D,00,14
2328 DATA 00,28,25,00,00,00,00,00,00,00,00,05,15,23,00,02,A0,0A,00,28
2329 DATA D4,42,C8,00,00,00,00,00,00,00,08,14,D0,04,30,02,A0,0A,00,10
2330 DATA 00,A8,00,00,00,00,00,00,00,00,3C,09,54,A2,00,05,40,05,80,40
2331 DATA 52,80,00,00,00,00,00,00,00,01,2C,0A,25,0A,50,02,80,01,00,00
2332 DATA A0,00,00,00,00,00,00,00,00,03,90,00,44,02,20,01,00,02,80,00
2333 DATA 02,00,00,00,00,00,00,00,00,00,00,01,40,00,90,00,00,00,00,E0
2334 DATA 08,20,00,00,00,00,00,00,00,02,00,04,00,04,40,01,00,00,00,50
2335 DATA 12,88,00,00,00,00,00,00,00,02,00,08,04,00,20,00,00,00,00,00
2336 DATA 02,01,40,00,00,00,00,00,00,08,00,00,80,01,C0,00,20,00,00,00
2337 DATA 12,A0,12,40,00,00,00,00,00,3F,BF,19,77,0A,20,07,80,03,80,00
2338 DATA 00,0A,80,04,00,00,00,00,00,03,BF,38,FF,9F,FE,8A,5A,02,28,03
2339 DATA 05,00,04,40,A0,00,00,00,00,00,02,00,FF,8F,FF,C7,EB,C5,D6,A1
2340 DATA 00,00,21,10,00,00,00,00,00,00,00,00,00,00,00,00,00,00,15,C0
2341 DATA 00,10,00,04,80,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
2342 DATA 00,85,08,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
2343 DATA 00,20,42,A2,00,00,00,02,00,00,01,00,00,00,00,00,00,00,00,08
2344 DATA 00,85,28,09,02,00,00,02,80,02,42,40,00,00,00,00,00,00,00,04
2345 DATA 00,20,01,40,82,80,00,00,00,04,21,30,00,00,00,00,00,04,04,40
2346 DATA 00,88,84,02,00,00,00,01,00,00,8A,00,00,00,00,00,00,50,00,00
2347 DATA 00,00,00,00,02,00,00,20,00,04,04,08,00,08,00,00,00,10,10,01
2348 DATA 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
2349 DATA 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
2350 DATA 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
2351 DATA 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
2352 DATA 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
2353 DATA 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
2354 DATA 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
2355 DATA 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
2356 DATA 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
2357 DATA 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,01
2358 DATA 00,00,00,00,00,00,00,00,00,00,00,00,00,00,11,15,52,48,24,0A
2359 DATA 00,00,00,00,00,00,00,70,00,AD,BF,6A,DA,AF,D4,C5,00,25,01,40
2360 DATA 00,00,AF,FF,FF,FF,FF,FD,37,72,E0,84,00,10,29,00,80,00,00,00
2361 DATA FF,FF,50,24,00,24,00,00,08,6A,00,00,00,00,00,03,C2,00,00,00
2362 DATA 80,00,00,00,00,00,00,00,40,00,00,00,00,00,00,1F,80,00,00,08
2363 DATA 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,3F,04,00,00,00
2364 DATA 00,00,00,04,00,00,00,00,00,00,00,00,00,00,01,FA,00,00,00,00
2365 DATA 00,00,00,00,00,00,00,00,00,00,00,00,00,00,03,F8,10,00,00,00
2366 DATA 00,00,00,00,00,00,00,00,80,00,00,00,00,00,1F,E0,00,10,00,00
2367 DATA 00,00,00,00,00,00,00,C0,00,40,00,00,00,00,3F,84,48,00,00,00
2368 DATA 00,00,03,00,00,00,03,80,00,00,00,00,00,01,FE,10,00,49,01,50
2369 DATA 00,00,06,00,00,00,03,00,00,00,00,00,00,07,F0,46,A4,00,54,00
2370 DATA 00,00,18,00,00,00,0C,00,80,00,00,00,00,3F,E9,10,11,25,00,82
2371 DATA 00,00,30,00,00,00,18,00,11,08,00,00,00,7F,02,0A,40,00,54,28
2372 DATA 00,00,60,00,00,00,78,00,00,42,40,00,03,3C,00,20,12,95,02,80
2373 DATA 00,03,98,00,00,00,C0,00,AA,10,80,00,0E,F0,00,0C,84,20,48,A5
2374 DATA 00,07,38,00,00,03,90,00,00,84,24,95,7F,C0,00,14,00,01,12,0B
2375 DATA 00,7E,00,00,00,0E,04,00,A9,21,08,00,F7,00,10,09,40,88,41,40
2376 DATA 00,18,14,00,00,1E,A0,01,64,94,61,6F,FE,55,02,0C,00,05,00,00
2377 DATA 02,B2,FE,00,00,78,10,00,49,22,94,81,F1,02,40,71,00,00,03,E0
2378 DATA 01,EA,40,04,80,74,40,01,50,94,42,07,C4,A1,0D,28,85,10,A7,C4
2379 DATA 00,D0,B0,04,30,05,10,00,46,02,BC,C3,90,14,52,B0,20,44,1F,C0
2380 DATA 40,01,00,0A,D0,00,40,02,A9,54,2B,E3,45,41,00,75,45,4A,FF,80
2381 DATA 20,10,E0,0A,E8,0D,10,00,92,92,97,E4,10,28,55,61,2A,A9,FF,68
2382 DATA A0,1A,A0,0C,BD,02,60,05,2A,24,7F,D2,A5,42,A1,79,51,0F,FC,02
2383 DATA F1,15,80,0A,F2,C2,90,01,49,52,E7,40,11,2A,5D,E2,AA,FF,FA,FD
2384 DATA 60,8F,C0,15,62,80,40,02,A4,87,E6,55,44,A4,A4,F2,12,FF,E5,53
2385 DATA D4,42,40,0F,94,81,50,05,15,3E,80,84,22,22,C9,E2,CB,FE,AA,AC
2386 DATA 02,C0,80,13,75,B0,40,03,68,F8,02,11,49,4A,95,C5,3F,FA,B5,5B
2387 DATA 14,51,E0,16,7B,40,40,05,97,F8,34,A4,10,56,4B,C4,BF,E5,4A,94
2388 DATA 11,00,C0,1D,14,DC,00,0A,77,FD,40,81,45,09,91,45,FF,D5,50,6B
2389 DATA 8A,DC,40,32,4D,7E,00,05,0F,F8,AD,34,10,84,4F,8B,FF,6A,A5,55
2390 DATA 6B,7C,00,25,FA,8B,80,0E,FF,E2,02,41,42,52,91,1F,FE,AA,BF,FF
2391 DATA FF,FF,00,1F,46,55,00,09,FF,94,B4,94,20,20,46,9F,FF,FF,FF,FF
2392 DATA FF,FF,80,7F,FF,FF,80,1F,FD,41,01,22,8A,AF,F9,3F,FF,FF,FF,FF
2393 DATA FF,FF,80,7F,FF,FF,C0,3F,FF,F7,E3,FF,FF,FF,F8,3F,FF,FF,FF,FF
2394 DATA FF,FF,80,7F,FF,FF,80,7F,FF,F0,03,FF,FF,FF,F8,7F,FF,FF,FF,FF
2395 DATA FF,FF,80,7F,FF,FF,C0,3F,FF,F8,0F,FF,FF,FF,F8,7F,FF,FF,FF,FF
2396 DATA FF,FF,80,FF,FF,FF,C0,7F,E0,00,03,FF,FF,FF,F0,FF,FF,FF,FF,FF
2397 DATA FF,FF,C0,7F,FF,FE,80,7F,80,00,01,FF,FF,FF,FC,FF,FF,FF,FF,FF
2398 DATA FF,FF,80,7F,FF,FF,F0,FF,FF,00,00,7F,C1,FF,FF,FF,FF,FF,FF,FF
2399 DATA 7F,FF,FF,FF,FF,FF,F0,FF,FC,00,00,00,1F,FF,FF,FF,FF,FF,FF,FF
'
''appartamento
''la combinazione della cassaforte è la data della presa di cuba
''questura
''foto ragazza, la fai rintracciare e puoi interrogarla dopo,
''se hai capello e foto in cassaforte ti da prove per incastrare enrichetto
''colla
''manifesti
''la guida telefonica aperta sul numero
'
2400 DATA 14,64
2401 DATA FF,FF,FF,FF,F9,7F,FF,50,80,B5,2A,54,00,7F,F8,00,01,40,00,00
2402 DATA FF,FF,FF,FF,FD,77,FF,69,62,AB,15,2A,40,7F,F1,00,00,00,00,00
2403 DATA FF,FF,FF,FF,FA,7B,FF,B1,C0,D5,2A,A8,00,BF,FA,00,00,00,00,00
2404 DATA FF,FF,FF,FF,FD,7F,FF,51,61,5A,AA,B5,44,7F,F4,00,00,00,00,00
2405 DATA FF,FF,FF,FF,FA,73,FF,F0,42,EE,AE,DA,4A,7F,F1,40,00,00,00,00
2406 DATA FF,FF,FF,FF,F9,7F,FF,50,01,5B,5A,AC,42,FF,F4,00,00,00,00,00
2407 DATA E4,59,BB,75,3A,F3,FF,70,01,C0,55,FE,84,7F,F1,00,00,00,00,00
2408 DATA FE,FF,FF,FF,B9,77,FF,28,03,40,00,55,48,FF,F4,14,02,40,00,00
2409 DATA EF,FF,FF,FF,FA,FB,FF,7C,04,C0,00,7A,42,7F,F5,00,01,08,00,00
2410 DATA FF,FF,FF,FF,B9,F7,FF,D4,1D,80,00,BC,4C,FF,F2,20,0C,80,00,00
2411 DATA EF,FF,FF,FF,3A,7B,FF,7C,37,C0,20,EB,2A,FF,F5,01,40,00,00,00
2412 DATA FF,FF,FF,FF,99,37,FF,DE,5E,C0,10,7C,4A,FF,F9,78,00,00,00,00
2413 DATA FF,FC,00,FF,BA,FB,FF,FF,B7,80,C8,5F,54,FF,F8,02,A4,00,00,00
2414 DATA EF,F0,00,1F,FD,77,FF,3B,FF,C1,88,F5,4A,FF,F8,1C,00,80,00,00
2415 DATA FF,E0,00,0F,FA,FB,FF,7F,DF,43,49,7C,34,FF,F0,40,00,00,00,00
2416 DATA FF,C0,00,07,B9,77,FF,3F,BF,C0,30,FD,5A,FF,F8,00,02,20,00,00
2417 DATA FF,C0,00,07,FE,D3,FF,77,FD,C3,30,B5,44,FF,F0,98,31,00,00,00
2418 DATA EF,C0,EA,03,F9,73,FF,5F,FF,44,C9,F8,55,FF,F0,93,91,C0,00,00
2419 DATA FF,87,FF,01,FE,F7,FF,7F,BF,C8,05,78,8A,FF,F0,84,41,00,00,00
2420 DATA FF,CF,FF,C1,9D,78,A1,7F,FF,80,00,F5,11,FF,F0,48,21,80,00,00
2421 DATA EF,C5,FD,41,FA,7F,FF,7B,BB,C0,01,FA,6E,FF,E0,88,21,00,00,00
2422 DATA FF,CA,30,01,F9,3F,FF,FE,7F,80,00,DB,49,FF,F0,84,40,80,00,00
2423 DATA FF,0C,B0,01,FA,FF,FF,5F,3F,E8,01,FF,2A,FF,E0,83,81,00,00,00
2424 DATA FF,0F,F7,01,F9,7D,FF,FF,9F,F3,06,B7,49,FF,F0,80,01,80,00,00
2425 DATA EF,0F,FF,81,FE,7D,FF,FF,CF,E6,8B,FB,E6,FF,E2,11,01,00,00,00
2426 DATA FF,0F,FF,C0,FD,DD,F9,77,A7,C9,36,F7,49,FF,EF,AF,A2,8B,D0,00
2427 DATA EE,0F,E3,80,FA,FF,F2,7F,F3,94,9B,5F,AA,FF,E0,00,00,00,00,00
2428 DATA FF,07,F7,00,FD,7F,F2,FF,F9,3B,7E,FF,E5,FF,E0,00,00,00,00,00
2429 DATA FF,07,F1,00,FE,FD,F2,6F,6C,75,DB,5F,E8,FF,C0,00,00,00,00,00
2430 DATA FF,07,40,00,79,7F,FA,7F,AA,16,FE,D7,CD,FF,C0,00,00,00,00,00
2431 DATA EF,82,F8,00,FF,7F,FA,7F,B8,00,01,2D,36,FF,C0,00,00,00,00,00
2432 DATA E7,C3,C0,01,FD,3D,F2,3B,40,00,00,00,07,7F,C0,00,00,00,00,00
2433 DATA EF,02,FC,03,FB,7F,EC,FF,E0,00,00,00,06,FF,C0,00,00,00,00,00
2434 DATA FF,00,78,03,D9,FD,14,EE,E0,FF,FA,80,07,FF,C0,00,00,00,00,00
2435 DATA EF,80,00,0F,DE,7B,FF,7F,E9,D1,DF,F0,06,FF,C0,00,00,00,00,00
2436 DATA EF,E0,00,1F,F9,F0,00,7D,61,FF,FF,F3,0E,FF,C2,02,A0,00,00,00
2437 DATA FB,F0,00,3F,FE,6F,FF,B7,E1,BF,FE,F0,0A,FF,84,50,FE,00,00,00
2438 DATA EB,F8,00,1F,F8,AF,FF,FE,E1,FF,F7,D0,0E,EB,82,70,FF,40,00,00
2439 DATA FF,F8,00,08,01,FF,FF,7F,61,FF,DE,E3,01,FF,84,75,FD,D0,00,00
2440 DATA EB,FC,00,09,F2,EF,FF,ED,E1,FE,FF,B0,00,BF,80,72,BE,FE,80,00
2441 DATA FF,FF,C0,39,F2,EF,FF,7F,61,7F,F7,C0,00,B6,84,71,AA,FF,FA,00
2442 DATA E7,FF,FD,F9,F3,6F,FF,BA,E0,BF,FF,A3,0C,2E,82,71,00,05,F4,00
2443 DATA FF,FF,FF,F0,02,DF,FF,FF,E0,ED,FF,A0,08,5A,84,71,C0,00,00,00
2444 DATA C0,5B,05,9D,A2,AF,FF,7D,C1,5E,FD,53,04,36,80,E5,A0,00,00,00
2445 DATA DB,BF,EF,FF,FF,4B,7F,6E,40,B2,AB,43,08,2E,04,71,B8,80,00,00
2446 DATA BF,FF,FF,FF,EA,EF,FF,3D,A0,FA,AA,A1,00,5A,84,F3,AA,00,00,00
2447 DATA CC,0A,C2,06,A2,CD,7F,77,60,01,2A,40,08,2E,04,71,D8,00,00,00
2448 DATA FF,FF,FF,FF,F9,6F,FF,FC,C1,00,90,08,00,59,00,E7,B0,00,00,00
2449 DATA BF,FF,F7,FF,FE,A7,FF,DB,C0,08,00,80,00,2C,04,71,D8,00,00,00
2450 DATA FF,FF,FF,FF,F9,6F,FF,7C,C9,18,91,88,00,5D,04,EB,B1,00,00,00
2451 DATA BF,FF,F7,FF,FA,57,FF,7A,40,00,00,00,00,15,01,F3,D0,00,00,00
2452 DATA FF,FB,FE,FF,FD,EA,FF,6C,C1,64,99,78,00,18,88,E3,B1,00,00,00
2453 DATA BF,F0,FF,FF,F2,30,00,FA,40,00,00,00,00,0C,3C,EB,F0,00,00,00
2454 DATA FF,F0,7D,FF,FD,40,00,34,00,00,00,00,00,11,43,D3,A1,00,00,00
2455 DATA AD,E0,B7,7F,FB,80,00,1C,00,00,00,00,15,15,40,6B,F0,00,00,00
2456 DATA FF,40,6A,FF,FB,80,00,14,03,CB,F9,E5,2A,EA,03,9D,04,00,00,00
2457 DATA AE,80,0F,FE,AA,01,5A,1A,08,00,04,00,2A,92,46,C2,E8,00,00,00
2458 DATA F9,22,5E,FF,FF,92,02,EA,00,00,04,00,2A,D0,44,41,22,20,00,00
2459 DATA 8A,09,FF,FF,80,14,FF,7C,08,00,04,00,56,AA,44,41,04,00,00,00
2460 DATA 00,3F,FF,85,FF,C8,53,D4,08,00,00,00,2A,A0,44,41,80,00,00,00
2461 DATA 00,FF,FE,FE,C1,60,89,7C,08,00,00,00,55,5A,46,C1,C0,00,00,00
2462 DATA 01,FF,FF,FF,00,20,F3,E8,08,00,04,00,2E,40,5F,C1,C0,00,00,00
2463 DATA 01,FF,FB,FB,DF,D0,29,BA,00,00,00,00,52,BA,7B,F1,E0,00,00,00
2464 DATA 03,FF,DB,FE,BF,E0,03,6C,08,00,00,00,2D,54,3F,F9,60,00,00,00
2465 DATA 06,AA,27,AB,FF,C0,06,F4,90,00,04,00,53,22,1F,F9,30,00,00,00
2466 DATA 08,00,10,06,DF,88,01,FA,00,00,C4,C0,2A,A3,03,F9,30,00,00,00
2467 DATA 04,85,00,03,7F,BF,FF,FC,08,00,C4,C0,55,20,40,FE,00,00,00,00
2468 DATA 00,00,40,0B,A4,00,00,00,00,00,00,00,2A,A2,B0,18,60,00,00,00
2469 DATA 00,00,08,00,FF,BF,F7,A4,08,00,00,00,2A,81,56,00,90,00,00,00
2470 DATA 00,00,C0,01,55,BF,FF,55,00,00,04,00,15,25,4B,40,90,00,00,00
2471 DATA 08,01,C2,00,7E,BF,F7,F8,20,00,04,00,54,42,A8,C0,60,00,00,00
2472 DATA 22,00,E2,00,B5,7F,FF,F5,00,00,00,00,15,81,55,34,00,00,00,00
2473 DATA 80,01,C3,00,1E,9F,FF,FD,9F,30,00,00,54,25,24,8A,00,00,00,00
2474 DATA 00,01,63,80,2D,3F,FF,FF,FF,FC,04,00,2A,80,A9,22,00,00,00,00
2475 DATA 00,03,C7,80,0B,9F,FF,FE,DF,FF,80,00,4A,44,24,08,C0,00,00,00
2476 DATA 00,01,C3,C0,0E,0F,FF,DB,FB,7F,F0,00,24,81,52,00,20,00,00,00
2477 DATA 00,03,C7,C0,03,8F,FF,7F,FF,FF,F8,00,02,44,04,05,0C,00,00,00
2478 DATA 00,06,C7,C0,05,0B,7B,FE,A0,7F,FC,00,01,41,2A,80,02,00,00,00
2479 DATA 00,03,C7,E0,01,8F,FF,E8,00,7F,FD,C4,00,04,01,00,00,80,00,00
2480 DATA 00,0D,47,F0,07,FF,FE,80,A7,FF,FF,50,00,02,80,40,00,00,00,00
2481 DATA 02,05,C3,F0,07,D0,00,BF,E7,DF,FF,FD,00,10,40,14,00,00,00,00
2482 DATA 00,05,C7,F0,00,05,BF,FF,A5,F7,FF,FE,40,05,50,80,00,00,00,00
2483 DATA 00,03,47,F8,00,2B,7F,F7,E7,6F,FF,FF,52,00,84,10,00,00,00,00
2484 DATA 00,0F,C7,FC,00,15,DF,FE,C1,2B,FF,FF,A0,02,28,00,00,00,00,00
2485 DATA 00,08,85,FC,00,2B,7D,DB,40,87,FF,FF,EA,10,82,00,00,00,00,00
2486 DATA 00,17,47,FE,00,1B,D7,68,00,0F,FF,FF,F5,44,24,00,00,00,00,00
2487 DATA 00,0D,4A,DA,00,15,34,00,00,03,FF,FF,FC,00,80,00,00,00,00,00
2488 DATA 00,55,83,B5,00,15,40,00,00,06,FF,FF,FD,12,01,00,00,00,00,00
2489 DATA 00,05,4A,DA,00,00,00,00,00,07,FF,FF,FA,80,48,00,00,00,00,00
2490 DATA 04,35,03,55,00,00,00,00,00,15,7F,FF,FD,48,00,00,00,00,00,00
2491 DATA 00,04,44,A1,00,00,00,00,04,FF,BF,FF,FE,A0,40,00,00,00,00,00
2492 DATA 00,11,01,14,88,00,00,00,41,55,7F,FF,FF,00,00,00,00,00,00,00
2493 DATA 00,40,84,6A,00,00,00,15,A0,AB,FF,FF,FE,E0,80,00,00,00,00,00
2494 DATA 00,11,00,50,00,40,01,AA,80,FC,97,FF,FD,00,00,00,00,00,00,00
2495 DATA 00,40,81,20,00,00,2F,5A,01,13,3B,FF,FB,50,00,00,00,00,00,00
2496 DATA 00,05,04,42,00,01,A8,80,00,54,D5,7F,D5,48,00,00,00,00,00,00
2497 DATA 00,28,40,50,00,02,00,00,00,13,2A,D2,A8,90,00,00,00,00,00,00
2498 DATA 00,02,14,80,00,00,00,00,00,48,AA,AA,AF,6A,00,00,00,00,00,00
2499 DATA 00,09,20,00,20,00,00,00,00,15,51,48,28,40,00,00,00,00,00,00
2500 DATA 00,20,0A,80,00,00,00,01,00,00,0A,A5,45,22,00,00,00,00,00,00

'Circolo Culturale Togliatti
2505 DATA 14,64
2510 DATA FF,FF,FF,9F,FF,FF,FF,FF,FF,FF,FD,53,FF,FF,FF,FF,9F,FE,D8,FF
2511 DATA FF,FF,FF,8F,FF,FF,FF,FF,FF,FF,E4,43,FF,FF,FF,FF,5F,FE,E0,BF
2512 DATA FF,FF,FF,8F,FF,FF,FF,FF,FF,FF,BD,13,FF,FF,FF,FF,FF,FD,58,BF
2513 DATA FF,FB,FF,81,7F,FF,FF,FF,FF,FF,B2,03,FF,FF,FF,FF,FF,FE,D0,5F
2514 DATA FF,7F,FF,80,00,00,04,2A,AF,FE,FD,D1,FF,FF,FF,FF,7F,FD,58,7F
2515 DATA FF,FF,FF,A0,00,00,00,00,00,05,17,47,FF,FF,FF,FF,7F,FD,D0,9F
2516 DATA FF,FF,FF,80,00,00,00,00,00,00,00,01,FF,FF,FF,FF,FF,FD,58,7F
2517 DATA FF,FF,FF,80,00,00,00,00,00,00,00,05,FF,FF,FE,FB,FF,F9,50,BD
2518 DATA FF,FD,DF,80,00,00,00,00,00,00,00,03,FF,FF,FD,FF,FF,F8,B1,7F
2519 DATA FF,F7,FF,80,00,00,00,00,00,00,00,05,FF,FF,F9,D7,FF,D1,A8,BF
2520 DATA FF,FF,FF,80,00,00,00,00,00,00,00,03,FF,FF,F9,B3,FF,B1,50,BF
2521 DATA FF,FF,FF,80,00,00,00,00,00,00,00,03,FF,FF,F8,77,FF,A9,51,7F
2522 DATA FF,FF,FF,C0,00,00,00,00,00,00,00,09,FF,FD,F8,1F,FF,51,B0,BF
2523 DATA FF,FF,FF,80,00,00,00,00,00,00,00,03,FC,78,BA,77,FF,D1,51,7F
2524 DATA FF,FF,FF,C0,00,1A,00,00,00,00,00,05,FB,F0,78,AF,FF,A0,B0,BF
2525 DATA FF,FF,FF,80,00,0B,00,00,00,00,10,03,FF,F0,30,0F,F7,51,D1,BF
2526 DATA FF,FF,FF,C0,00,0B,00,00,00,00,10,09,FF,F0,70,AF,DF,52,B1,7F
2527 DATA FF,FF,FF,90,00,0D,00,00,00,00,20,12,FF,F0,50,0F,FF,81,A8,BF
2528 DATA FF,FF,FE,C0,00,05,00,00,00,00,D2,E9,FF,F0,10,0F,FF,B0,B0,FF
2529 DATA FF,FF,FF,C0,00,05,00,00,00,00,89,B3,FF,F0,18,0F,FF,23,A1,7F
2530 DATA FF,FF,FF,40,00,00,00,00,00,01,12,D5,FF,E0,10,1F,FF,41,71,FF
2531 DATA FF,FF,FF,C0,00,00,00,00,00,00,1F,B3,FF,F8,18,7F,FF,A1,A9,7F
2532 DATA FF,FF,FE,C0,00,00,00,00,00,00,2A,F5,FF,E8,30,5F,1F,10,B0,FD
2533 DATA FF,FF,FF,C0,00,00,00,00,00,00,14,01,FF,FF,78,5F,5F,83,61,FE
2534 DATA FF,FF,FF,40,00,00,00,03,C0,00,00,05,FF,FF,7E,5F,7F,50,B1,7F
2535 DATA FF,FF,FE,D0,00,00,00,07,C0,00,04,02,FF,FF,FF,FF,BF,03,61,7F
2536 DATA FF,FF,FF,C0,00,00,00,0F,C0,00,38,05,FF,FF,7F,7F,FF,51,52,FF
2537 DATA FF,FF,FF,48,00,00,00,0C,00,00,08,05,FF,FF,7F,3F,DF,21,61,7F
2538 DATA FF,FF,FE,E0,00,00,00,0F,C4,00,35,02,FF,FF,7E,7F,FF,42,B2,FF
2539 DATA FF,FF,FF,40,00,00,01,4F,E0,00,10,05,FF,FD,FF,7F,FF,51,20,7F
2540 DATA FF,FF,FE,A8,00,00,00,CF,80,00,34,0A,FF,FF,FF,FF,FF,20,80,FF
2541 DATA FF,FF,FF,40,00,00,00,04,00,00,08,1C,9A,90,2A,AB,7F,41,25,7F
2542 DATA 57,FF,F4,00,00,00,00,05,00,00,00,1D,28,80,00,00,25,52,A4,3F
2543 DATA 01,FF,F0,00,00,00,00,25,80,00,01,18,A4,40,00,00,02,A0,01,1F
2544 DATA 07,FF,F0,00,00,00,01,50,00,00,01,59,2B,D9,54,00,05,52,00,1F
2545 DATA 5F,FF,C0,00,00,00,03,E0,00,00,01,DC,FF,FF,FE,00,02,E2,00,3F
2546 DATA 3F,FF,80,00,00,00,0F,D0,70,00,00,F5,7F,FF,FC,00,05,7E,00,3F
2547 DATA 7F,FF,90,00,00,00,3F,E0,3C,00,01,E0,FF,FF,FE,00,03,B3,C0,3F
2548 DATA FF,FF,80,00,00,00,FF,F0,3E,00,07,A6,7F,FF,FC,80,02,F3,C0,3F
2549 DATA FF,FF,00,40,00,03,FF,E0,3E,80,3F,81,7F,FF,DF,50,07,F3,F0,BF
2550 DATA FF,FF,82,54,00,07,FF,E0,3B,F9,FE,1A,7E,FF,3E,68,0A,F1,FF,FF
2551 DATA FF,FF,82,58,00,07,FF,C0,3D,BF,E8,78,FF,FF,EF,FF,87,F1,7F,1F
2552 DATA FF,FF,00,49,00,0F,FF,80,2D,AE,A1,4A,7D,65,FF,EF,8A,F1,7E,8F
2553 DATA FF,FF,82,10,00,1F,FF,D0,3D,11,81,BA,7F,FF,FF,7C,8B,F1,FC,2F
2554 DATA FF,FF,83,10,C0,1F,FF,C0,BD,00,00,F8,FF,FF,FD,85,46,F1,F9,03
2555 DATA FF,FF,83,FB,80,1F,FF,CF,1D,00,15,FA,7F,FF,7D,CE,8F,F1,E0,20
2556 DATA FF,FF,F3,FF,80,3F,FF,8F,1D,00,15,7A,7F,FF,DF,47,CB,F1,C0,02
2557 DATA FF,FF,F1,FF,00,3F,FF,8F,9D,00,00,FC,7F,FF,7D,FF,8F,F1,80,00
2558 DATA FF,FF,F1,E3,00,3F,7F,80,0D,00,14,FC,FF,FF,DE,8A,D7,FF,00,00
2559 DATA FF,FF,F0,C0,00,7F,FF,00,0E,80,14,E8,7F,FE,AA,FF,CF,FF,00,00
2560 DATA FF,FF,F2,80,00,7F,FF,00,0E,80,10,FA,7F,FB,FF,FF,EF,FE,80,00
2561 DATA FF,FF,F5,54,02,FE,7F,00,0D,80,00,BA,7F,FF,FF,FF,CF,FF,F0,00
2562 DATA FF,FF,F0,00,07,F6,FF,00,06,80,18,FC,7F,FF,FF,FF,EF,FF,FC,00
2563 DATA 7F,FF,FA,A0,03,F8,F6,00,05,80,1C,50,7F,FF,FD,FF,DF,FF,FF,00
2564 DATA FF,FF,F4,00,03,F8,7E,00,06,80,08,BD,3F,FE,82,FF,CF,FF,FF,00
2565 DATA 7F,FF,F8,00,03,F8,6E,00,06,C0,04,68,7F,FC,00,7F,D7,FF,FF,80
2566 DATA 7F,FF,F8,00,07,F8,6E,00,07,40,1C,5A,7F,FF,18,FF,EF,FF,FF,80
2567 DATA 7F,FF,FE,00,07,F8,6C,00,05,C0,10,F0,3F,FF,FF,FE,AF,FF,FF,C0
2568 DATA 7F,FF,FF,C0,07,FC,5C,00,07,40,11,6E,7F,FF,FE,AB,77,FF,FF,C0
2569 DATA 7F,FF,FF,C0,0B,FC,DC,00,02,C0,08,D8,BF,FE,95,94,07,FF,FF,C0
2570 DATA 7F,FF,FF,F5,2F,FE,78,00,07,40,1C,7A,7F,FF,FB,58,07,FF,BE,00
2571 DATA 7F,FF,FF,F9,DF,FF,B8,00,07,E0,0C,FC,7F,57,DF,88,87,EF,FF,00
2572 DATA 7F,FF,FF,FD,FF,FF,F0,00,03,A0,00,3C,7F,FF,FF,44,07,C7,E0,80
2573 DATA 3F,FF,FF,FF,FF,FF,90,00,03,60,08,7C,7F,FF,EF,9C,0B,C1,60,80
2574 DATA 7F,FF,FF,FF,FF,FF,E0,00,03,B0,08,BE,7F,FF,FF,CC,07,C0,00,00
2575 DATA 3F,FF,FF,FF,FF,F7,F0,00,1B,E0,08,BC,FF,FF,FF,DA,23,C0,00,00
2576 DATA 3F,FF,FF,FF,FF,F7,F8,00,53,70,0C,FC,7F,FF,EF,C8,07,80,00,00
2577 DATA 3F,FB,FF,FF,FF,F7,FF,EA,B2,C8,0C,BE,7F,FF,FF,C0,4B,80,00,00
2578 DATA 3F,FC,FF,FF,FF,A1,FF,F5,24,00,0C,BC,7F,FF,EB,4B,A9,80,00,00
2579 DATA 3F,FC,FB,F6,FF,BF,F7,D8,C8,00,08,3C,EF,FE,BA,FF,AD,80,00,00
2580 DATA BF,FE,07,D7,FF,FF,C2,EE,02,40,14,FA,7F,FB,4F,FF,FD,00,80,00
2581 DATA BF,FA,3F,BF,FF,FF,C1,54,B0,80,1C,BC,7F,D6,FF,FF,A1,01,70,60
2582 DATA FF,F6,7F,7F,FF,FF,C0,55,44,14,14,DE,7F,FC,7F,FF,89,01,80,D7
2583 DATA FF,FA,74,FF,FF,FF,80,24,10,22,AC,DC,7F,DA,2F,FF,03,00,58,9A
2584 DATA FF,FC,FF,FF,FF,FF,80,00,0C,2D,5E,BE,7F,8D,7F,FA,90,00,08,25
2585 DATA FF,F8,FF,FF,FF,FF,14,80,34,14,04,DC,FF,DE,F7,FD,10,20,10,07
2586 DATA FF,FE,FF,FF,FF,9C,02,00,AC,00,00,1E,7E,5C,0F,E9,19,E0,08,87
2587 DATA FF,F7,FF,7F,FF,C0,10,00,5A,00,00,08,3C,48,47,FC,41,E0,00,02
2588 DATA FF,FF,FE,FF,FF,80,04,A0,BC,00,00,1E,5C,10,27,F6,96,C0,00,02
2589 DATA FF,FF,FC,FF,EF,80,12,20,5C,00,00,09,3C,44,27,F0,56,80,00,02
2590 DATA FF,FF,FC,20,10,00,08,20,36,00,00,0E,7D,55,FF,DF,E8,00,00,01
2591 DATA FF,FF,FC,03,00,00,05,10,DC,00,00,08,FF,FF,5F,FF,16,00,00,01
2592 DATA FF,FF,FE,00,00,28,14,40,2E,00,00,4E,7F,FF,FF,F5,FF,00,00,01
2593 DATA FF,FF,FC,00,37,A8,02,90,7E,00,00,BC,7F,FF,FE,FF,FF,00,00,00
2594 DATA FF,7F,FE,04,AF,F8,14,40,96,00,00,4E,7F,FF,FF,FF,FD,80,00,00
2595 DATA FE,7F,EC,05,7F,7C,02,20,7F,00,00,AC,FF,FF,FF,FF,FF,00,00,00
2596 DATA FE,BF,58,01,5F,E8,04,50,AE,00,00,EC,7F,FF,FF,FF,FD,80,00,00
2597 DATA FB,EA,40,15,7F,F0,05,20,3F,00,00,54,FF,FF,FF,FF,FF,00,00,00
2598 DATA F2,BE,93,EF,FF,C0,08,50,5F,00,00,1D,7F,FF,FF,FF,FE,80,00,00
2599 DATA E5,DD,FF,FF,FE,00,05,10,5D,00,00,14,FF,FF,FF,FF,E8,00,00,00
2600 DATA 6A,BF,FF,FF,F8,10,08,A0,3F,80,00,16,7F,FF,FF,FF,11,00,00,00
2601 DATA F7,DF,FF,FF,40,04,02,68,2F,00,00,0C,FF,FF,FF,E8,AA,80,00,02
2602 DATA BF,6F,FF,F8,00,08,04,B8,17,80,00,06,7F,FF,FB,55,2A,00,00,08
2603 DATA FF,EF,AF,C0,00,24,05,38,2B,90,00,04,FF,FF,FB,6B,F5,00,00,00
2604 DATA 3F,C0,80,00,00,10,02,88,2B,42,90,04,7F,FF,AA,AE,28,A0,00,02
2605 DATA 41,13,50,00,00,44,06,48,15,90,24,02,BF,F5,75,50,A2,55,15,40
2606 DATA 2F,03,ED,B0,80,40,05,A4,55,26,D4,04,7E,DF,ED,00,00,00,00,12
2607 DATA 50,07,A6,8D,20,08,03,7C,2A,92,29,01,5B,F5,00,41,00,00,00,00
2608 DATA 01,FF,DA,00,00,00,07,FA,35,6D,AB,44,AF,42,92,84,10,00,00,02
2609 DATA 57,FB,E0,2B,48,04,05,F8,55,52,55,81,50,98,24,20,80,00,00,14                                     