# Google dorking is using specific operators to get exactly what you want

## Examples:
- `"Kai Tjader" filetype:pdf OR filetype:xlsx OR filetype:docx`
- https://www.exploit-db.com/google-hacking-database
- https://pentester.com/

## " ":
- The Search result MUST have the given string in it
- e.g.: `"Kai Tjader"`

## site:
- Only returns sites that match the proceeding string
- e.g.: `site:amazon.com`

## inurl:
- Returns only that urls that also have that key term
- e.g.: `inurl:admin`

## intext:
- Parses threw all the text from webpages to see if your term is in it
- e.g.: `intext:admin`

## intitle:
- Searches for the titles and only returns that titles that match your term
- e.g.: `intitle:secret`

## filetype:
- Returns only things in that file type
- Types: pdf, xlsx, docx
- e.g.: `filetype:PDF`

## OR
- Combines multiple queries
- `filetype:pdf OR filetype:xlsx`

## AND
- Restricts result to match both queries
- `filetype:pdf AND filetype:xlsx`
