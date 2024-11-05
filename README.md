# Feature Store

A feature store is a central repository where commonly used features are stored and processed for reuse and sharing across ML models or teams.

## Related Projects

Below table contains a list of feature stores. The list is based on data from [featurestore.org](https://www.featurestore.org/) and amended with more information.

| Platform                   | Company          | Tags                       | Open-Source   | Offline                                                        | Online                              | Real-Time Ingestion       | Feature ingestion API         | Write Amplification   | Supported Platforms           | Training API  (PIT Join Engine)   | Training Data                                             | URL                                                                                                                      | Description
|----------------------------|------------------|----------------------------|---------------|----------------------------------------------------------------|-------------------------------------|---------------------------|-------------------------------|-----------------------|-------------------------------|-----------------------------------|-----------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| Hopsworks                  | Hopsworks        | Vendor,Open-source,On-prem | AGPL-V3       | Hudi/Hive and pluggable                                        | RonDB                               | Flink, Spark Streaming    | (Py)Spark, Python, SQL, Flink | No                    | AWS, GCP, On-Prem             | Spark                             | DataFrame (Spark or Pandas), files (.csv, .tfrecord, etc) | https://www.hopsworks.ai/the-python-centric-feature-store                                                                | The first open-source Feature Store and the first with a DataFrame API. Most data sources (batch/streaming) supported. Ingest features using SQL, Spark, Python, Flink. The only feature store supporting stream processing for writes. Available as managed platform and on-premises.
| Michelangelo Palette       | Uber             | In-house                   | No            | Hive                                                           | Cassandra                           | Flink, Spark Streaming    | Spark, DSL                    | nan                   | Proprietary                   | Spark                             | DataFrame (Pandas)                                        | https://www.uber.com/en-DK/blog/michelangelo-machine-learning-platform/                                                  | The mother of feature stores. Michelangelo is an end-to-end ML platfom and Palette is the features store. Features are defined in a DSL that translates into Spark and Flink jobs. Online FS is Redis/Cassandra. Offline is Hive.
| Chronon (ex-Zipline)       | AirBnB           | In-house                   | No            | Hive                                                           | Unknown KV Store                    | Flink                     | DSL                           | nan                   | Proprietary                   | Spark                             | Streamed to models?                                       |                                                                                                                          | One of the first feature stores from 2018, orginially called Zipline and part of the Bighead ML Platform. Feature engineering is using a DSL that includes point-in-time correct training set backfills, scheduled updates, feature visualizations and automatic data quality monitoring.
| Twitter                    | Twitter          | In-house                   | No            | GCS                                                            | Manhatten, Cockroach                | Unknown                   | Python, BigQuery              | Yes. Ingestion Jobs   | Proprietary                   | BigQuery                          | DataFrame (Pandas)                                        |                                                                                                                          | Twitter's first feature store was a set of shared feature libraries and metadata. Since then, they moved to building their own feature store, which they did by customizin feast for GCP.
| Iguazio Data Science       | Iguazio          | Vendor,Open-source,On-prem | No            | Parquet                                                        | V3IO, proprietary DB                | Nuclio                    | Spark, Python, Nuclio         | Unknown               | AWS, Azure, GCP, on-prem      | No details                        | DataFrame (Pandas)                                        |                                                                                                                          | A centralized and versioned feature storre built around their MLRun open-source MLOps orchestration framework for ML model management. Uses V3IO as it offline and online feature stores.
| Databricks                 | Databricks       | Vendor                     | No            | Delta Lake                                                     | Mysql or Aurora                     | nan                       | Spark, SparkSQL               | Unknown               | Unknown                       | Spark                             | Spark Dataframes                                          |                                                                                                                          | A Feature Store built around Spark Dataframes. Supports Spark/SQL for feature engineering with a UI in Databricks. Online FS is AWS RDS/MYSQL/Aurora. Offline is Delta Lake.
| Amazon SageMaker           | Amazon           | Vendor                     | No            | S3, Parquet                                                    | DynamoDB                            | nan                       | Python                        | Yes. Ingestion Jobs   | AWS                           | Aurora                            | DataFrame (Pandas)                                        |                                                                                                                          | Sagemaker Feature Store integrates with other AWS services like Redshift, S3 as data sources and Sagemaker serving. It has a feature registry UI in Sagemaker, and Python/SQL APIs. Online FS is Dynamo, offline parquet/S3.
| Featureform                | Featureform      | Vendor,Open-source,On-prem | Mozilla       | Pluggable                                                      | Pluggable                           | nan                       | Spark                         | No                    | AWS, Azure, GCP               | Spark                             | DataFrame (Spark, Pandas)                                 |                                                                                                                          | FeatureForm is a virtual feature store platfrom - you plug in your offline and online data stores. It supports Flink, Snowflake, Airflow Kafka, and other frameworks.
| Jukebox                    | Spotify          | In-house                   | No            | BigQuery                                                       | BigTable                            | Scio                      | Scio, BigQuery                | Yes. Ingestion Jobs   | Proprietary                   | BigQuery                          | DataFrame (Pandas)                                        |                                                                                                                          | Spotify built their own ML platform that leverages TensorFlow Extended (TFX) and Kubeflow. They focus on designing and analyzing their ML experiments instead of building and maintaining their own infrastructure, resulting in faster time from prototyping to production.
| Doordash                   | Doordash         | In-house                   | No            | Snowflake                                                      | Redis                               | Flink                     | Flink                         | Unknown               | Proprietary                   | Snowflake                         | DataFrame (Pandas)                                        |                                                                                                                          | A ML Platform with an effective online prediction ecosystem. It serves traffic on a large number of ML Models, including ensemble models, through their Sibyl Prediction Service.They extended Redis with sharding and compression to work as their online feature store.
| Salesforce                 | Salesforce       | In-house                   | No            | S3, Iceberg                                                    | DynamoDB                            | Unknown                   | Unknown                       | Yes. Ingestion Jobs   | Proprietary                   | Iceberg                           | DataFrame (Pandas)                                        |                                                                                                                          | ML Lake is a shared service that provides the right data, optimizes the right access patterns, and alleviates the machine learning application developer from having to manage data pipelines, storage, security and compliance. Built on an early version of Feast based around Spark.
| Intuit                     | Intuit           | In-house                   | No            | S3                                                             | GraphQL API, unknown backend        | Beam                      | Spark, Beam                   | Unknown               | Proprietary                   | Unknown                           | DataFrame (Pandas)                                        |                                                                                                                          | Intuit have built a feature store as part of their data science platform. It was developed for AWS and uses S3 and Dynamo as its offline/online feature serving layers.
| OLX                        |                  | In-house                   | No            | Kafka                                                          | Kafka                               | KSQLdb                    | KSQLdb                        | No                    | Proprietary                   | KSQLdb                            | From feature logging                                      |                                                                                                                          |
| Feathr                     | LinkedIn         | Open-source                | Yes           | Pluggable                                                      | Pluggable                           | nan                       | Spark                         | No                    | Azure, AWS                    | Spark                             | DataFrames, files (.csv, .parquet, etc)                   |                                                                                                                          | Feathr automatically computes your feature values and joins them to your training data, using point-in-time-correct semantics to avoid data leakage, and supports materializing and deploying your features for use online in production.
| Disney Nexus               | Disney Streaming | In-house                   | No            | Delta Lake                                                     | Redis                               | Spark Streaming           | Spark                         | Unknown               | Unknown                       | Spark                             | Proprietary                                               |                                                                                                                          | Nexus supports batch, near real-time, and real-time feature computation and has global scale for serving online and offline features from Redis and Delta Lake-s3, respectively.
| Feast                      | Linux Foundation | Open-source                | Yes           | Pluggable                                                      | Pluggable                           | Sync'd from Offline Store | Pluggable                     | Yes. Ingestion Jobs   | AWS, GCP, Azure, On-Prem      | Spark, Python                     | DataFrame (Pandas)                                        |                                                                                                                          | Originally developed as an open-source feature store by Go-JEK, Feast has been taken on by Tecton to be a minimal, configurable feature store. You can connect in different online/offline data stores and it can run on any platform. Feature engineering is done outside of Feast.
| Qwak                       | Qwak             | Vendor                     | No            | S3                                                             | Redis                               | Computed at Request time  | Spark                         | Unknown               | AWS, GCP                      | Spark                             | DataFrame (Pandas)                                        |                                                                                                                          | Qwak's feature store is a component of the Qwak ML platform, providing transformations, a feature registry and both an online and offline store.
| Azure                      | Microsoft        | Vendor                     | No            | Delta Lake?                                                    | CosmosDB?                           | ??                        | Python                        | Unknown               | Azure                         | ?                                 | DataFrame (Pandas)                                        |                                                                                                                          |
| Chalk                      | Chalk AI         | Vendor                     | No            | Snowflake, BigQuery, Redshift, Databricks, SQL, Raw Parquet/S3 | Redis, DynamoDB, Bigtable, Postgres | Strreaming, Batch         | Python, SQL                   | Unknown               | AWS, GCP, Aziure, On-prem K8S | Velox, via Python & SQL           | DataFrame (Pandas, Polars, DuckDB)                        |                                                                                                                          | Chalk is a platform for building real-time ML applications that includes a real-time feature store.
| Overton, Apple             | Apple            | In-house                   | No            |                                                                |                                     |                           |                               |                       |                               |                                   |                                                           | https://machinelearning.apple.com/research/overton                                                                       | Internal end-to-end ML platform at Apple. It automates the life cycle of model construction, deployment, and monitoring by providing a set of novel high-level, declarative abstractions. It has been used in production to support multiple applications in both near-real-time applications and back-of-house processing.
| Tecton                     | Tecton           | Vendor                     | No            |                                                                |                                     |                           |                               |                       |                               |                                   |                                                           | https://www.tecton.ai/feature-store/                                                                                     | Tecton.ai is a managed feature store that uses PySpark or SQL (Databricks or EMR) or Snowflake to compute features and DynamoDB to serve online features. It provides a Python-based DSL for orchestration and feature transformations that are computed as a PySpark job. Available on AWS.
| Vertex AI                  | Google Cloud     | Vendor                     | No            |                                                                |                                     |                           |                               |                       |                               |                                   |                                                           | https://cloud.google.com/vertex-ai/docs/featurestore                                                                     | A centralized repository for organizing, storing, and serving ML features on the GCP Vertex platform. Vertex AI Feature Store supports BigQuery, GCS as data sources. Separate ingestion jobs after feature engineering in BigQuery. Offline is BigQuery, Online BigTable.
| FBLearner                  | Facebook         | In-house                   | No            |                                                                |                                     |                           |                               |                       |                               |                                   |                                                           | https://engineering.fb.com/2016/05/09/core-infra/introducing-fblearner-flow-facebook-s-ai-backbone/                      | Internal end-to-end ML Facebook platform that includes a feature store. It provides innovative functionality, like automatic generation of UI experiences from pipeline definitions and automatic parallelization of Python code.
| Abacus.ai                  | Abacus.ai        | Vendor                     | No            |                                                                |                                     |                           |                               |                       |                               |                                   |                                                           |                                                                                                                          | The platform allows to build real-time machine and deep learning features, upload ipython notebooks, monitor model drift, and set up CI/CD for machine learning systems.
| H20 Feature Store          | H2O.ai and AT&T  | Vendor, On-prem            | No            |                                                                |                                     |                           |                               |                       |                               |                                   |                                                           |                                                                                                                          | H2O.ai and AT&T co-created the H2O AI Feature Store to store, update, and share the features data scientists, developers, and engineers need to build AI models.
| Beast                      | Robinhood        | In-house                   | No            |                                                                |                                     |                           |                               |                       |                               |                                   |                                                           |                                                                                                                          | Robinhood built their own event-based real-time feature store based on Kafka and Flink.
| Feature Byte               | Feature Byte     | Vendor                     | No            |                                                                |                                     |                           |                               |                       |                               |                                   |                                                           |                                                                                                                          | FeatureByte is a solution that aims to simplify the process of preparing and managing data for AI models, making it easier for organizations to scale their AI efforts.
| Fennel                     | Fennel           | Vendor                     | No            |                                                                |                                     |                           |                               |                       |                               |                                   |                                                           |                                                                                                                          | Fennel is a fully managed realtime feature platform from an-Facebook team. Powered by Rust, it is built ground up to be easy to use. It works natively with Python/Pandas, has beautiful APIs, installs in your cloud in minutes, and has best-in-class support for data/feature quality.
| OpenMLDB                   | 4Paradigm        | Open-source                | Yes           |                                                                |                                     |                           |                               |                       |                               |                                   |                                                           |                                                                                                                          | An open-source feature computing platform that offers unified SQL APIs and a shared execution plan generator for both offline and online engines, eliminating the need for cumbersome transformation and consistency verification.
