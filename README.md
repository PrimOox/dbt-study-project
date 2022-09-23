# Projeto de estudos sobre o DBT

Código baseado nos cursos oficiais: [https://courses.getdbt.com/collections](https://courses.getdbt.com/collections)  
Para rodar o projeto, configure uma base local Postgre, preferencialmente via docker, e rode os seguintes comandos:

``` bash
dbt deps
dbt seed
dbt test
dbt run
```

Para subir a documentação:
``` bash
dbt docs generate
dbt docs serve --port 8001
```
-------------------------------

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [dbt community](http://community.getbdt.com/) to learn from other analytics engineers
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
