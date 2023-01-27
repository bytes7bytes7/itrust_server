# API

- [API](#api)
    - [Auth](#auth)
        - [Register](#register)
            - [Register Request](#register-request)
            - [Register Response](#register-response)
        - [Login](#login)
            - [Login Request](#login-request)
            - [Login Response](#login-response)

## Auth

### Register

```
POST {{host}}/auth/register
```

#### Register Request

```json
{
  "firstName": "Anatoli",
  "lastName": "Gonchar",
  "email": "anatoli@gonchar.com",
  "password": "anatoli.gonchar"
}
```

#### Register Response

```
200 OK
```

```json
{
  "id": "110ec58a-a0f2-4ac4-8393-c866d813b8d1",
  "firstName": "Anatoli",
  "lastName": "Gonchar",
  "email": "anatoli@gonchar.com",
  "token": "SkRK1RJr4i...j2uy2"
}
```

### Login

```
POST {{host}}/auth/login
```

#### Login Request

```json
{
  "email": "anatoli@gonchar.com",
  "password": "anatoli.gonchar"
}
```

#### Login Response

```
200 OK
```

```json
{
  "id": "110ec58a-a0f2-4ac4-8393-c866d813b8d1",
  "firstName": "Anatoli",
  "lastName": "Gonchar",
  "email": "anatoli@gonchar.com",
  "token": "SkRK1RJr4i...j2uy2"
}
```
