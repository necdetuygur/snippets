<?php
class Users {
    public $db;
    
    function Users($db){
        $this->db = $db;
    }
    
    function add($name, $surname){
        $this->db[] = array(
            "name" => $name,
            "surname" => $surname
        );
    }
    
    function delete($index) {
        unset($this->db[$index]);
    }
    
    function update($index, $name, $surname) {
        if(isset($this->db[$index]))
            $this->db[$index] = array(
                "name" => $name,
                "surname" => $surname
            );
    }
    
    function get(){
        return $this->db;
    }
    
    function getReadable() {
        $ret = "";
        foreach($this->get() as $index => $user)
            $ret .= "<div>$index - $user[name] $user[surname]</div>";
        return $ret;
    }
}

$db = array(array("name" => "Test", "surname" => "1"));
$users = new Users($db);

$users->add("Ali", "Demir");
$users->add("Mehmet", "Demir");
$users->add("Ahmet", "Demir");
echo $users->getReadable();
echo "<hr>";

$users->update(2, "Muhammed", "Demir");
echo $users->getReadable();
echo "<hr>";

$users->delete(3);
echo $users->getReadable();
?>