# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"J141300","system":"readv2"},{"code":"J130200","system":"readv2"},{"code":"J121200","system":"readv2"},{"code":"J131300","system":"readv2"},{"code":"J140200","system":"readv2"},{"code":"J120300","system":"readv2"},{"code":"J120200","system":"readv2"},{"code":"J121300","system":"readv2"},{"code":"J111200","system":"readv2"},{"code":"J110300","system":"readv2"},{"code":"J110200","system":"readv2"},{"code":"J131200","system":"readv2"},{"code":"J141200","system":"readv2"},{"code":"J130300","system":"readv2"},{"code":"J140300","system":"readv2"},{"code":"J111300","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('peptic-ulcer-disease-charlson-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["peptic-ulcer-disease-charlson-primary-care-perforation---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["peptic-ulcer-disease-charlson-primary-care-perforation---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["peptic-ulcer-disease-charlson-primary-care-perforation---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
