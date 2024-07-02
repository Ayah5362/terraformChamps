# Create RDS Instance
resource "aws_db_instance" "rds_instance" {
  allocated_storage    = 20
  engine               = "postgres"
  engine_version       = 15.4
  instance_class       = "db.t3.micro"
  db_name              = "mydb"
  username             = "postgres"
  password             = "postgres"

  multi_az             = true
  publicly_accessible  = true
  storage_type         = "gp2"
  

  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  db_subnet_group_name   = aws_db_subnet_group.rds_subnet_group_01.name

  tags = {
    Name = "RDSInstance"
  }
}
