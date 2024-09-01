<?php
/* include dirname(__DIR__) . '/utils/dbCon.php'; */

function prettyPrint($a)
{
    echo '<pre>';
    print_r($a);
    echo '</pre>';
}
include __DIR__ . '/classes/Contact.php';


$contactObject = [];


/* foreach ($contactData as $contacts) {
    $contact = new Contact(
        id: $contacts["id"],
        firstname: $contacts["firstname"],
        lastname: $contacts["lastname"],
        email: $contacts["email"],
        phone: $contacts["phone"],
        mobile: $contacts["mobile"],
        birthdate: $contacts["birthdate"],
        linkedin: $contacts["linkedin"],
        jobtitle: $contacts["jobtitle"],
        status: $contacts["status"],

    );
    $contactObject[] = $contact;
} */


$contactObject = new Contact();

$allContacts = $contactObject->getContacts();

prettyPrint($allContacts);
