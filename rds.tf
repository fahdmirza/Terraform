# Create the RDS instance


resource "aws_db_instance" "databaseterra" {


  allocated_storage    = "${var.database_size}"


  engine               = "${var.DbEngineType}"


  engine_version       = "${var.DbMajorEngineVersion}"


  instance_class       = "${var.DBInstanceClass}"


  identifier             = "testdbterra"


  username             = "${var.database_user}"


  password             = "${var.database_password}"


  db_subnet_group_name = "${aws_db_subnet_group.rdssubnetgroupterra.id}"


  parameter_group_name = "${aws_db_parameter_group.rdsparametergroupterra.id}"


  multi_az           = "${var.db_multiaz}"


  vpc_security_group_ids = ["${aws_security_group.RdsSecurityGroupterra.id}"]


  publicly_accessible    = "false"


  backup_retention_period = "2"


  license_model           = "license-included"


  apply_immediately = "true"


  tags = {


    Env = "Non-Prod"


  }
