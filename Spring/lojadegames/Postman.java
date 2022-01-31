{
	"info": {
		"_postman_id": "1411e569-6e44-491e-9856-26d81c24ec4f",
		"name": "LojaGames",
		"schema": "https://schema.getpostman.com/json/collection/v2.1.0/collection.json"
	},
	"item": [
		{
			"name": "Categoria",
			"item": [
				{
					"name": "Consultar Tipo",
					"request": {
						"method": "GET",
						"header": [],
						"url": {
							"raw": "http://localhost:8080/categoria",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "8080",
							"path": [
								"categoria"
							]
						}
					},
					"response": []
				},
				{
					"name": "Consultar Tipo por Id",
					"request": {
						"method": "GET",
						"header": [],
						"url": {
							"raw": "http://localhost:8080/categoria/7",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "8080",
							"path": [
								"categoria",
								"7"
							]
						}
					},
					"response": []
				},
				{
					"name": "Consultar Tipo por descricao",
					"request": {
						"method": "GET",
						"header": [],
						"url": {
							"raw": "http://localhost:8080/categoria/tipo/teste",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "8080",
							"path": [
								"categoria",
								"tipo",
								"teste"
							]
						}
					},
					"response": []
				},
				{
					"name": "Cadastrar tipo",
					"request": {
						"method": "POST",
						"header": [],
						"body": {
							"mode": "raw",
							"raw": "{\r\n    \"tipo\" : \"teste\"\r\n}",
							"options": {
								"raw": {
									"language": "json"
								}
							}
						},
						"url": {
							"raw": "http://localhost:8080/categoria/",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "8080",
							"path": [
								"categoria",
								""
							]
						}
					},
					"response": []
				},
				{
					"name": "Editar Tipo",
					"request": {
						"method": "PUT",
						"header": [],
						"body": {
							"mode": "raw",
							"raw": "{\r\n    \"id\" : 1,\r\n    \"tipo\" : \"Esportes\"\r\n}",
							"options": {
								"raw": {
									"language": "json"
								}
							}
						},
						"url": {
							"raw": "http://localhost:8080/categoria/",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "8080",
							"path": [
								"categoria",
								""
							]
						}
					},
					"response": []
				},
				{
					"name": "Deletar tipo",
					"request": {
						"method": "DELETE",
						"header": [],
						"body": {
							"mode": "raw",
							"raw": "",
							"options": {
								"raw": {
									"language": "json"
								}
							}
						},
						"url": {
							"raw": "http://localhost:8080/categoria/9",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "8080",
							"path": [
								"categoria",
								"9"
							]
						}
					},
					"response": []
				}
			]
		},
		{
			"name": "Produto",
			"item": [
				{
					"name": "Consultar produto",
					"request": {
						"method": "GET",
						"header": [],
						"url": {
							"raw": "http://localhost:8080/produto",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "8080",
							"path": [
								"produto"
							]
						}
					},
					"response": []
				},
				{
					"name": "Consultar Id Produto",
					"request": {
						"method": "GET",
						"header": [],
						"url": {
							"raw": "http://localhost:8080/produto/1",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "8080",
							"path": [
								"produto",
								"1"
							]
						}
					},
					"response": []
				},
				{
					"name": "Consultar por descrição",
					"request": {
						"method": "GET",
						"header": [],
						"url": {
							"raw": "http://localhost:8080/produto/nome/Kena",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "8080",
							"path": [
								"produto",
								"nome",
								"Kena"
							]
						}
					},
					"response": []
				},
				{
					"name": "Cadastrar produto",
					"request": {
						"method": "POST",
						"header": [],
						"body": {
							"mode": "raw",
							"raw": "{\r\n    \"nome\" : \"teste\"\r\n}",
							"options": {
								"raw": {
									"language": "json"
								}
							}
						},
						"url": {
							"raw": "http://localhost:8080/produto",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "8080",
							"path": [
								"produto"
							]
						}
					},
					"response": []
				},
				{
					"name": "Editar Produto",
					"request": {
						"method": "PUT",
						"header": [],
						"body": {
							"mode": "raw",
							"raw": "",
							"options": {
								"raw": {
									"language": "json"
								}
							}
						},
						"url": {
							"raw": "http://localhost:8080/produto/",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "8080",
							"path": [
								"produto",
								""
							]
						}
					},
					"response": []
				},
				{
					"name": "Deletar Produto",
					"request": {
						"method": "DELETE",
						"header": [],
						"url": {
							"raw": "http://localhost:8080/produto/",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "8080",
							"path": [
								"produto",
								""
							]
						}
					},
					"response": []
				}
			]
		},
		{
			"name": "Usuario",
			"item": [
				{
					"name": "Consultar todos usuarios",
					"request": {
						"method": "GET",
						"header": [
							{
								"key": "Authorization",
								"value": "Basic YWRtaW4yQGVtYWlsLmNvbToxMjM0NTY3OA==",
								"type": "text"
							}
						],
						"url": {
							"raw": "http://localhost:8080/usuarios/all",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "8080",
							"path": [
								"usuarios",
								"all"
							]
						}
					},
					"response": []
				},
				{
					"name": "By Id",
					"request": {
						"method": "GET",
						"header": [
							{
								"key": "Authorization",
								"value": "Basic YWRtaW4yQGVtYWlsLmNvbToxMjM0NTY3OA==",
								"type": "text"
							}
						],
						"url": {
							"raw": "http://localhost:8080/usuarios/1",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "8080",
							"path": [
								"usuarios",
								"1"
							]
						}
					},
					"response": []
				},
				{
					"name": "Cadastrar Usuario",
					"request": {
						"method": "POST",
						"header": [],
						"body": {
							"mode": "raw",
							"raw": "{\r\n    \"nome\" : \"Admin2\",\r\n    \"usuario\" : \"admin2@email.com\",\r\n    \"senha\" : \"12345678\",\r\n    \"foto\" : \"link\",\r\n    \"dataNascimento\" : \"2001-11-21\"\r\n}",
							"options": {
								"raw": {
									"language": "json"
								}
							}
						},
						"url": {
							"raw": "http://localhost:8080/usuarios/cadastrar",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "8080",
							"path": [
								"usuarios",
								"cadastrar"
							]
						}
					},
					"response": []
				},
				{
					"name": "Login",
					"request": {
						"method": "POST",
						"header": [],
						"body": {
							"mode": "raw",
							"raw": "{\r\n    \"usuario\" : \"admin2@email.com\",\r\n    \"senha\" : \"12345678\"\r\n}",
							"options": {
								"raw": {
									"language": "json"
								}
							}
						},
						"url": {
							"raw": "http://localhost:8080/usuarios/login",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "8080",
							"path": [
								"usuarios",
								"login"
							]
						}
					},
					"response": []
				},
				{
					"name": "Atualizar",
					"request": {
						"method": "PUT",
						"header": [
							{
								"key": "Authorization",
								"value": "Basic YWRtaW4yQGVtYWlsLmNvbToxMjM0NTY3OA==",
								"type": "text"
							}
						],
						"url": {
							"raw": "http://localhost:8080/usuarios",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "8080",
							"path": [
								"usuarios"
							]
						}
					},
					"response": []
				}
			]
		}
	]
}