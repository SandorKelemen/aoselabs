import csv
from random import randrange, choice

counties_source_file = './siruta-judete.csv'
counties_insertion_dest = './insert_judete.txt'
names_src_file = 'name_surname.csv'
names_insertion_dest = './insert_proprietar.txt'


def get_counties():
    with open(counties_source_file) as file:
        csv_reader = csv.reader(file, delimiter=';')
        counties = list()
        for row in csv_reader:
            counties.append(row[1].capitalize())
        # Deleting the header from the csv file
    return counties[1:]


def get_names():
    with open(names_src_file) as file:
        csv_reader = csv.reader(file, delimiter=',')
        names = list()
        for row in csv_reader:
            names.append(row[0] + ' ' + row[1])
        # Deleting the header from the csv file
    return names[1:]


def get_name():
    with open(names_src_file) as file:
        csv_reader = csv.reader(file, delimiter=',')
        names = list()
        for row in csv_reader:
            names.append(row[0])
        # Deleting the header from the csv file
    return names[1:]


def generate_counties_insertion():
    counties = get_counties()
    with open('counties_inseriton_dest', 'a+') as file:
        for county in counties:
            file.write('INSERT INTO judete VALUES(\'\', \'{}\');\n'.format(county))


def wrap_string(string: str):
    return '\'' + string + '\''


def generate_name_insertion():
    names = get_names()
    for name in names:
        if randrange(1, 10) < 8:
            address = 'Some valid address'
        else:
            address = ''
        if randrange(1, 10) <= 5:
            phone = '0770123123'
        else:
            phone = ''
        if randrange(1, 10) <9:
            email = name.replace(' ', '_').lower() + '@domain.com'
        else:
            email = ''
        with open('names_insertion', 'a+') as file:
            file.write('INSERT INTO `proprietari` VALUES(\'\', {}, {}, {}, {});\n'.format(
                wrap_string(name),
                wrap_string(address),
                wrap_string(phone),
                wrap_string(email)))


def generate_pension_names():
    names = get_name()
    nr_of_counties = 42
    prop_id = 1
    with open('pension_insertion.txt', 'a+') as file:
        for name in names:
            if randrange(1, 10) < 9:
                desc = 'This is a valid description'
            else:
                desc = ''
            county_id = randrange(1, nr_of_counties)
            nr_places = randrange(10, 100)
            file.write(
                'INSERT INTO `pensiuni` VALUES(\'\',{},{},{},{},{});\n'.format(
                    wrap_string('Pensiune ' + name),
                    wrap_string(desc),
                    county_id,
                    prop_id,
                    nr_places
                )
            )
            prop_id += 1


generate_pension_names()
