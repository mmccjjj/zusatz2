<?php

include __DIR__ . '/Model.php';

class Contact extends Model
{
    function getContacts(): array
    {
        return $this->all('contacts');
    }
}
