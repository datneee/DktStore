<?php
    class Database {
        private $hostname = "localhost";
        private $username = "user_dktStore";
        private $password = "Pvdat14092001a@";
        private $database = "dkt_Store";

        private $connection = NULL;
        private $result = NULL;

        public function  connect() {
            $this->connection = new mysqli($this->hostname, $this->username, $this->password, $this->database);
            if (!$this->connection) {
                print ("Kết nối thất bại");
                exit();
            } else {
                mysqli_set_charset($this->connection, 'utf8');
            }
            return $this->connection;
        }

        public function  execute($sql) {
            $this->result = $this->connection->quey($sql);
            return $this->result;
        }
        public function  getData() {
            if ($this->result) {
                $data = mysqli_fetch_array($this->result);
            } else {
                $data = 0;
            }
            return $data;
        }
        public function  getAllData() {
            if (!$this->result) {
                $data = 0;
            }else {
                while ($datas = $this->getData()) {
                    $data[] = $datas;
                };
            }
            return $data;
        }

    }
    ?>