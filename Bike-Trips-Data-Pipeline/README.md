# Bike-Trips-Data-Pipeline
This pipeline builds on top of [Jack Gisby's](https://github.com/jackgisby/tfl-bikes-data-pipeline) TfL data pipeline. The main drawable difference lies within the infrastructure used and the transformation layer. Unlike Jack's, this project uses AWS and instead of Spark, DBT was used to transform the data within amazon redshift data warehouse. 
