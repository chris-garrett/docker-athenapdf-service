
## Versions

- athenapdf:latest

## Usage

Run the athena service

`docker run --rm -it -p 7080:8080 chrisgarrett/athenapdf-service`

Test pdf generation using curl:
```
curl \
  -X POST \
  --form "file=@test.html;filename=test.html" \
  --header "authorization:arachnys-weaver" \
  "http://localhost:7080/convert?auth=arachnys-weaver&ext=html" \
  > test.pdf
```

## Credits

athenapdf https://github.com/arachnys/athenapdf
